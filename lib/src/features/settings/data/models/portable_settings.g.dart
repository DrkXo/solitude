// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portable_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortableSettings _$PortableSettingsFromJson(Map<String, dynamic> json) =>
    _PortableSettings(
      version: (json['version'] as num).toInt(),
      appSettings: AppSettings.fromJson(
        json['appSettings'] as Map<String, dynamic>,
      ),
      exportDate: DateTime.parse(json['exportDate'] as String),
    );

Map<String, dynamic> _$PortableSettingsToJson(_PortableSettings instance) =>
    <String, dynamic>{
      'version': instance.version,
      'appSettings': instance.appSettings,
      'exportDate': instance.exportDate.toIso8601String(),
    };

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  fontSize: (json['fontSize'] as num).toDouble(),
  readingMode: json['readingMode'] as String,
  themeMode: json['themeMode'] as String,
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'fontSize': instance.fontSize,
      'readingMode': instance.readingMode,
      'themeMode': instance.themeMode,
    };
