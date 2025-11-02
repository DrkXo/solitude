part of 'settings_bloc.dart';
@freezed
abstract class SettingsEvent with _$SettingsEvent {
  // Display settings
  const factory SettingsEvent.fontSizeChanged(double fontSize) = _FontSizeChanged;
  const factory SettingsEvent.fontFamilyChanged(String fontFamily) = _FontFamilyChanged;
  const factory SettingsEvent.themeChanged(String theme) = _ThemeChanged;
  const factory SettingsEvent.pageLayoutChanged(String pageLayout) = _PageLayoutChanged;

  // Behavior settings
  const factory SettingsEvent.readingDirectionChanged(String readingDirection) = _ReadingDirectionChanged;
  const factory SettingsEvent.scrollModeChanged(String scrollMode) = _ScrollModeChanged;
  const factory SettingsEvent.rememberLastPositionChanged(bool remember) = _RememberLastPositionChanged;
  const factory SettingsEvent.syncProgressChanged(bool sync) = _SyncProgressChanged;

  // Accessibility settings
  const factory SettingsEvent.dyslexicFontChanged(bool enabled) = _DyslexicFontChanged;
  const factory SettingsEvent.highContrastChanged(bool enabled) = _HighContrastChanged;
  const factory SettingsEvent.immersiveModeChanged(bool enabled) = _ImmersiveModeChanged;
  const factory SettingsEvent.textToSpeechChanged(TextToSpeech tts) = _TextToSpeechChanged;

  // Library settings
  const factory SettingsEvent.sortByChanged(String sortBy) = _SortByChanged;
  const factory SettingsEvent.viewStyleChanged(String viewStyle) = _ViewStyleChanged;
  const factory SettingsEvent.showCoversChanged(bool show) = _ShowCoversChanged;
  const factory SettingsEvent.metadataSourcesChanged(List<String> sources) = _MetadataSourcesChanged;
  const factory SettingsEvent.scanPathsChanged(List<String> paths) = _ScanPathsChanged;
  const factory SettingsEvent.formatsChanged(List<String> formats) = _FormatsChanged;

  // Annotations settings
  const factory SettingsEvent.highlightColorsChanged(List<String> colors) = _HighlightColorsChanged;
  const factory SettingsEvent.annotationsSyncChanged(bool sync) = _AnnotationsSyncChanged;
  const factory SettingsEvent.autoSaveAnnotationsChanged(bool autoSave) = _AutoSaveAnnotationsChanged;
  const factory SettingsEvent.exportFormatChanged(String format) = _ExportFormatChanged;
  const factory SettingsEvent.showSidebarChanged(bool show) = _ShowSidebarChanged;

  // UI settings
  const factory SettingsEvent.toolbarPositionChanged(String position) = _ToolbarPositionChanged;
  const factory SettingsEvent.enableAnimationsChanged(bool enabled) = _EnableAnimationsChanged;
  const factory SettingsEvent.soundFeedbackChanged(bool enabled) = _SoundFeedbackChanged;

  // Localization settings
  const factory SettingsEvent.languageChanged(String language) = _LanguageChanged;
  const factory SettingsEvent.regionChanged(String region) = _RegionChanged;
  const factory SettingsEvent.dateFormatChanged(String format) = _DateFormatChanged;

  // Developer settings
  const factory SettingsEvent.debugLoggingChanged(bool enabled) = _DebugLoggingChanged;
  const factory SettingsEvent.enableDevToolsChanged(bool enabled) = _EnableDevToolsChanged;
  const factory SettingsEvent.customJSChanged(String js) = _CustomJSChanged;

  // General actions
  const factory SettingsEvent.resetToDefaults() = _ResetToDefaults;
  const factory SettingsEvent.exportSettings(ExportFormat format) = _ExportSettings;
  const factory SettingsEvent.importSettings(String filePath) = _ImportSettings;
}