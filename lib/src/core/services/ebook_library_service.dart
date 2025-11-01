import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:ebook_x/ebook_x.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

import '../../features/library/data/models/ebook_entry.dart';
import '../../features/library/data/models/library_stats.dart';
import '../abstracts/base_service.dart';
import '../error/error.dart';
import '../utils/utils.dart';
import 'db/local_db_service.dart';

class EbookLibraryService extends BaseService {
  final LocalDbService _localDbService;

  EbookLibraryService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  final EbookX _ebookReader = EbookX();
  final List<EbookEntry> _ebooks = [];
  final StreamController<List<EbookEntry>> _ebooksController =
      StreamController<List<EbookEntry>>.broadcast();

  Stream<List<EbookEntry>> get ebooksStream => _ebooksController.stream;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    // Load ebooks from database with pagination for memory optimization
    List<dynamic> dbEbooks = [];
    try {
      dbEbooks = await executeDBOperation(
        () => _localDbService.solitude.ebookDao.getAllEbooks(limit: 50),
      );
    } catch (e) {
      logger.error('Failed to load ebooks from database: $e');
      // Continue with empty list
    }
    for (final dbEbook in dbEbooks) {
      try {
        final ebook = await _ebookReader.read(dbEbook.filePath);
        final entry = EbookEntry(
          id: dbEbook.id,
          ebook: ebook,
          filePath: dbEbook.filePath,
          fileName: dbEbook.fileName,
          addedAt: dbEbook.addedAt,
          lastReadAt: dbEbook.lastReadAt,
          currentChapter: dbEbook.currentChapter,
          fileSize: dbEbook.fileSize,
          coverImagePath: dbEbook.coverImage,
        );
        _ebooks.add(entry);
      } catch (e) {
        // Skip ebooks that can't be parsed (file might be missing or corrupted)
        logger.error('Failed to load ebook ${dbEbook.filePath}: $e');
        continue;
      }
    }
    _ebooksController.add(List.from(_ebooks));
  }

  /// Parses and adds an ebook from the given file path
  /// Returns the added EbookEntry with metadata
  Future<EbookEntry> addEbook(String filePath) async {
    // Sanitize and validate file path
    final sanitizedPath = path.normalize(filePath);
    final file = File(sanitizedPath);

    // Validate file extension
    final extension = path.extension(sanitizedPath).toLowerCase();
    if (!['.epub', '.mobi', '.pdf'].contains(extension)) {
      throw EbookLibraryException(
        'Unsupported file type. Only EPUB, MOBI, and PDF are supported.',
      );
    }

    // Validate file exists and is readable
    if (!await file.exists()) {
      throw EbookLibraryException('File does not exist: $sanitizedPath');
    }

    // Check file size (optional, prevent very large files)
    final fileSize = await file.length();
    if (fileSize > 100 * 1024 * 1024) {
      // 100MB limit
      throw EbookLibraryException('File is too large. Maximum size is 100MB.');
    }

    // Check if already exists (by file path)
    if (_ebooks.any((entry) => entry.filePath == sanitizedPath)) {
      throw EbookLibraryException('Ebook already exists in library');
    }

    try {
      final Ebook ebook = await _ebookReader.read(sanitizedPath);
      final entry = EbookEntry(
        id: const Uuid().v4(), // UUID for unique ID
        ebook: ebook,
        filePath: sanitizedPath,
        fileName: path.basename(sanitizedPath),
        addedAt: DateTime.now(),
        fileSize: fileSize,
        coverImagePath: ebook.metadata.coverImagePath,
      );

      // Save to database
      await executeDBOperation(
        () => _localDbService.solitude.ebookDao.addEbook(
          DbEbooksCompanion(
            id: Value(entry.id),
            filePath: Value(entry.filePath),
            fileName: Value(entry.fileName),
            title: Value(entry.ebook.metadata.title),
            author: Value(entry.ebook.metadata.author),
            addedAt: Value(entry.addedAt),
            fileSize: Value(entry.fileSize),
            coverImage: Value(entry.coverImagePath),
          ),
        ),
        exceptionFactory: (msg) =>
            EbookLibraryException('Failed to save ebook to database: $msg'),
      );

      _ebooks.add(entry);
      _ebooksController.add(List.from(_ebooks));

      return entry;
    } catch (e) {
      logger.error('Failed to add ebook $sanitizedPath: $e');
      if (e.toString().contains('MOBI parsing not yet implemented')) {
        throw EbookLibraryException(
          'MOBI format detected. Full parsing support coming soon!',
        );
      }
      throw EbookLibraryException('Failed to parse ebook: $e');
    }
  }

  /// Removes an ebook by its ID
  Future<bool> removeEbook(String id) async {
    try {
      await executeDBOperation(
        () => _localDbService.solitude.ebookDao.removeEbook(id),
      );
      final index = _ebooks.indexWhere((entry) => entry.id == id);
      if (index != -1) {
        _ebooks.removeAt(index);
        _ebooksController.add(List.from(_ebooks));
        return true;
      }
      return false;
    } catch (e) {
      logger.error('Failed to remove ebook $id: $e');
      return false;
    }
  }

  /// Removes an ebook at the specified index (for backward compatibility)
  void removeEbookAt(int index) {
    if (index >= 0 && index < _ebooks.length) {
      _ebooks.removeAt(index);
    }
  }

  /// Returns a copy of the current ebooks list
  List<EbookEntry> getEbooks() {
    return List.from(_ebooks);
  }

  /// Gets an ebook entry by ID
  EbookEntry? getEbook(String id) {
    try {
      return _ebooks.firstWhere((entry) => entry.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Gets an ebook entry by index
  EbookEntry? getEbookAt(int index) {
    if (index >= 0 && index < _ebooks.length) {
      return _ebooks[index];
    }
    return null;
  }

  /// Searches ebooks by title or author
  List<EbookEntry> searchEbooks(String query) {
    final lowerQuery = query.toLowerCase();
    return _ebooks.where((entry) {
      final title = entry.ebook.metadata.title.toLowerCase();
      final author = entry.ebook.metadata.author.toLowerCase();
      return title.contains(lowerQuery) || author.contains(lowerQuery);
    }).toList();
  }

  /// Clears all ebooks
  Future<void> clearLibrary() async {
    try {
      await executeDBOperation(
        () => _localDbService.solitude.ebookDao.clearAllEbooks(),
      );
      _ebooks.clear();
    } catch (e) {
      logger.error('Failed to clear library: $e');
      throw EbookLibraryException('Failed to clear library: $e');
    }
  }

  /// Updates an existing ebook entry
  Future<bool> updateEbook(EbookEntry updatedEntry) async {
    try {
      await executeDBOperation(
        () => _localDbService.solitude.ebookDao.updateEbook(
          DbEbooksCompanion(
            id: Value(updatedEntry.id),
            filePath: Value(updatedEntry.filePath),
            fileName: Value(updatedEntry.fileName),
            title: Value(updatedEntry.ebook.metadata.title),
            author: Value(updatedEntry.ebook.metadata.author),
            addedAt: Value(updatedEntry.addedAt),
            lastReadAt: Value(updatedEntry.lastReadAt),
            currentChapter: Value(updatedEntry.currentChapter),
            fileSize: Value(updatedEntry.fileSize),
            coverImage: Value(updatedEntry.coverImagePath),
          ),
        ),
      );
      final index = _ebooks.indexWhere((entry) => entry.id == updatedEntry.id);
      if (index != -1) {
        _ebooks[index] = updatedEntry;
        _ebooksController.add(List.from(_ebooks));
        return true;
      }
      return false;
    } catch (e) {
      logger.error('Failed to update ebook ${updatedEntry.id}: $e');
      return false;
    }
  }

  /// Loads more ebooks for pagination (loads next 50)
  Future<void> loadMoreEbooks() async {
    final offset = _ebooks.length;
    List<dynamic> dbEbooks = [];
    try {
      dbEbooks = await executeDBOperation(
        () => _localDbService.solitude.ebookDao.getAllEbooks(
          limit: 50,
          offset: offset,
        ),
      );
    } catch (e) {
      logger.error('Failed to load more ebooks from database: $e');
      return;
    }
    for (final dbEbook in dbEbooks) {
      try {
        final ebook = await _ebookReader.read(dbEbook.filePath);
        final entry = EbookEntry(
          id: dbEbook.id,
          ebook: ebook,
          filePath: dbEbook.filePath,
          fileName: dbEbook.fileName,
          addedAt: dbEbook.addedAt,
          lastReadAt: dbEbook.lastReadAt,
          currentChapter: dbEbook.currentChapter,
          fileSize: dbEbook.fileSize,
          coverImagePath: dbEbook.coverImage,
        );
        _ebooks.add(entry);
      } catch (e) {
        // Skip
        continue;
      }
    }
    _ebooksController.add(List.from(_ebooks));
  }

  /// Gets library statistics
  Future<LibraryStats> getStats() async {
    try {
      final totalEbooks = await executeDBOperation(
        () => _localDbService.solitude.ebookDao.getTotalEbooks(),
      );
      final totalSize = await executeDBOperation(
        () => _localDbService.solitude.ebookDao.getTotalSize(),
      );
      return LibraryStats(
        totalEbooks: totalEbooks,
        totalSize: totalSize,
      );
    } catch (e) {
      logger.error('Failed to get library stats: $e');
      throw EbookLibraryException('Failed to get library stats: $e');
    }
  }
}
