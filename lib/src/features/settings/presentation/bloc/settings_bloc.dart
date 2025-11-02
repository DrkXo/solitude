import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:solitude/src/features/settings/data/services/app_settings_service.dart';
import 'package:solitude/src/features/settings/data/models/portable_settings.dart';
import '../../../../core/services/backup_service.dart';
import '../../../../core/utils/utils.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final AppSettingsService _appSettingsService;
  final BackupService _backupService;

  SettingsBloc(
    this._appSettingsService,
    this._backupService,
  ) : super(
        SettingsState(
          appSettings: _appSettingsService.appSettings,
        ),
      ) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        fontSizeChanged: (e) => _onFontSizeChanged(e, emit),
        fontFamilyChanged: (e) => _onFontFamilyChanged(e, emit),
        themeChanged: (e) => _onThemeChanged(e, emit),
        pageLayoutChanged: (e) => _onPageLayoutChanged(e, emit),
        readingDirectionChanged: (e) => _onReadingDirectionChanged(e, emit),
        scrollModeChanged: (e) => _onScrollModeChanged(e, emit),
        rememberLastPositionChanged: (e) => _onRememberLastPositionChanged(e, emit),
        syncProgressChanged: (e) => _onSyncProgressChanged(e, emit),
        dyslexicFontChanged: (e) => _onDyslexicFontChanged(e, emit),
        highContrastChanged: (e) => _onHighContrastChanged(e, emit),
        immersiveModeChanged: (e) => _onImmersiveModeChanged(e, emit),
        textToSpeechChanged: (e) => _onTextToSpeechChanged(e, emit),
        sortByChanged: (e) => _onSortByChanged(e, emit),
        viewStyleChanged: (e) => _onViewStyleChanged(e, emit),
        showCoversChanged: (e) => _onShowCoversChanged(e, emit),
        metadataSourcesChanged: (e) => _onMetadataSourcesChanged(e, emit),
        scanPathsChanged: (e) => _onScanPathsChanged(e, emit),
        formatsChanged: (e) => _onFormatsChanged(e, emit),
        highlightColorsChanged: (e) => _onHighlightColorsChanged(e, emit),
        annotationsSyncChanged: (e) => _onAnnotationsSyncChanged(e, emit),
        autoSaveAnnotationsChanged: (e) => _onAutoSaveAnnotationsChanged(e, emit),
        exportFormatChanged: (e) => _onExportFormatChanged(e, emit),
        showSidebarChanged: (e) => _onShowSidebarChanged(e, emit),
        toolbarPositionChanged: (e) => _onToolbarPositionChanged(e, emit),
        enableAnimationsChanged: (e) => _onEnableAnimationsChanged(e, emit),
        soundFeedbackChanged: (e) => _onSoundFeedbackChanged(e, emit),
        languageChanged: (e) => _onLanguageChanged(e, emit),
        regionChanged: (e) => _onRegionChanged(e, emit),
        dateFormatChanged: (e) => _onDateFormatChanged(e, emit),
        debugLoggingChanged: (e) => _onDebugLoggingChanged(e, emit),
        enableDevToolsChanged: (e) => _onEnableDevToolsChanged(e, emit),
        customJSChanged: (e) => _onCustomJSChanged(e, emit),
        resetToDefaults: (e) => _onResetToDefaults(e, emit),
        exportSettings: (e) => _onExportSettings(e, emit),
        importSettings: (e) => _onImportSettings(e, emit),
      );
    });
  }

  Future<void> _onFontSizeChanged(
    _FontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setFontSize(event.fontSize);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onFontFamilyChanged(
    _FontFamilyChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setFontFamily(event.fontFamily);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onThemeChanged(
    _ThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setTheme(event.theme);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onPageLayoutChanged(
    _PageLayoutChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setPageLayout(event.pageLayout);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onReadingDirectionChanged(
    _ReadingDirectionChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setReadingDirection(event.readingDirection);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onScrollModeChanged(
    _ScrollModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setScrollMode(event.scrollMode);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onRememberLastPositionChanged(
    _RememberLastPositionChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setRememberLastPosition(event.remember);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onSyncProgressChanged(
    _SyncProgressChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setSyncProgress(event.sync);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onDyslexicFontChanged(
    _DyslexicFontChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setDyslexicFont(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onHighContrastChanged(
    _HighContrastChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setHighContrast(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onImmersiveModeChanged(
    _ImmersiveModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setImmersiveMode(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onTextToSpeechChanged(
    _TextToSpeechChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setTextToSpeech(event.tts);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onSortByChanged(
    _SortByChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setSortBy(event.sortBy);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onViewStyleChanged(
    _ViewStyleChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setViewStyle(event.viewStyle);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onShowCoversChanged(
    _ShowCoversChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setShowCovers(event.show);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onMetadataSourcesChanged(
    _MetadataSourcesChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setMetadataSources(event.sources);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onScanPathsChanged(
    _ScanPathsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setScanPaths(event.paths);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onFormatsChanged(
    _FormatsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setFormats(event.formats);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onHighlightColorsChanged(
    _HighlightColorsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setHighlightColors(event.colors);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onAnnotationsSyncChanged(
    _AnnotationsSyncChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setAnnotationsSync(event.sync);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onAutoSaveAnnotationsChanged(
    _AutoSaveAnnotationsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setAutoSaveAnnotations(event.autoSave);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onExportFormatChanged(
    _ExportFormatChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setExportFormat(event.format);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onShowSidebarChanged(
    _ShowSidebarChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setShowSidebar(event.show);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onToolbarPositionChanged(
    _ToolbarPositionChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setToolbarPosition(event.position);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onEnableAnimationsChanged(
    _EnableAnimationsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setEnableAnimations(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onSoundFeedbackChanged(
    _SoundFeedbackChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setSoundFeedback(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onLanguageChanged(
    _LanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setLanguage(event.language);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onRegionChanged(
    _RegionChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setRegion(event.region);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onDateFormatChanged(
    _DateFormatChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setDateFormat(event.format);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onDebugLoggingChanged(
    _DebugLoggingChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setDebugLogging(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onEnableDevToolsChanged(
    _EnableDevToolsChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setEnableDevTools(event.enabled);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onCustomJSChanged(
    _CustomJSChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.setCustomJS(event.js);
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onResetToDefaults(
    _ResetToDefaults event,
    Emitter<SettingsState> emit,
  ) async {
    await _appSettingsService.resetToDefaults();
    emit(state.copyWith(appSettings: _appSettingsService.appSettings));
  }

  Future<void> _onExportSettings(
    _ExportSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isBackupLoading: true, backupMessage: null));
    try {
      final filePath = await _backupService.exportSettings(
        format: event.format,
      );
      emit(
        state.copyWith(
          isBackupLoading: false,
          backupMessage: 'Settings exported to: ${filePath.split('/').last}',
        ),
      );
      logger.info('Settings exported to: $filePath');
    } catch (e) {
      emit(
        state.copyWith(
          isBackupLoading: false,
          backupMessage: 'Export failed: $e',
        ),
      );
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
      // Reload settings from service
      emit(
        SettingsState(
          appSettings: _appSettingsService.appSettings,
          isBackupLoading: false,
          backupMessage: 'Settings imported successfully',
        ),
      );
      logger.info('Settings imported successfully');
    } catch (e) {
      emit(
        state.copyWith(
          isBackupLoading: false,
          backupMessage: 'Import failed: $e',
        ),
      );
      logger.error('Failed to import settings: $e');
    }
  }
}
