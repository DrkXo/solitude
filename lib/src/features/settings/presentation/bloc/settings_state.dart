part of 'settings_bloc.dart';
@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppSettings appSettings,
    @Default(null) String? backupMessage,
    @Default(false) bool isBackupLoading,
  }) = _SettingsState;
}