import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:solitude/src/core/services/app_settings_service.dart';
import 'package:solitude/src/features/settings/data/models/portable_settings.dart';
import 'package:solitude/src/features/settings/data/models/settings_constants.dart';
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
        fontSizeChanged: (e) => _updateSetting(() => _appSettingsService.setFontSize(e.fontSize), emit),
        fontFamilyChanged: (e) => _updateSetting(() => _appSettingsService.setFontFamily(e.fontFamily), emit),
        fontWeightChanged: (e) => _updateSetting(() => _appSettingsService.setFontWeight(e.fontWeight), emit),
        lineHeightChanged: (e) => _updateSetting(() => _appSettingsService.setLineHeight(e.lineHeight), emit),
        letterSpacingChanged: (e) => _updateSetting(() => _appSettingsService.setLetterSpacing(e.letterSpacing), emit),
        paragraphSpacingChanged: (e) => _updateSetting(() => _appSettingsService.setParagraphSpacing(e.paragraphSpacing), emit),
        textAlignChanged: (e) => _updateSetting(() => _appSettingsService.setTextAlign(e.textAlign), emit),
        themeChanged: (e) => _updateSetting(() => _appSettingsService.setTheme(e.theme), emit),
        headerFontSizeMultiplierChanged: (e) => _updateSetting(() => _appSettingsService.setHeaderFontSizeMultiplier(e.multiplier), emit),
        headerMarginTopChanged: (e) => _updateSetting(() => _appSettingsService.setHeaderMarginTop(e.margin), emit),
        headerMarginBottomChanged: (e) => _updateSetting(() => _appSettingsService.setHeaderMarginBottom(e.margin), emit),
        footerMarginTopChanged: (e) => _updateSetting(() => _appSettingsService.setFooterMarginTop(e.margin), emit),
        footerMarginBottomChanged: (e) => _updateSetting(() => _appSettingsService.setFooterMarginBottom(e.margin), emit),
        htmlRenderingModeChanged: (e) => _updateSetting(() => _appSettingsService.setHtmlRenderingMode(e.mode), emit),
        readingDirectionChanged: (e) => _updateSetting(() => _appSettingsService.setReadingDirection(e.readingDirection), emit),
        rememberLastPositionChanged: (e) => _updateSetting(() => _appSettingsService.setRememberLastPosition(e.remember), emit),
        navigationMethodChanged: (e) => _updateSetting(() => _appSettingsService.setNavigationMethod(e.method), emit),
        dyslexicFontChanged: (e) => _updateSetting(() => _appSettingsService.setDyslexicFont(e.enabled), emit),
        highContrastChanged: (e) => _updateSetting(() => _appSettingsService.setHighContrast(e.enabled), emit),

        textToSpeechChanged: (e) => _updateSetting(() => _appSettingsService.setTextToSpeech(e.tts), emit),
        sortByChanged: (e) => _updateSetting(() => _appSettingsService.setSortBy(e.sortBy), emit),
        viewStyleChanged: (e) => _updateSetting(() => _appSettingsService.setViewStyle(e.viewStyle), emit),
        showCoversChanged: (e) => _updateSetting(() => _appSettingsService.setShowCovers(e.show), emit),
        metadataSourcesChanged: (e) => _updateSetting(() => _appSettingsService.setMetadataSources(e.sources), emit),
        scanPathsChanged: (e) => _updateSetting(() => _appSettingsService.setScanPaths(e.paths), emit),
        formatsChanged: (e) => _updateSetting(() => _appSettingsService.setFormats(e.formats), emit),
        highlightColorsChanged: (e) => _updateSetting(() => _appSettingsService.setHighlightColors(e.colors), emit),
        annotationsSyncChanged: (e) => _updateSetting(() => _appSettingsService.setAnnotationsSync(e.sync), emit),
        autoSaveAnnotationsChanged: (e) => _updateSetting(() => _appSettingsService.setAutoSaveAnnotations(e.autoSave), emit),
        exportFormatChanged: (e) => _updateSetting(() => _appSettingsService.setExportFormat(e.format), emit),
        showSidebarChanged: (e) => _updateSetting(() => _appSettingsService.setShowSidebar(e.show), emit),
        toolbarPositionChanged: (e) => _updateSetting(() => _appSettingsService.setToolbarPosition(e.position), emit),
        enableAnimationsChanged: (e) => _updateSetting(() => _appSettingsService.setEnableAnimations(e.enabled), emit),
        soundFeedbackChanged: (e) => _updateSetting(() => _appSettingsService.setSoundFeedback(e.enabled), emit),
        languageChanged: (e) => _updateSetting(() => _appSettingsService.setLanguage(e.language), emit),
        regionChanged: (e) => _updateSetting(() => _appSettingsService.setRegion(e.region), emit),
        dateFormatChanged: (e) => _updateSetting(() => _appSettingsService.setDateFormat(e.format), emit),

        resetToDefaults: (e) => _onResetToDefaults(e, emit),
        exportSettings: (e) => _onExportSettings(e, emit),
        importSettings: (e) => _onImportSettings(e, emit),
      );
    });
  }

  Future<void> _updateSetting(Future<void> Function() update, Emitter<SettingsState> emit) async {
    try {
      await update();
      emit(state.copyWith(appSettings: _appSettingsService.appSettings, errorMessage: null));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
      logger.error('Failed to update setting: $e');
    }
  }



  Future<void> _onResetToDefaults(
    _ResetToDefaults event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      await _appSettingsService.resetToDefaults();
      emit(SettingsState(appSettings: _appSettingsService.appSettings));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
      logger.error('Failed to reset settings: $e');
    }
  }

  Future<void> _onExportSettings(
    _ExportSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isBackupLoading: true, backupMessage: null, errorMessage: null));
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
          errorMessage: 'Export failed: $e',
        ),
      );
      logger.error('Failed to export settings: $e');
    }
  }

  Future<void> _onImportSettings(
    _ImportSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isBackupLoading: true, backupMessage: null, errorMessage: null));
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
          errorMessage: 'Import failed: $e',
        ),
      );
      logger.error('Failed to import settings: $e');
    }
  }
}
