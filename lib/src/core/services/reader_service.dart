import 'package:ebook_x/models/bookmark.dart';

import '../../features/library/data/models/ebook_entry.dart';
import '../error/error.dart';
import 'ebook_library_service.dart';

class ReaderService {
  final EbookLibraryService _ebookLibraryService;

  ReaderService({
    required EbookLibraryService ebookLibraryService,
  }) : _ebookLibraryService = ebookLibraryService;

  /// Updates the reading progress for an ebook
  Future<void> updateReadingProgress(
    String ebookId,
    int currentChapter, {
    int currentPage = 0,
    double pageOffset = 0.0,
    List<Bookmark>? bookmarks,
  }) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) {
      throw ReaderException('Ebook with id $ebookId not found');
    }

    // Update the ebook entry with new reading progress
    final updatedEntry = ebookEntry.copyWith(
      currentChapter: currentChapter,
      currentPage: currentPage,
      pageOffset: pageOffset,
      bookmarks: bookmarks ?? ebookEntry.bookmarks,
      lastReadAt: DateTime.now(),
    );

    await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Gets the current reading progress for an ebook
  ({
    int currentChapter,
    int currentPage,
    double pageOffset,
    List<Bookmark> bookmarks,
    DateTime? lastReadAt,
  })?
  getReadingProgress(
    String ebookId,
  ) {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) return null;

    return (
      currentChapter: ebookEntry.currentChapter,
      currentPage: ebookEntry.currentPage,
      pageOffset: ebookEntry.pageOffset,
      bookmarks: ebookEntry.bookmarks,
      lastReadAt: ebookEntry.lastReadAt,
    );
  }

  /// Marks an ebook as read (updates lastReadAt to now)
  Future<void> markAsRead(String ebookId) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) {
      throw ReaderException('Ebook with id $ebookId not found');
    }

    final updatedEntry = ebookEntry.copyWith(
      lastReadAt: DateTime.now(),
    );

    await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Gets recently read ebooks (sorted by lastReadAt, most recent first)
  List<EbookEntry> getRecentlyReadEbooks({int limit = 10}) {
    final ebooks =
        _ebookLibraryService
            .getEbooks()
            .where((ebook) => ebook.lastReadAt != null)
            .toList()
          ..sort(
            (a, b) => (b.lastReadAt ?? DateTime.fromMillisecondsSinceEpoch(0))
                .compareTo(
                  a.lastReadAt ?? DateTime.fromMillisecondsSinceEpoch(0),
                ),
          );

    return ebooks.take(limit).toList();
  }

  /// Gets ebooks that are currently being read (have currentChapter > 0)
  List<EbookEntry> getCurrentlyReadingEbooks() {
    return _ebookLibraryService
        .getEbooks()
        .where((ebook) => ebook.currentChapter > 0)
        .toList();
  }

  /// Resets reading progress for an ebook
  Future<void> resetReadingProgress(String ebookId) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) {
      throw ReaderException('Ebook with id $ebookId not found');
    }

    final updatedEntry = ebookEntry.copyWith(
      currentChapter: 0,
      currentPage: 0,
      pageOffset: 0.0,
      bookmarks: [],
      lastReadAt: null,
    );

    await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Adds a bookmark to an ebook
  Future<void> addBookmark(String ebookId, Bookmark bookmark) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) {
      throw ReaderException('Ebook with id $ebookId not found');
    }

    final updatedBookmarks = [...ebookEntry.bookmarks, bookmark];
    final updatedEntry = ebookEntry.copyWith(
      bookmarks: updatedBookmarks,
    );

    await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Removes a bookmark from an ebook by index
  Future<void> removeBookmark(String ebookId, int index) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) {
      throw ReaderException('Ebook with id $ebookId not found');
    }
    if (index < 0 || index >= ebookEntry.bookmarks.length) {
      throw ReaderException('Invalid bookmark index $index');
    }

    final updatedBookmarks = List<Bookmark>.from(ebookEntry.bookmarks)
      ..removeAt(index);
    final updatedEntry = ebookEntry.copyWith(
      bookmarks: updatedBookmarks,
    );

    await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Gets all bookmarks for an ebook
  List<Bookmark> getBookmarks(String ebookId) {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    return ebookEntry?.bookmarks ?? [];
  }
}
