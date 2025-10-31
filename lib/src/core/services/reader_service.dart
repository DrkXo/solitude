import '../../features/library/data/models/ebook_entry.dart';
import 'ebook_library_service.dart';

class ReaderService {
  final EbookLibraryService _ebookLibraryService;

  ReaderService({
    required EbookLibraryService ebookLibraryService,
  }) : _ebookLibraryService = ebookLibraryService;

  /// Updates the reading progress for an ebook
  /// Returns true if the update was successful
  Future<bool> updateReadingProgress(String ebookId, int currentChapter) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) return false;

    // Update the ebook entry with new reading progress
    final updatedEntry = ebookEntry.copyWith(
      currentChapter: currentChapter,
      lastReadAt: DateTime.now(),
    );

    return await _ebookLibraryService.updateEbook(updatedEntry);
  }

  /// Gets the current reading progress for an ebook
  ({int currentChapter, DateTime? lastReadAt})? getReadingProgress(
    String ebookId,
  ) {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) return null;

    return (
      currentChapter: ebookEntry.currentChapter,
      lastReadAt: ebookEntry.lastReadAt,
    );
  }

  /// Marks an ebook as read (updates lastReadAt to now)
  Future<bool> markAsRead(String ebookId) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) return false;

    final updatedEntry = ebookEntry.copyWith(
      lastReadAt: DateTime.now(),
    );

    return await _ebookLibraryService.updateEbook(updatedEntry);
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
  Future<bool> resetReadingProgress(String ebookId) async {
    final ebookEntry = _ebookLibraryService.getEbook(ebookId);
    if (ebookEntry == null) return false;

    final updatedEntry = ebookEntry.copyWith(
      currentChapter: 0,
      lastReadAt: null,
    );

    return await _ebookLibraryService.updateEbook(updatedEntry);
  }
}
