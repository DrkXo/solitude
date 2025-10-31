import 'package:ebook_x/ebook_x.dart';
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
    int? fileSize,
    String? coverImagePath,
  }) = _EbookEntry;
}
