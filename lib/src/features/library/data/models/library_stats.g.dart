// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryStats _$LibraryStatsFromJson(Map<String, dynamic> json) =>
    _LibraryStats(
      totalEbooks: (json['totalEbooks'] as num).toInt(),
      totalSize: (json['totalSize'] as num).toInt(),
    );

Map<String, dynamic> _$LibraryStatsToJson(_LibraryStats instance) =>
    <String, dynamic>{
      'totalEbooks': instance.totalEbooks,
      'totalSize': instance.totalSize,
    };
