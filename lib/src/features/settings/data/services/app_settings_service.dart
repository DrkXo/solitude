import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../core/abstracts/base_service.dart';
import '../../../../core/services/db/local_db_service.dart';
import '../../../../core/utils/utils.dart';
import '../models/portable_settings.dart';
import '../models/settings_constants.dart';

const double minFontSize = 8.0;
const double maxFontSize = 32.0;

@injectable
class AppSettingsService extends BaseService {
  final LocalDbService _localDbService;
  static const String _settingsKey = 'app_settings';

  AppSettings _appSettings = AppSettings();

  AppSettingsService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final settingsJson = await executeDBOperation(
        () => _localDbService.solitude.keyValueDao.getValue(_settingsKey),
      );

      if (settingsJson != null) {
        final settingsMap = jsonDecode(settingsJson) as Map<String, dynamic>;
        _appSettings = AppSettings.fromJson(settingsMap);
      } else {
        // Use default settings and save them
        await _saveSettings();
      }
    } catch (e) {
      logger.error('Failed to load app settings from database: $e');
      // Keep default settings
    }
  }

  AppSettings get appSettings => _appSettings;

  Future<void> updateSettings(AppSettings newSettings) async {
    _appSettings = newSettings;
    await _saveSettings();
  }

  Future<void> updateDisplaySettings(DisplaySettings displaySettings) async {
    _appSettings = _appSettings.copyWith(display: displaySettings);
    await _saveSettings();
  }

  Future<void> updateBehaviorSettings(BehaviorSettings behaviorSettings) async {
    _appSettings = _appSettings.copyWith(behavior: behaviorSettings);
    await _saveSettings();
  }

  Future<void> updateAccessibilitySettings(AccessibilitySettings accessibilitySettings) async {
    _appSettings = _appSettings.copyWith(accessibility: accessibilitySettings);
    await _saveSettings();
  }

  Future<void> updateLibrarySettings(LibrarySettings librarySettings) async {
    _appSettings = _appSettings.copyWith(library: librarySettings);
    await _saveSettings();
  }

  Future<void> updateAnnotationsSettings(AnnotationsSettings annotationsSettings) async {
    _appSettings = _appSettings.copyWith(annotations: annotationsSettings);
    await _saveSettings();
  }

  Future<void> updateUISettings(UISettings uiSettings) async {
    _appSettings = _appSettings.copyWith(ui: uiSettings);
    await _saveSettings();
  }

  Future<void> updateLocalizationSettings(LocalizationSettings localizationSettings) async {
    _appSettings = _appSettings.copyWith(localization: localizationSettings);
    await _saveSettings();
  }

  Future<void> updateDeveloperSettings(DeveloperSettings developerSettings) async {
    _appSettings = _appSettings.copyWith(developer: developerSettings);
    await _saveSettings();
  }

  // Convenience methods for common settings
  Future<void> setFontSize(double fontSize) async {
    if (fontSize < minFontSize || fontSize > maxFontSize) {
      throw ArgumentError('Font size must be between $minFontSize and $maxFontSize');
    }
    final displaySettings = _appSettings.display.copyWith(fontSize: fontSize);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setFontFamily(FontFamily fontFamily) async {
    final displaySettings = _appSettings.display.copyWith(fontFamily: fontFamily);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setFontWeight(String fontWeight) async {
    final displaySettings = _appSettings.display.copyWith(fontWeight: fontWeight);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setLineHeight(double lineHeight) async {
    final displaySettings = _appSettings.display.copyWith(lineHeight: lineHeight);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setLetterSpacing(double letterSpacing) async {
    final displaySettings = _appSettings.display.copyWith(letterSpacing: letterSpacing);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setParagraphSpacing(double paragraphSpacing) async {
    final displaySettings = _appSettings.display.copyWith(paragraphSpacing: paragraphSpacing);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setTextAlign(TextAlignOption textAlign) async {
    final displaySettings = _appSettings.display.copyWith(textAlign: textAlign);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setTheme(ThemeOption theme) async {
    final displaySettings = _appSettings.display.copyWith(theme: theme);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setHeaderFontSizeMultiplier(double multiplier) async {
    final displaySettings = _appSettings.display.copyWith(headerFontSizeMultiplier: multiplier);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setHeaderMarginTop(double margin) async {
    final displaySettings = _appSettings.display.copyWith(headerMarginTop: margin);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setHeaderMarginBottom(double margin) async {
    final displaySettings = _appSettings.display.copyWith(headerMarginBottom: margin);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setFooterMarginTop(double margin) async {
    final displaySettings = _appSettings.display.copyWith(footerMarginTop: margin);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setFooterMarginBottom(double margin) async {
    final displaySettings = _appSettings.display.copyWith(footerMarginBottom: margin);
    await updateDisplaySettings(displaySettings);
  }

  Future<void> setReadingDirection(ReadingDirection readingDirection) async {
    final behaviorSettings = _appSettings.behavior.copyWith(readingDirection: readingDirection);
    await updateBehaviorSettings(behaviorSettings);
  }

  Future<void> setRememberLastPosition(bool remember) async {
    final behaviorSettings = _appSettings.behavior.copyWith(rememberLastPosition: remember);
    await updateBehaviorSettings(behaviorSettings);
  }

  Future<void> setNavigationMethod(NavigationMethod method) async {
    final behaviorSettings = _appSettings.behavior.copyWith(navigationMethod: method);
    await updateBehaviorSettings(behaviorSettings);
  }

  Future<void> setDyslexicFont(bool enabled) async {
    final accessibilitySettings = _appSettings.accessibility.copyWith(dyslexicFont: enabled);
    await updateAccessibilitySettings(accessibilitySettings);
  }

  Future<void> setHighContrast(bool enabled) async {
    final accessibilitySettings = _appSettings.accessibility.copyWith(highContrast: enabled);
    await updateAccessibilitySettings(accessibilitySettings);
  }

  Future<void> setImmersiveMode(bool enabled) async {
    final accessibilitySettings = _appSettings.accessibility.copyWith(immersiveMode: enabled);
    await updateAccessibilitySettings(accessibilitySettings);
  }

  Future<void> setTextToSpeech(TextToSpeech tts) async {
    final accessibilitySettings = _appSettings.accessibility.copyWith(textToSpeech: tts);
    await updateAccessibilitySettings(accessibilitySettings);
  }

  Future<void> setSortBy(SortBy sortBy) async {
    final librarySettings = _appSettings.library.copyWith(sortBy: sortBy);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setViewStyle(ViewStyle viewStyle) async {
    final librarySettings = _appSettings.library.copyWith(viewStyle: viewStyle);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setShowCovers(bool show) async {
    final librarySettings = _appSettings.library.copyWith(showCovers: show);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setMetadataSources(List<String> sources) async {
    if (sources.isEmpty) {
      throw ArgumentError('Metadata sources cannot be empty');
    }
    final librarySettings = _appSettings.library.copyWith(metadataSources: sources);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setScanPaths(List<String> paths) async {
    if (paths.isEmpty) {
      throw ArgumentError('Scan paths cannot be empty');
    }
    final librarySettings = _appSettings.library.copyWith(scanPaths: paths);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setFormats(List<String> formats) async {
    if (formats.isEmpty) {
      throw ArgumentError('Formats cannot be empty');
    }
    final librarySettings = _appSettings.library.copyWith(formats: formats);
    await updateLibrarySettings(librarySettings);
  }

  Future<void> setHighlightColors(List<String> colors) async {
    if (colors.isEmpty) {
      throw ArgumentError('Highlight colors cannot be empty');
    }
    final annotationsSettings = _appSettings.annotations.copyWith(highlightColors: colors);
    await updateAnnotationsSettings(annotationsSettings);
  }

  Future<void> setAnnotationsSync(bool sync) async {
    final annotationsSettings = _appSettings.annotations.copyWith(sync: sync);
    await updateAnnotationsSettings(annotationsSettings);
  }

  Future<void> setAutoSaveAnnotations(bool autoSave) async {
    final annotationsSettings = _appSettings.annotations.copyWith(autoSave: autoSave);
    await updateAnnotationsSettings(annotationsSettings);
  }

  Future<void> setExportFormat(AnnotationExportFormat format) async {
    final annotationsSettings = _appSettings.annotations.copyWith(exportFormat: format);
    await updateAnnotationsSettings(annotationsSettings);
  }

  Future<void> setShowSidebar(bool show) async {
    final annotationsSettings = _appSettings.annotations.copyWith(showSidebar: show);
    await updateAnnotationsSettings(annotationsSettings);
  }

  Future<void> setToolbarPosition(ToolbarPosition position) async {
    final uiSettings = _appSettings.ui.copyWith(toolbarPosition: position);
    await updateUISettings(uiSettings);
  }

  Future<void> setGestures(Gestures gestures) async {
    final uiSettings = _appSettings.ui.copyWith(gestures: gestures);
    await updateUISettings(uiSettings);
  }

  Future<void> setEnableAnimations(bool enabled) async {
    final uiSettings = _appSettings.ui.copyWith(enableAnimations: enabled);
    await updateUISettings(uiSettings);
  }

  Future<void> setSoundFeedback(bool enabled) async {
    final uiSettings = _appSettings.ui.copyWith(soundFeedback: enabled);
    await updateUISettings(uiSettings);
  }

  Future<void> setLanguage(Language language) async {
    final localizationSettings = _appSettings.localization.copyWith(language: language);
    await updateLocalizationSettings(localizationSettings);
  }

  Future<void> setRegion(Region region) async {
    final localizationSettings = _appSettings.localization.copyWith(region: region);
    await updateLocalizationSettings(localizationSettings);
  }

  Future<void> setDateFormat(DateFormat format) async {
    final localizationSettings = _appSettings.localization.copyWith(dateFormat: format);
    await updateLocalizationSettings(localizationSettings);
  }

  Future<void> setDebugLogging(bool enabled) async {
    final developerSettings = _appSettings.developer.copyWith(debugLogging: enabled);
    await updateDeveloperSettings(developerSettings);
  }

  Future<void> setEnableDevTools(bool enabled) async {
    final developerSettings = _appSettings.developer.copyWith(enableDevTools: enabled);
    await updateDeveloperSettings(developerSettings);
  }

  Future<void> setCustomJS(String js) async {
    final developerSettings = _appSettings.developer.copyWith(customJS: js);
    await updateDeveloperSettings(developerSettings);
  }

  Future<void> resetToDefaults() async {
    _appSettings = AppSettings();
    await _saveSettings();
  }

  Future<void> _saveSettings() async {
    try {
      final settingsJson = jsonEncode(_appSettings.toJson());
      await executeDBOperation(
        () => _localDbService.solitude.keyValueDao.setValue(_settingsKey, settingsJson),
      );
    } catch (e) {
      logger.error('Failed to save app settings to database: $e');
      rethrow;
    }
  }
}