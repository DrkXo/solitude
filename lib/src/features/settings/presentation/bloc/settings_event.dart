part of 'settings_bloc.dart';
@freezed
abstract class SettingsEvent with _$SettingsEvent {
  // Display settings
  const factory SettingsEvent.fontSizeChanged(double fontSize) = _FontSizeChanged;
  const factory SettingsEvent.fontFamilyChanged(FontFamily fontFamily) = _FontFamilyChanged;
  const factory SettingsEvent.fontWeightChanged(String fontWeight) = _FontWeightChanged;
  const factory SettingsEvent.lineHeightChanged(double lineHeight) = _LineHeightChanged;
  const factory SettingsEvent.letterSpacingChanged(double letterSpacing) = _LetterSpacingChanged;
  const factory SettingsEvent.paragraphSpacingChanged(double paragraphSpacing) = _ParagraphSpacingChanged;
  const factory SettingsEvent.textAlignChanged(TextAlignOption textAlign) = _TextAlignChanged;
  const factory SettingsEvent.themeChanged(ThemeOption theme) = _ThemeChanged;
  const factory SettingsEvent.headerFontSizeMultiplierChanged(double multiplier) = _HeaderFontSizeMultiplierChanged;
  const factory SettingsEvent.headerMarginTopChanged(double margin) = _HeaderMarginTopChanged;
  const factory SettingsEvent.headerMarginBottomChanged(double margin) = _HeaderMarginBottomChanged;
  const factory SettingsEvent.footerMarginTopChanged(double margin) = _FooterMarginTopChanged;
  const factory SettingsEvent.footerMarginBottomChanged(double margin) = _FooterMarginBottomChanged;

  // Behavior settings
  const factory SettingsEvent.readingDirectionChanged(ReadingDirection readingDirection) = _ReadingDirectionChanged;
  const factory SettingsEvent.rememberLastPositionChanged(bool remember) = _RememberLastPositionChanged;
  const factory SettingsEvent.navigationMethodChanged(NavigationMethod method) = _NavigationMethodChanged;

  // Accessibility settings
  const factory SettingsEvent.dyslexicFontChanged(bool enabled) = _DyslexicFontChanged;
  const factory SettingsEvent.highContrastChanged(bool enabled) = _HighContrastChanged;
  const factory SettingsEvent.immersiveModeChanged(bool enabled) = _ImmersiveModeChanged;
  const factory SettingsEvent.textToSpeechChanged(TextToSpeech tts) = _TextToSpeechChanged;

  // Library settings
  const factory SettingsEvent.sortByChanged(SortBy sortBy) = _SortByChanged;
  const factory SettingsEvent.viewStyleChanged(ViewStyle viewStyle) = _ViewStyleChanged;
  const factory SettingsEvent.showCoversChanged(bool show) = _ShowCoversChanged;
  const factory SettingsEvent.metadataSourcesChanged(List<String> sources) = _MetadataSourcesChanged;
  const factory SettingsEvent.scanPathsChanged(List<String> paths) = _ScanPathsChanged;
  const factory SettingsEvent.formatsChanged(List<String> formats) = _FormatsChanged;

  // Annotations settings
  const factory SettingsEvent.highlightColorsChanged(List<String> colors) = _HighlightColorsChanged;
  const factory SettingsEvent.annotationsSyncChanged(bool sync) = _AnnotationsSyncChanged;
  const factory SettingsEvent.autoSaveAnnotationsChanged(bool autoSave) = _AutoSaveAnnotationsChanged;
  const factory SettingsEvent.exportFormatChanged(AnnotationExportFormat format) = _ExportFormatChanged;
  const factory SettingsEvent.showSidebarChanged(bool show) = _ShowSidebarChanged;

  // UI settings
  const factory SettingsEvent.toolbarPositionChanged(ToolbarPosition position) = _ToolbarPositionChanged;
  const factory SettingsEvent.enableAnimationsChanged(bool enabled) = _EnableAnimationsChanged;
  const factory SettingsEvent.soundFeedbackChanged(bool enabled) = _SoundFeedbackChanged;

  // Localization settings
  const factory SettingsEvent.languageChanged(Language language) = _LanguageChanged;
  const factory SettingsEvent.regionChanged(Region region) = _RegionChanged;
  const factory SettingsEvent.dateFormatChanged(DateFormat format) = _DateFormatChanged;

  // Developer settings
  const factory SettingsEvent.debugLoggingChanged(bool enabled) = _DebugLoggingChanged;
  const factory SettingsEvent.enableDevToolsChanged(bool enabled) = _EnableDevToolsChanged;
  const factory SettingsEvent.customJSChanged(String js) = _CustomJSChanged;

  // General actions
  const factory SettingsEvent.resetToDefaults() = _ResetToDefaults;
  const factory SettingsEvent.exportSettings(ExportFormat format) = _ExportSettings;
  const factory SettingsEvent.importSettings(String filePath) = _ImportSettings;
}