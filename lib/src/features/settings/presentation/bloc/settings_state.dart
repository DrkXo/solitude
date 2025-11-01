part of 'settings_bloc.dart';

@freezed
abstract class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @Default(16.0) double fontSize,
    @Default('page') String readingMode,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _SettingsModel;
}

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required SettingsModel settings,
  }) = _SettingsState;
}