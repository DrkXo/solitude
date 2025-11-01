import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/backup_service.dart';
import '../../../../core/services/reader_settings_service.dart';
import '../../../../core/services/theme_service.dart';
import '../../../../core/utils/utils.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ReaderSettingsService _readerSettingsService;
  final ThemeService _themeService;
  final BackupService _backupService;

  SettingsBloc(
    this._readerSettingsService,
    this._themeService,
    this._backupService,
  ) : super(SettingsState(settings: SettingsModel(
        fontSize: _readerSettingsService.fontSize,
        readingMode: _readerSettingsService.readingMode,
        themeMode: _themeService.currentThemeMode,
      ))) {
    on<SettingsEvent>((event, emit) async {
      if (event is _FontSizeChanged) {
        await _onFontSizeChanged(event, emit);
      } else if (event is _ReadingModeChanged) {
        await _onReadingModeChanged(event, emit);
      } else if (event is _ThemeModeChanged) {
        await _onThemeModeChanged(event, emit);
      } else if (event is _ExportSettings) {
        await _onExportSettings(event, emit);
      } else if (event is _ImportSettings) {
        await _onImportSettings(event, emit);
      }
    });
  }

  Future<void> _onFontSizeChanged(
    _FontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setFontSize(event.fontSize);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(fontSize: event.fontSize),
      ),
    );
  }

  Future<void> _onReadingModeChanged(
    _ReadingModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setReadingMode(event.readingMode);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(readingMode: event.readingMode),
      ),
    );
  }

  Future<void> _onThemeModeChanged(
    _ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _themeService.setThemeMode(event.themeMode);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(themeMode: event.themeMode),
      ),
    );
  }

  Future<void> _onExportSettings(
    _ExportSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isBackupLoading: true, backupMessage: null));
    try {
      final filePath = await _backupService.exportSettings(format: event.format);
      emit(state.copyWith(
        isBackupLoading: false,
        backupMessage: 'Settings exported to: ${filePath.split('/').last}',
      ));
      logger.info('Settings exported to: $filePath');
    } catch (e) {
      emit(state.copyWith(
        isBackupLoading: false,
        backupMessage: 'Export failed: $e',
      ));
      logger.error('Failed to export settings: $e');
    }
  }

  Future<void> _onImportSettings(
    _ImportSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isBackupLoading: true, backupMessage: null));
    try {
      await _backupService.importSettings(event.filePath);
      // Reload settings
      emit(
        SettingsState(
          settings: SettingsModel(
            fontSize: _readerSettingsService.fontSize,
            readingMode: _readerSettingsService.readingMode,
            themeMode: _themeService.currentThemeMode,
          ),
          isBackupLoading: false,
          backupMessage: 'Settings imported successfully',
        ),
      );
      logger.info('Settings imported successfully');
    } catch (e) {
      emit(state.copyWith(
        isBackupLoading: false,
        backupMessage: 'Import failed: $e',
      ));
      logger.error('Failed to import settings: $e');
    }
  }
}
