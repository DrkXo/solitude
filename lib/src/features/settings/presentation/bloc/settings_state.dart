part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required double fontSize,
    required String readingMode,
  }) = _SettingsState;
}