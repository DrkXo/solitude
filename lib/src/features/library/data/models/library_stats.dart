import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_stats.freezed.dart';
part 'library_stats.g.dart';

@freezed
abstract class LibraryStats with _$LibraryStats {
  const factory LibraryStats({
    required int totalEbooks,
    required int totalSize,
  }) = _LibraryStats;

  factory LibraryStats.fromJson(Map<String, dynamic> json) =>
      _$LibraryStatsFromJson(json);
}
