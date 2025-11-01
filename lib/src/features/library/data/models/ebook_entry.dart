import 'package:ebook_x/ebook_x.dart';
import 'package:ebook_x/models/bookmark.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ebook_entry.freezed.dart';

@freezed
abstract class EbookEntry with _$EbookEntry {
  const factory EbookEntry({
    required String id,
    required Ebook ebook,
    required String filePath,
    required String fileName,
    required DateTime addedAt,
    DateTime? lastReadAt,
    @Default(0) int currentChapter,
    @Default(0) int currentPage,
    @Default(0.0) double pageOffset,
    @Default([]) List<Bookmark> bookmarks,
    int? fileSize,
    String? coverImagePath,
  }) = _EbookEntry;
}
