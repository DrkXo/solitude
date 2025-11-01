import 'package:freezed_annotation/freezed_annotation.dart';

part 'portable_settings.freezed.dart';
part 'portable_settings.g.dart';

@freezed
abstract class PortableSettings with _$PortableSettings {
  const factory PortableSettings({
    required int version,
    required AppSettings appSettings,

    required DateTime exportDate,
  }) = _PortableSettings;

  factory PortableSettings.fromJson(Map<String, dynamic> json) =>
      _$PortableSettingsFromJson(json);
}

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    required double fontSize,
    required String readingMode,
    required String themeMode, // ThemeMode.name
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
