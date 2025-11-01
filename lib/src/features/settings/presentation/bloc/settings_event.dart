part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.fontSizeChanged(double fontSize) = _FontSizeChanged;
  const factory SettingsEvent.readingModeChanged(String readingMode) = _ReadingModeChanged;
}