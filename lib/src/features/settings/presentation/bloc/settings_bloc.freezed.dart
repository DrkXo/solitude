// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FontSizeChanged value)?  fontSizeChanged,TResult Function( _FontFamilyChanged value)?  fontFamilyChanged,TResult Function( _FontWeightChanged value)?  fontWeightChanged,TResult Function( _LineHeightChanged value)?  lineHeightChanged,TResult Function( _LetterSpacingChanged value)?  letterSpacingChanged,TResult Function( _ParagraphSpacingChanged value)?  paragraphSpacingChanged,TResult Function( _TextAlignChanged value)?  textAlignChanged,TResult Function( _ThemeChanged value)?  themeChanged,TResult Function( _HeaderFontSizeMultiplierChanged value)?  headerFontSizeMultiplierChanged,TResult Function( _HeaderMarginTopChanged value)?  headerMarginTopChanged,TResult Function( _HeaderMarginBottomChanged value)?  headerMarginBottomChanged,TResult Function( _FooterMarginTopChanged value)?  footerMarginTopChanged,TResult Function( _FooterMarginBottomChanged value)?  footerMarginBottomChanged,TResult Function( _ReadingDirectionChanged value)?  readingDirectionChanged,TResult Function( _RememberLastPositionChanged value)?  rememberLastPositionChanged,TResult Function( _SyncProgressChanged value)?  syncProgressChanged,TResult Function( _NavigationMethodChanged value)?  navigationMethodChanged,TResult Function( _DyslexicFontChanged value)?  dyslexicFontChanged,TResult Function( _HighContrastChanged value)?  highContrastChanged,TResult Function( _ImmersiveModeChanged value)?  immersiveModeChanged,TResult Function( _TextToSpeechChanged value)?  textToSpeechChanged,TResult Function( _SortByChanged value)?  sortByChanged,TResult Function( _ViewStyleChanged value)?  viewStyleChanged,TResult Function( _ShowCoversChanged value)?  showCoversChanged,TResult Function( _MetadataSourcesChanged value)?  metadataSourcesChanged,TResult Function( _ScanPathsChanged value)?  scanPathsChanged,TResult Function( _FormatsChanged value)?  formatsChanged,TResult Function( _HighlightColorsChanged value)?  highlightColorsChanged,TResult Function( _AnnotationsSyncChanged value)?  annotationsSyncChanged,TResult Function( _AutoSaveAnnotationsChanged value)?  autoSaveAnnotationsChanged,TResult Function( _ExportFormatChanged value)?  exportFormatChanged,TResult Function( _ShowSidebarChanged value)?  showSidebarChanged,TResult Function( _ToolbarPositionChanged value)?  toolbarPositionChanged,TResult Function( _EnableAnimationsChanged value)?  enableAnimationsChanged,TResult Function( _SoundFeedbackChanged value)?  soundFeedbackChanged,TResult Function( _LanguageChanged value)?  languageChanged,TResult Function( _RegionChanged value)?  regionChanged,TResult Function( _DateFormatChanged value)?  dateFormatChanged,TResult Function( _DebugLoggingChanged value)?  debugLoggingChanged,TResult Function( _EnableDevToolsChanged value)?  enableDevToolsChanged,TResult Function( _CustomJSChanged value)?  customJSChanged,TResult Function( _ResetToDefaults value)?  resetToDefaults,TResult Function( _ExportSettings value)?  exportSettings,TResult Function( _ImportSettings value)?  importSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _FontFamilyChanged() when fontFamilyChanged != null:
return fontFamilyChanged(_that);case _FontWeightChanged() when fontWeightChanged != null:
return fontWeightChanged(_that);case _LineHeightChanged() when lineHeightChanged != null:
return lineHeightChanged(_that);case _LetterSpacingChanged() when letterSpacingChanged != null:
return letterSpacingChanged(_that);case _ParagraphSpacingChanged() when paragraphSpacingChanged != null:
return paragraphSpacingChanged(_that);case _TextAlignChanged() when textAlignChanged != null:
return textAlignChanged(_that);case _ThemeChanged() when themeChanged != null:
return themeChanged(_that);case _HeaderFontSizeMultiplierChanged() when headerFontSizeMultiplierChanged != null:
return headerFontSizeMultiplierChanged(_that);case _HeaderMarginTopChanged() when headerMarginTopChanged != null:
return headerMarginTopChanged(_that);case _HeaderMarginBottomChanged() when headerMarginBottomChanged != null:
return headerMarginBottomChanged(_that);case _FooterMarginTopChanged() when footerMarginTopChanged != null:
return footerMarginTopChanged(_that);case _FooterMarginBottomChanged() when footerMarginBottomChanged != null:
return footerMarginBottomChanged(_that);case _ReadingDirectionChanged() when readingDirectionChanged != null:
return readingDirectionChanged(_that);case _RememberLastPositionChanged() when rememberLastPositionChanged != null:
return rememberLastPositionChanged(_that);case _SyncProgressChanged() when syncProgressChanged != null:
return syncProgressChanged(_that);case _NavigationMethodChanged() when navigationMethodChanged != null:
return navigationMethodChanged(_that);case _DyslexicFontChanged() when dyslexicFontChanged != null:
return dyslexicFontChanged(_that);case _HighContrastChanged() when highContrastChanged != null:
return highContrastChanged(_that);case _ImmersiveModeChanged() when immersiveModeChanged != null:
return immersiveModeChanged(_that);case _TextToSpeechChanged() when textToSpeechChanged != null:
return textToSpeechChanged(_that);case _SortByChanged() when sortByChanged != null:
return sortByChanged(_that);case _ViewStyleChanged() when viewStyleChanged != null:
return viewStyleChanged(_that);case _ShowCoversChanged() when showCoversChanged != null:
return showCoversChanged(_that);case _MetadataSourcesChanged() when metadataSourcesChanged != null:
return metadataSourcesChanged(_that);case _ScanPathsChanged() when scanPathsChanged != null:
return scanPathsChanged(_that);case _FormatsChanged() when formatsChanged != null:
return formatsChanged(_that);case _HighlightColorsChanged() when highlightColorsChanged != null:
return highlightColorsChanged(_that);case _AnnotationsSyncChanged() when annotationsSyncChanged != null:
return annotationsSyncChanged(_that);case _AutoSaveAnnotationsChanged() when autoSaveAnnotationsChanged != null:
return autoSaveAnnotationsChanged(_that);case _ExportFormatChanged() when exportFormatChanged != null:
return exportFormatChanged(_that);case _ShowSidebarChanged() when showSidebarChanged != null:
return showSidebarChanged(_that);case _ToolbarPositionChanged() when toolbarPositionChanged != null:
return toolbarPositionChanged(_that);case _EnableAnimationsChanged() when enableAnimationsChanged != null:
return enableAnimationsChanged(_that);case _SoundFeedbackChanged() when soundFeedbackChanged != null:
return soundFeedbackChanged(_that);case _LanguageChanged() when languageChanged != null:
return languageChanged(_that);case _RegionChanged() when regionChanged != null:
return regionChanged(_that);case _DateFormatChanged() when dateFormatChanged != null:
return dateFormatChanged(_that);case _DebugLoggingChanged() when debugLoggingChanged != null:
return debugLoggingChanged(_that);case _EnableDevToolsChanged() when enableDevToolsChanged != null:
return enableDevToolsChanged(_that);case _CustomJSChanged() when customJSChanged != null:
return customJSChanged(_that);case _ResetToDefaults() when resetToDefaults != null:
return resetToDefaults(_that);case _ExportSettings() when exportSettings != null:
return exportSettings(_that);case _ImportSettings() when importSettings != null:
return importSettings(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FontSizeChanged value)  fontSizeChanged,required TResult Function( _FontFamilyChanged value)  fontFamilyChanged,required TResult Function( _FontWeightChanged value)  fontWeightChanged,required TResult Function( _LineHeightChanged value)  lineHeightChanged,required TResult Function( _LetterSpacingChanged value)  letterSpacingChanged,required TResult Function( _ParagraphSpacingChanged value)  paragraphSpacingChanged,required TResult Function( _TextAlignChanged value)  textAlignChanged,required TResult Function( _ThemeChanged value)  themeChanged,required TResult Function( _HeaderFontSizeMultiplierChanged value)  headerFontSizeMultiplierChanged,required TResult Function( _HeaderMarginTopChanged value)  headerMarginTopChanged,required TResult Function( _HeaderMarginBottomChanged value)  headerMarginBottomChanged,required TResult Function( _FooterMarginTopChanged value)  footerMarginTopChanged,required TResult Function( _FooterMarginBottomChanged value)  footerMarginBottomChanged,required TResult Function( _ReadingDirectionChanged value)  readingDirectionChanged,required TResult Function( _RememberLastPositionChanged value)  rememberLastPositionChanged,required TResult Function( _SyncProgressChanged value)  syncProgressChanged,required TResult Function( _NavigationMethodChanged value)  navigationMethodChanged,required TResult Function( _DyslexicFontChanged value)  dyslexicFontChanged,required TResult Function( _HighContrastChanged value)  highContrastChanged,required TResult Function( _ImmersiveModeChanged value)  immersiveModeChanged,required TResult Function( _TextToSpeechChanged value)  textToSpeechChanged,required TResult Function( _SortByChanged value)  sortByChanged,required TResult Function( _ViewStyleChanged value)  viewStyleChanged,required TResult Function( _ShowCoversChanged value)  showCoversChanged,required TResult Function( _MetadataSourcesChanged value)  metadataSourcesChanged,required TResult Function( _ScanPathsChanged value)  scanPathsChanged,required TResult Function( _FormatsChanged value)  formatsChanged,required TResult Function( _HighlightColorsChanged value)  highlightColorsChanged,required TResult Function( _AnnotationsSyncChanged value)  annotationsSyncChanged,required TResult Function( _AutoSaveAnnotationsChanged value)  autoSaveAnnotationsChanged,required TResult Function( _ExportFormatChanged value)  exportFormatChanged,required TResult Function( _ShowSidebarChanged value)  showSidebarChanged,required TResult Function( _ToolbarPositionChanged value)  toolbarPositionChanged,required TResult Function( _EnableAnimationsChanged value)  enableAnimationsChanged,required TResult Function( _SoundFeedbackChanged value)  soundFeedbackChanged,required TResult Function( _LanguageChanged value)  languageChanged,required TResult Function( _RegionChanged value)  regionChanged,required TResult Function( _DateFormatChanged value)  dateFormatChanged,required TResult Function( _DebugLoggingChanged value)  debugLoggingChanged,required TResult Function( _EnableDevToolsChanged value)  enableDevToolsChanged,required TResult Function( _CustomJSChanged value)  customJSChanged,required TResult Function( _ResetToDefaults value)  resetToDefaults,required TResult Function( _ExportSettings value)  exportSettings,required TResult Function( _ImportSettings value)  importSettings,}){
final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that);case _FontFamilyChanged():
return fontFamilyChanged(_that);case _FontWeightChanged():
return fontWeightChanged(_that);case _LineHeightChanged():
return lineHeightChanged(_that);case _LetterSpacingChanged():
return letterSpacingChanged(_that);case _ParagraphSpacingChanged():
return paragraphSpacingChanged(_that);case _TextAlignChanged():
return textAlignChanged(_that);case _ThemeChanged():
return themeChanged(_that);case _HeaderFontSizeMultiplierChanged():
return headerFontSizeMultiplierChanged(_that);case _HeaderMarginTopChanged():
return headerMarginTopChanged(_that);case _HeaderMarginBottomChanged():
return headerMarginBottomChanged(_that);case _FooterMarginTopChanged():
return footerMarginTopChanged(_that);case _FooterMarginBottomChanged():
return footerMarginBottomChanged(_that);case _ReadingDirectionChanged():
return readingDirectionChanged(_that);case _RememberLastPositionChanged():
return rememberLastPositionChanged(_that);case _SyncProgressChanged():
return syncProgressChanged(_that);case _NavigationMethodChanged():
return navigationMethodChanged(_that);case _DyslexicFontChanged():
return dyslexicFontChanged(_that);case _HighContrastChanged():
return highContrastChanged(_that);case _ImmersiveModeChanged():
return immersiveModeChanged(_that);case _TextToSpeechChanged():
return textToSpeechChanged(_that);case _SortByChanged():
return sortByChanged(_that);case _ViewStyleChanged():
return viewStyleChanged(_that);case _ShowCoversChanged():
return showCoversChanged(_that);case _MetadataSourcesChanged():
return metadataSourcesChanged(_that);case _ScanPathsChanged():
return scanPathsChanged(_that);case _FormatsChanged():
return formatsChanged(_that);case _HighlightColorsChanged():
return highlightColorsChanged(_that);case _AnnotationsSyncChanged():
return annotationsSyncChanged(_that);case _AutoSaveAnnotationsChanged():
return autoSaveAnnotationsChanged(_that);case _ExportFormatChanged():
return exportFormatChanged(_that);case _ShowSidebarChanged():
return showSidebarChanged(_that);case _ToolbarPositionChanged():
return toolbarPositionChanged(_that);case _EnableAnimationsChanged():
return enableAnimationsChanged(_that);case _SoundFeedbackChanged():
return soundFeedbackChanged(_that);case _LanguageChanged():
return languageChanged(_that);case _RegionChanged():
return regionChanged(_that);case _DateFormatChanged():
return dateFormatChanged(_that);case _DebugLoggingChanged():
return debugLoggingChanged(_that);case _EnableDevToolsChanged():
return enableDevToolsChanged(_that);case _CustomJSChanged():
return customJSChanged(_that);case _ResetToDefaults():
return resetToDefaults(_that);case _ExportSettings():
return exportSettings(_that);case _ImportSettings():
return importSettings(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FontSizeChanged value)?  fontSizeChanged,TResult? Function( _FontFamilyChanged value)?  fontFamilyChanged,TResult? Function( _FontWeightChanged value)?  fontWeightChanged,TResult? Function( _LineHeightChanged value)?  lineHeightChanged,TResult? Function( _LetterSpacingChanged value)?  letterSpacingChanged,TResult? Function( _ParagraphSpacingChanged value)?  paragraphSpacingChanged,TResult? Function( _TextAlignChanged value)?  textAlignChanged,TResult? Function( _ThemeChanged value)?  themeChanged,TResult? Function( _HeaderFontSizeMultiplierChanged value)?  headerFontSizeMultiplierChanged,TResult? Function( _HeaderMarginTopChanged value)?  headerMarginTopChanged,TResult? Function( _HeaderMarginBottomChanged value)?  headerMarginBottomChanged,TResult? Function( _FooterMarginTopChanged value)?  footerMarginTopChanged,TResult? Function( _FooterMarginBottomChanged value)?  footerMarginBottomChanged,TResult? Function( _ReadingDirectionChanged value)?  readingDirectionChanged,TResult? Function( _RememberLastPositionChanged value)?  rememberLastPositionChanged,TResult? Function( _SyncProgressChanged value)?  syncProgressChanged,TResult? Function( _NavigationMethodChanged value)?  navigationMethodChanged,TResult? Function( _DyslexicFontChanged value)?  dyslexicFontChanged,TResult? Function( _HighContrastChanged value)?  highContrastChanged,TResult? Function( _ImmersiveModeChanged value)?  immersiveModeChanged,TResult? Function( _TextToSpeechChanged value)?  textToSpeechChanged,TResult? Function( _SortByChanged value)?  sortByChanged,TResult? Function( _ViewStyleChanged value)?  viewStyleChanged,TResult? Function( _ShowCoversChanged value)?  showCoversChanged,TResult? Function( _MetadataSourcesChanged value)?  metadataSourcesChanged,TResult? Function( _ScanPathsChanged value)?  scanPathsChanged,TResult? Function( _FormatsChanged value)?  formatsChanged,TResult? Function( _HighlightColorsChanged value)?  highlightColorsChanged,TResult? Function( _AnnotationsSyncChanged value)?  annotationsSyncChanged,TResult? Function( _AutoSaveAnnotationsChanged value)?  autoSaveAnnotationsChanged,TResult? Function( _ExportFormatChanged value)?  exportFormatChanged,TResult? Function( _ShowSidebarChanged value)?  showSidebarChanged,TResult? Function( _ToolbarPositionChanged value)?  toolbarPositionChanged,TResult? Function( _EnableAnimationsChanged value)?  enableAnimationsChanged,TResult? Function( _SoundFeedbackChanged value)?  soundFeedbackChanged,TResult? Function( _LanguageChanged value)?  languageChanged,TResult? Function( _RegionChanged value)?  regionChanged,TResult? Function( _DateFormatChanged value)?  dateFormatChanged,TResult? Function( _DebugLoggingChanged value)?  debugLoggingChanged,TResult? Function( _EnableDevToolsChanged value)?  enableDevToolsChanged,TResult? Function( _CustomJSChanged value)?  customJSChanged,TResult? Function( _ResetToDefaults value)?  resetToDefaults,TResult? Function( _ExportSettings value)?  exportSettings,TResult? Function( _ImportSettings value)?  importSettings,}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _FontFamilyChanged() when fontFamilyChanged != null:
return fontFamilyChanged(_that);case _FontWeightChanged() when fontWeightChanged != null:
return fontWeightChanged(_that);case _LineHeightChanged() when lineHeightChanged != null:
return lineHeightChanged(_that);case _LetterSpacingChanged() when letterSpacingChanged != null:
return letterSpacingChanged(_that);case _ParagraphSpacingChanged() when paragraphSpacingChanged != null:
return paragraphSpacingChanged(_that);case _TextAlignChanged() when textAlignChanged != null:
return textAlignChanged(_that);case _ThemeChanged() when themeChanged != null:
return themeChanged(_that);case _HeaderFontSizeMultiplierChanged() when headerFontSizeMultiplierChanged != null:
return headerFontSizeMultiplierChanged(_that);case _HeaderMarginTopChanged() when headerMarginTopChanged != null:
return headerMarginTopChanged(_that);case _HeaderMarginBottomChanged() when headerMarginBottomChanged != null:
return headerMarginBottomChanged(_that);case _FooterMarginTopChanged() when footerMarginTopChanged != null:
return footerMarginTopChanged(_that);case _FooterMarginBottomChanged() when footerMarginBottomChanged != null:
return footerMarginBottomChanged(_that);case _ReadingDirectionChanged() when readingDirectionChanged != null:
return readingDirectionChanged(_that);case _RememberLastPositionChanged() when rememberLastPositionChanged != null:
return rememberLastPositionChanged(_that);case _SyncProgressChanged() when syncProgressChanged != null:
return syncProgressChanged(_that);case _NavigationMethodChanged() when navigationMethodChanged != null:
return navigationMethodChanged(_that);case _DyslexicFontChanged() when dyslexicFontChanged != null:
return dyslexicFontChanged(_that);case _HighContrastChanged() when highContrastChanged != null:
return highContrastChanged(_that);case _ImmersiveModeChanged() when immersiveModeChanged != null:
return immersiveModeChanged(_that);case _TextToSpeechChanged() when textToSpeechChanged != null:
return textToSpeechChanged(_that);case _SortByChanged() when sortByChanged != null:
return sortByChanged(_that);case _ViewStyleChanged() when viewStyleChanged != null:
return viewStyleChanged(_that);case _ShowCoversChanged() when showCoversChanged != null:
return showCoversChanged(_that);case _MetadataSourcesChanged() when metadataSourcesChanged != null:
return metadataSourcesChanged(_that);case _ScanPathsChanged() when scanPathsChanged != null:
return scanPathsChanged(_that);case _FormatsChanged() when formatsChanged != null:
return formatsChanged(_that);case _HighlightColorsChanged() when highlightColorsChanged != null:
return highlightColorsChanged(_that);case _AnnotationsSyncChanged() when annotationsSyncChanged != null:
return annotationsSyncChanged(_that);case _AutoSaveAnnotationsChanged() when autoSaveAnnotationsChanged != null:
return autoSaveAnnotationsChanged(_that);case _ExportFormatChanged() when exportFormatChanged != null:
return exportFormatChanged(_that);case _ShowSidebarChanged() when showSidebarChanged != null:
return showSidebarChanged(_that);case _ToolbarPositionChanged() when toolbarPositionChanged != null:
return toolbarPositionChanged(_that);case _EnableAnimationsChanged() when enableAnimationsChanged != null:
return enableAnimationsChanged(_that);case _SoundFeedbackChanged() when soundFeedbackChanged != null:
return soundFeedbackChanged(_that);case _LanguageChanged() when languageChanged != null:
return languageChanged(_that);case _RegionChanged() when regionChanged != null:
return regionChanged(_that);case _DateFormatChanged() when dateFormatChanged != null:
return dateFormatChanged(_that);case _DebugLoggingChanged() when debugLoggingChanged != null:
return debugLoggingChanged(_that);case _EnableDevToolsChanged() when enableDevToolsChanged != null:
return enableDevToolsChanged(_that);case _CustomJSChanged() when customJSChanged != null:
return customJSChanged(_that);case _ResetToDefaults() when resetToDefaults != null:
return resetToDefaults(_that);case _ExportSettings() when exportSettings != null:
return exportSettings(_that);case _ImportSettings() when importSettings != null:
return importSettings(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double fontSize)?  fontSizeChanged,TResult Function( FontFamily fontFamily)?  fontFamilyChanged,TResult Function( String fontWeight)?  fontWeightChanged,TResult Function( double lineHeight)?  lineHeightChanged,TResult Function( double letterSpacing)?  letterSpacingChanged,TResult Function( double paragraphSpacing)?  paragraphSpacingChanged,TResult Function( TextAlignOption textAlign)?  textAlignChanged,TResult Function( ThemeOption theme)?  themeChanged,TResult Function( double multiplier)?  headerFontSizeMultiplierChanged,TResult Function( double margin)?  headerMarginTopChanged,TResult Function( double margin)?  headerMarginBottomChanged,TResult Function( double margin)?  footerMarginTopChanged,TResult Function( double margin)?  footerMarginBottomChanged,TResult Function( ReadingDirection readingDirection)?  readingDirectionChanged,TResult Function( bool remember)?  rememberLastPositionChanged,TResult Function( bool sync)?  syncProgressChanged,TResult Function( NavigationMethod method)?  navigationMethodChanged,TResult Function( bool enabled)?  dyslexicFontChanged,TResult Function( bool enabled)?  highContrastChanged,TResult Function( bool enabled)?  immersiveModeChanged,TResult Function( TextToSpeech tts)?  textToSpeechChanged,TResult Function( SortBy sortBy)?  sortByChanged,TResult Function( ViewStyle viewStyle)?  viewStyleChanged,TResult Function( bool show)?  showCoversChanged,TResult Function( List<String> sources)?  metadataSourcesChanged,TResult Function( List<String> paths)?  scanPathsChanged,TResult Function( List<String> formats)?  formatsChanged,TResult Function( List<String> colors)?  highlightColorsChanged,TResult Function( bool sync)?  annotationsSyncChanged,TResult Function( bool autoSave)?  autoSaveAnnotationsChanged,TResult Function( AnnotationExportFormat format)?  exportFormatChanged,TResult Function( bool show)?  showSidebarChanged,TResult Function( ToolbarPosition position)?  toolbarPositionChanged,TResult Function( bool enabled)?  enableAnimationsChanged,TResult Function( bool enabled)?  soundFeedbackChanged,TResult Function( Language language)?  languageChanged,TResult Function( Region region)?  regionChanged,TResult Function( DateFormat format)?  dateFormatChanged,TResult Function( bool enabled)?  debugLoggingChanged,TResult Function( bool enabled)?  enableDevToolsChanged,TResult Function( String js)?  customJSChanged,TResult Function()?  resetToDefaults,TResult Function( ExportFormat format)?  exportSettings,TResult Function( String filePath)?  importSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _FontFamilyChanged() when fontFamilyChanged != null:
return fontFamilyChanged(_that.fontFamily);case _FontWeightChanged() when fontWeightChanged != null:
return fontWeightChanged(_that.fontWeight);case _LineHeightChanged() when lineHeightChanged != null:
return lineHeightChanged(_that.lineHeight);case _LetterSpacingChanged() when letterSpacingChanged != null:
return letterSpacingChanged(_that.letterSpacing);case _ParagraphSpacingChanged() when paragraphSpacingChanged != null:
return paragraphSpacingChanged(_that.paragraphSpacing);case _TextAlignChanged() when textAlignChanged != null:
return textAlignChanged(_that.textAlign);case _ThemeChanged() when themeChanged != null:
return themeChanged(_that.theme);case _HeaderFontSizeMultiplierChanged() when headerFontSizeMultiplierChanged != null:
return headerFontSizeMultiplierChanged(_that.multiplier);case _HeaderMarginTopChanged() when headerMarginTopChanged != null:
return headerMarginTopChanged(_that.margin);case _HeaderMarginBottomChanged() when headerMarginBottomChanged != null:
return headerMarginBottomChanged(_that.margin);case _FooterMarginTopChanged() when footerMarginTopChanged != null:
return footerMarginTopChanged(_that.margin);case _FooterMarginBottomChanged() when footerMarginBottomChanged != null:
return footerMarginBottomChanged(_that.margin);case _ReadingDirectionChanged() when readingDirectionChanged != null:
return readingDirectionChanged(_that.readingDirection);case _RememberLastPositionChanged() when rememberLastPositionChanged != null:
return rememberLastPositionChanged(_that.remember);case _SyncProgressChanged() when syncProgressChanged != null:
return syncProgressChanged(_that.sync);case _NavigationMethodChanged() when navigationMethodChanged != null:
return navigationMethodChanged(_that.method);case _DyslexicFontChanged() when dyslexicFontChanged != null:
return dyslexicFontChanged(_that.enabled);case _HighContrastChanged() when highContrastChanged != null:
return highContrastChanged(_that.enabled);case _ImmersiveModeChanged() when immersiveModeChanged != null:
return immersiveModeChanged(_that.enabled);case _TextToSpeechChanged() when textToSpeechChanged != null:
return textToSpeechChanged(_that.tts);case _SortByChanged() when sortByChanged != null:
return sortByChanged(_that.sortBy);case _ViewStyleChanged() when viewStyleChanged != null:
return viewStyleChanged(_that.viewStyle);case _ShowCoversChanged() when showCoversChanged != null:
return showCoversChanged(_that.show);case _MetadataSourcesChanged() when metadataSourcesChanged != null:
return metadataSourcesChanged(_that.sources);case _ScanPathsChanged() when scanPathsChanged != null:
return scanPathsChanged(_that.paths);case _FormatsChanged() when formatsChanged != null:
return formatsChanged(_that.formats);case _HighlightColorsChanged() when highlightColorsChanged != null:
return highlightColorsChanged(_that.colors);case _AnnotationsSyncChanged() when annotationsSyncChanged != null:
return annotationsSyncChanged(_that.sync);case _AutoSaveAnnotationsChanged() when autoSaveAnnotationsChanged != null:
return autoSaveAnnotationsChanged(_that.autoSave);case _ExportFormatChanged() when exportFormatChanged != null:
return exportFormatChanged(_that.format);case _ShowSidebarChanged() when showSidebarChanged != null:
return showSidebarChanged(_that.show);case _ToolbarPositionChanged() when toolbarPositionChanged != null:
return toolbarPositionChanged(_that.position);case _EnableAnimationsChanged() when enableAnimationsChanged != null:
return enableAnimationsChanged(_that.enabled);case _SoundFeedbackChanged() when soundFeedbackChanged != null:
return soundFeedbackChanged(_that.enabled);case _LanguageChanged() when languageChanged != null:
return languageChanged(_that.language);case _RegionChanged() when regionChanged != null:
return regionChanged(_that.region);case _DateFormatChanged() when dateFormatChanged != null:
return dateFormatChanged(_that.format);case _DebugLoggingChanged() when debugLoggingChanged != null:
return debugLoggingChanged(_that.enabled);case _EnableDevToolsChanged() when enableDevToolsChanged != null:
return enableDevToolsChanged(_that.enabled);case _CustomJSChanged() when customJSChanged != null:
return customJSChanged(_that.js);case _ResetToDefaults() when resetToDefaults != null:
return resetToDefaults();case _ExportSettings() when exportSettings != null:
return exportSettings(_that.format);case _ImportSettings() when importSettings != null:
return importSettings(_that.filePath);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double fontSize)  fontSizeChanged,required TResult Function( FontFamily fontFamily)  fontFamilyChanged,required TResult Function( String fontWeight)  fontWeightChanged,required TResult Function( double lineHeight)  lineHeightChanged,required TResult Function( double letterSpacing)  letterSpacingChanged,required TResult Function( double paragraphSpacing)  paragraphSpacingChanged,required TResult Function( TextAlignOption textAlign)  textAlignChanged,required TResult Function( ThemeOption theme)  themeChanged,required TResult Function( double multiplier)  headerFontSizeMultiplierChanged,required TResult Function( double margin)  headerMarginTopChanged,required TResult Function( double margin)  headerMarginBottomChanged,required TResult Function( double margin)  footerMarginTopChanged,required TResult Function( double margin)  footerMarginBottomChanged,required TResult Function( ReadingDirection readingDirection)  readingDirectionChanged,required TResult Function( bool remember)  rememberLastPositionChanged,required TResult Function( bool sync)  syncProgressChanged,required TResult Function( NavigationMethod method)  navigationMethodChanged,required TResult Function( bool enabled)  dyslexicFontChanged,required TResult Function( bool enabled)  highContrastChanged,required TResult Function( bool enabled)  immersiveModeChanged,required TResult Function( TextToSpeech tts)  textToSpeechChanged,required TResult Function( SortBy sortBy)  sortByChanged,required TResult Function( ViewStyle viewStyle)  viewStyleChanged,required TResult Function( bool show)  showCoversChanged,required TResult Function( List<String> sources)  metadataSourcesChanged,required TResult Function( List<String> paths)  scanPathsChanged,required TResult Function( List<String> formats)  formatsChanged,required TResult Function( List<String> colors)  highlightColorsChanged,required TResult Function( bool sync)  annotationsSyncChanged,required TResult Function( bool autoSave)  autoSaveAnnotationsChanged,required TResult Function( AnnotationExportFormat format)  exportFormatChanged,required TResult Function( bool show)  showSidebarChanged,required TResult Function( ToolbarPosition position)  toolbarPositionChanged,required TResult Function( bool enabled)  enableAnimationsChanged,required TResult Function( bool enabled)  soundFeedbackChanged,required TResult Function( Language language)  languageChanged,required TResult Function( Region region)  regionChanged,required TResult Function( DateFormat format)  dateFormatChanged,required TResult Function( bool enabled)  debugLoggingChanged,required TResult Function( bool enabled)  enableDevToolsChanged,required TResult Function( String js)  customJSChanged,required TResult Function()  resetToDefaults,required TResult Function( ExportFormat format)  exportSettings,required TResult Function( String filePath)  importSettings,}) {final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that.fontSize);case _FontFamilyChanged():
return fontFamilyChanged(_that.fontFamily);case _FontWeightChanged():
return fontWeightChanged(_that.fontWeight);case _LineHeightChanged():
return lineHeightChanged(_that.lineHeight);case _LetterSpacingChanged():
return letterSpacingChanged(_that.letterSpacing);case _ParagraphSpacingChanged():
return paragraphSpacingChanged(_that.paragraphSpacing);case _TextAlignChanged():
return textAlignChanged(_that.textAlign);case _ThemeChanged():
return themeChanged(_that.theme);case _HeaderFontSizeMultiplierChanged():
return headerFontSizeMultiplierChanged(_that.multiplier);case _HeaderMarginTopChanged():
return headerMarginTopChanged(_that.margin);case _HeaderMarginBottomChanged():
return headerMarginBottomChanged(_that.margin);case _FooterMarginTopChanged():
return footerMarginTopChanged(_that.margin);case _FooterMarginBottomChanged():
return footerMarginBottomChanged(_that.margin);case _ReadingDirectionChanged():
return readingDirectionChanged(_that.readingDirection);case _RememberLastPositionChanged():
return rememberLastPositionChanged(_that.remember);case _SyncProgressChanged():
return syncProgressChanged(_that.sync);case _NavigationMethodChanged():
return navigationMethodChanged(_that.method);case _DyslexicFontChanged():
return dyslexicFontChanged(_that.enabled);case _HighContrastChanged():
return highContrastChanged(_that.enabled);case _ImmersiveModeChanged():
return immersiveModeChanged(_that.enabled);case _TextToSpeechChanged():
return textToSpeechChanged(_that.tts);case _SortByChanged():
return sortByChanged(_that.sortBy);case _ViewStyleChanged():
return viewStyleChanged(_that.viewStyle);case _ShowCoversChanged():
return showCoversChanged(_that.show);case _MetadataSourcesChanged():
return metadataSourcesChanged(_that.sources);case _ScanPathsChanged():
return scanPathsChanged(_that.paths);case _FormatsChanged():
return formatsChanged(_that.formats);case _HighlightColorsChanged():
return highlightColorsChanged(_that.colors);case _AnnotationsSyncChanged():
return annotationsSyncChanged(_that.sync);case _AutoSaveAnnotationsChanged():
return autoSaveAnnotationsChanged(_that.autoSave);case _ExportFormatChanged():
return exportFormatChanged(_that.format);case _ShowSidebarChanged():
return showSidebarChanged(_that.show);case _ToolbarPositionChanged():
return toolbarPositionChanged(_that.position);case _EnableAnimationsChanged():
return enableAnimationsChanged(_that.enabled);case _SoundFeedbackChanged():
return soundFeedbackChanged(_that.enabled);case _LanguageChanged():
return languageChanged(_that.language);case _RegionChanged():
return regionChanged(_that.region);case _DateFormatChanged():
return dateFormatChanged(_that.format);case _DebugLoggingChanged():
return debugLoggingChanged(_that.enabled);case _EnableDevToolsChanged():
return enableDevToolsChanged(_that.enabled);case _CustomJSChanged():
return customJSChanged(_that.js);case _ResetToDefaults():
return resetToDefaults();case _ExportSettings():
return exportSettings(_that.format);case _ImportSettings():
return importSettings(_that.filePath);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double fontSize)?  fontSizeChanged,TResult? Function( FontFamily fontFamily)?  fontFamilyChanged,TResult? Function( String fontWeight)?  fontWeightChanged,TResult? Function( double lineHeight)?  lineHeightChanged,TResult? Function( double letterSpacing)?  letterSpacingChanged,TResult? Function( double paragraphSpacing)?  paragraphSpacingChanged,TResult? Function( TextAlignOption textAlign)?  textAlignChanged,TResult? Function( ThemeOption theme)?  themeChanged,TResult? Function( double multiplier)?  headerFontSizeMultiplierChanged,TResult? Function( double margin)?  headerMarginTopChanged,TResult? Function( double margin)?  headerMarginBottomChanged,TResult? Function( double margin)?  footerMarginTopChanged,TResult? Function( double margin)?  footerMarginBottomChanged,TResult? Function( ReadingDirection readingDirection)?  readingDirectionChanged,TResult? Function( bool remember)?  rememberLastPositionChanged,TResult? Function( bool sync)?  syncProgressChanged,TResult? Function( NavigationMethod method)?  navigationMethodChanged,TResult? Function( bool enabled)?  dyslexicFontChanged,TResult? Function( bool enabled)?  highContrastChanged,TResult? Function( bool enabled)?  immersiveModeChanged,TResult? Function( TextToSpeech tts)?  textToSpeechChanged,TResult? Function( SortBy sortBy)?  sortByChanged,TResult? Function( ViewStyle viewStyle)?  viewStyleChanged,TResult? Function( bool show)?  showCoversChanged,TResult? Function( List<String> sources)?  metadataSourcesChanged,TResult? Function( List<String> paths)?  scanPathsChanged,TResult? Function( List<String> formats)?  formatsChanged,TResult? Function( List<String> colors)?  highlightColorsChanged,TResult? Function( bool sync)?  annotationsSyncChanged,TResult? Function( bool autoSave)?  autoSaveAnnotationsChanged,TResult? Function( AnnotationExportFormat format)?  exportFormatChanged,TResult? Function( bool show)?  showSidebarChanged,TResult? Function( ToolbarPosition position)?  toolbarPositionChanged,TResult? Function( bool enabled)?  enableAnimationsChanged,TResult? Function( bool enabled)?  soundFeedbackChanged,TResult? Function( Language language)?  languageChanged,TResult? Function( Region region)?  regionChanged,TResult? Function( DateFormat format)?  dateFormatChanged,TResult? Function( bool enabled)?  debugLoggingChanged,TResult? Function( bool enabled)?  enableDevToolsChanged,TResult? Function( String js)?  customJSChanged,TResult? Function()?  resetToDefaults,TResult? Function( ExportFormat format)?  exportSettings,TResult? Function( String filePath)?  importSettings,}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _FontFamilyChanged() when fontFamilyChanged != null:
return fontFamilyChanged(_that.fontFamily);case _FontWeightChanged() when fontWeightChanged != null:
return fontWeightChanged(_that.fontWeight);case _LineHeightChanged() when lineHeightChanged != null:
return lineHeightChanged(_that.lineHeight);case _LetterSpacingChanged() when letterSpacingChanged != null:
return letterSpacingChanged(_that.letterSpacing);case _ParagraphSpacingChanged() when paragraphSpacingChanged != null:
return paragraphSpacingChanged(_that.paragraphSpacing);case _TextAlignChanged() when textAlignChanged != null:
return textAlignChanged(_that.textAlign);case _ThemeChanged() when themeChanged != null:
return themeChanged(_that.theme);case _HeaderFontSizeMultiplierChanged() when headerFontSizeMultiplierChanged != null:
return headerFontSizeMultiplierChanged(_that.multiplier);case _HeaderMarginTopChanged() when headerMarginTopChanged != null:
return headerMarginTopChanged(_that.margin);case _HeaderMarginBottomChanged() when headerMarginBottomChanged != null:
return headerMarginBottomChanged(_that.margin);case _FooterMarginTopChanged() when footerMarginTopChanged != null:
return footerMarginTopChanged(_that.margin);case _FooterMarginBottomChanged() when footerMarginBottomChanged != null:
return footerMarginBottomChanged(_that.margin);case _ReadingDirectionChanged() when readingDirectionChanged != null:
return readingDirectionChanged(_that.readingDirection);case _RememberLastPositionChanged() when rememberLastPositionChanged != null:
return rememberLastPositionChanged(_that.remember);case _SyncProgressChanged() when syncProgressChanged != null:
return syncProgressChanged(_that.sync);case _NavigationMethodChanged() when navigationMethodChanged != null:
return navigationMethodChanged(_that.method);case _DyslexicFontChanged() when dyslexicFontChanged != null:
return dyslexicFontChanged(_that.enabled);case _HighContrastChanged() when highContrastChanged != null:
return highContrastChanged(_that.enabled);case _ImmersiveModeChanged() when immersiveModeChanged != null:
return immersiveModeChanged(_that.enabled);case _TextToSpeechChanged() when textToSpeechChanged != null:
return textToSpeechChanged(_that.tts);case _SortByChanged() when sortByChanged != null:
return sortByChanged(_that.sortBy);case _ViewStyleChanged() when viewStyleChanged != null:
return viewStyleChanged(_that.viewStyle);case _ShowCoversChanged() when showCoversChanged != null:
return showCoversChanged(_that.show);case _MetadataSourcesChanged() when metadataSourcesChanged != null:
return metadataSourcesChanged(_that.sources);case _ScanPathsChanged() when scanPathsChanged != null:
return scanPathsChanged(_that.paths);case _FormatsChanged() when formatsChanged != null:
return formatsChanged(_that.formats);case _HighlightColorsChanged() when highlightColorsChanged != null:
return highlightColorsChanged(_that.colors);case _AnnotationsSyncChanged() when annotationsSyncChanged != null:
return annotationsSyncChanged(_that.sync);case _AutoSaveAnnotationsChanged() when autoSaveAnnotationsChanged != null:
return autoSaveAnnotationsChanged(_that.autoSave);case _ExportFormatChanged() when exportFormatChanged != null:
return exportFormatChanged(_that.format);case _ShowSidebarChanged() when showSidebarChanged != null:
return showSidebarChanged(_that.show);case _ToolbarPositionChanged() when toolbarPositionChanged != null:
return toolbarPositionChanged(_that.position);case _EnableAnimationsChanged() when enableAnimationsChanged != null:
return enableAnimationsChanged(_that.enabled);case _SoundFeedbackChanged() when soundFeedbackChanged != null:
return soundFeedbackChanged(_that.enabled);case _LanguageChanged() when languageChanged != null:
return languageChanged(_that.language);case _RegionChanged() when regionChanged != null:
return regionChanged(_that.region);case _DateFormatChanged() when dateFormatChanged != null:
return dateFormatChanged(_that.format);case _DebugLoggingChanged() when debugLoggingChanged != null:
return debugLoggingChanged(_that.enabled);case _EnableDevToolsChanged() when enableDevToolsChanged != null:
return enableDevToolsChanged(_that.enabled);case _CustomJSChanged() when customJSChanged != null:
return customJSChanged(_that.js);case _ResetToDefaults() when resetToDefaults != null:
return resetToDefaults();case _ExportSettings() when exportSettings != null:
return exportSettings(_that.format);case _ImportSettings() when importSettings != null:
return importSettings(_that.filePath);case _:
  return null;

}
}

}

/// @nodoc


class _FontSizeChanged implements SettingsEvent {
  const _FontSizeChanged(this.fontSize);
  

 final  double fontSize;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FontSizeChangedCopyWith<_FontSizeChanged> get copyWith => __$FontSizeChangedCopyWithImpl<_FontSizeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FontSizeChanged&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize));
}


@override
int get hashCode => Object.hash(runtimeType,fontSize);

@override
String toString() {
  return 'SettingsEvent.fontSizeChanged(fontSize: $fontSize)';
}


}

/// @nodoc
abstract mixin class _$FontSizeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FontSizeChangedCopyWith(_FontSizeChanged value, $Res Function(_FontSizeChanged) _then) = __$FontSizeChangedCopyWithImpl;
@useResult
$Res call({
 double fontSize
});




}
/// @nodoc
class __$FontSizeChangedCopyWithImpl<$Res>
    implements _$FontSizeChangedCopyWith<$Res> {
  __$FontSizeChangedCopyWithImpl(this._self, this._then);

  final _FontSizeChanged _self;
  final $Res Function(_FontSizeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fontSize = null,}) {
  return _then(_FontSizeChanged(
null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _FontFamilyChanged implements SettingsEvent {
  const _FontFamilyChanged(this.fontFamily);
  

 final  FontFamily fontFamily;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FontFamilyChangedCopyWith<_FontFamilyChanged> get copyWith => __$FontFamilyChangedCopyWithImpl<_FontFamilyChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FontFamilyChanged&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily));
}


@override
int get hashCode => Object.hash(runtimeType,fontFamily);

@override
String toString() {
  return 'SettingsEvent.fontFamilyChanged(fontFamily: $fontFamily)';
}


}

/// @nodoc
abstract mixin class _$FontFamilyChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FontFamilyChangedCopyWith(_FontFamilyChanged value, $Res Function(_FontFamilyChanged) _then) = __$FontFamilyChangedCopyWithImpl;
@useResult
$Res call({
 FontFamily fontFamily
});




}
/// @nodoc
class __$FontFamilyChangedCopyWithImpl<$Res>
    implements _$FontFamilyChangedCopyWith<$Res> {
  __$FontFamilyChangedCopyWithImpl(this._self, this._then);

  final _FontFamilyChanged _self;
  final $Res Function(_FontFamilyChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fontFamily = null,}) {
  return _then(_FontFamilyChanged(
null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as FontFamily,
  ));
}


}

/// @nodoc


class _FontWeightChanged implements SettingsEvent {
  const _FontWeightChanged(this.fontWeight);
  

 final  String fontWeight;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FontWeightChangedCopyWith<_FontWeightChanged> get copyWith => __$FontWeightChangedCopyWithImpl<_FontWeightChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FontWeightChanged&&(identical(other.fontWeight, fontWeight) || other.fontWeight == fontWeight));
}


@override
int get hashCode => Object.hash(runtimeType,fontWeight);

@override
String toString() {
  return 'SettingsEvent.fontWeightChanged(fontWeight: $fontWeight)';
}


}

/// @nodoc
abstract mixin class _$FontWeightChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FontWeightChangedCopyWith(_FontWeightChanged value, $Res Function(_FontWeightChanged) _then) = __$FontWeightChangedCopyWithImpl;
@useResult
$Res call({
 String fontWeight
});




}
/// @nodoc
class __$FontWeightChangedCopyWithImpl<$Res>
    implements _$FontWeightChangedCopyWith<$Res> {
  __$FontWeightChangedCopyWithImpl(this._self, this._then);

  final _FontWeightChanged _self;
  final $Res Function(_FontWeightChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fontWeight = null,}) {
  return _then(_FontWeightChanged(
null == fontWeight ? _self.fontWeight : fontWeight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LineHeightChanged implements SettingsEvent {
  const _LineHeightChanged(this.lineHeight);
  

 final  double lineHeight;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineHeightChangedCopyWith<_LineHeightChanged> get copyWith => __$LineHeightChangedCopyWithImpl<_LineHeightChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineHeightChanged&&(identical(other.lineHeight, lineHeight) || other.lineHeight == lineHeight));
}


@override
int get hashCode => Object.hash(runtimeType,lineHeight);

@override
String toString() {
  return 'SettingsEvent.lineHeightChanged(lineHeight: $lineHeight)';
}


}

/// @nodoc
abstract mixin class _$LineHeightChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$LineHeightChangedCopyWith(_LineHeightChanged value, $Res Function(_LineHeightChanged) _then) = __$LineHeightChangedCopyWithImpl;
@useResult
$Res call({
 double lineHeight
});




}
/// @nodoc
class __$LineHeightChangedCopyWithImpl<$Res>
    implements _$LineHeightChangedCopyWith<$Res> {
  __$LineHeightChangedCopyWithImpl(this._self, this._then);

  final _LineHeightChanged _self;
  final $Res Function(_LineHeightChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lineHeight = null,}) {
  return _then(_LineHeightChanged(
null == lineHeight ? _self.lineHeight : lineHeight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _LetterSpacingChanged implements SettingsEvent {
  const _LetterSpacingChanged(this.letterSpacing);
  

 final  double letterSpacing;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LetterSpacingChangedCopyWith<_LetterSpacingChanged> get copyWith => __$LetterSpacingChangedCopyWithImpl<_LetterSpacingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LetterSpacingChanged&&(identical(other.letterSpacing, letterSpacing) || other.letterSpacing == letterSpacing));
}


@override
int get hashCode => Object.hash(runtimeType,letterSpacing);

@override
String toString() {
  return 'SettingsEvent.letterSpacingChanged(letterSpacing: $letterSpacing)';
}


}

/// @nodoc
abstract mixin class _$LetterSpacingChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$LetterSpacingChangedCopyWith(_LetterSpacingChanged value, $Res Function(_LetterSpacingChanged) _then) = __$LetterSpacingChangedCopyWithImpl;
@useResult
$Res call({
 double letterSpacing
});




}
/// @nodoc
class __$LetterSpacingChangedCopyWithImpl<$Res>
    implements _$LetterSpacingChangedCopyWith<$Res> {
  __$LetterSpacingChangedCopyWithImpl(this._self, this._then);

  final _LetterSpacingChanged _self;
  final $Res Function(_LetterSpacingChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? letterSpacing = null,}) {
  return _then(_LetterSpacingChanged(
null == letterSpacing ? _self.letterSpacing : letterSpacing // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _ParagraphSpacingChanged implements SettingsEvent {
  const _ParagraphSpacingChanged(this.paragraphSpacing);
  

 final  double paragraphSpacing;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParagraphSpacingChangedCopyWith<_ParagraphSpacingChanged> get copyWith => __$ParagraphSpacingChangedCopyWithImpl<_ParagraphSpacingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParagraphSpacingChanged&&(identical(other.paragraphSpacing, paragraphSpacing) || other.paragraphSpacing == paragraphSpacing));
}


@override
int get hashCode => Object.hash(runtimeType,paragraphSpacing);

@override
String toString() {
  return 'SettingsEvent.paragraphSpacingChanged(paragraphSpacing: $paragraphSpacing)';
}


}

/// @nodoc
abstract mixin class _$ParagraphSpacingChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ParagraphSpacingChangedCopyWith(_ParagraphSpacingChanged value, $Res Function(_ParagraphSpacingChanged) _then) = __$ParagraphSpacingChangedCopyWithImpl;
@useResult
$Res call({
 double paragraphSpacing
});




}
/// @nodoc
class __$ParagraphSpacingChangedCopyWithImpl<$Res>
    implements _$ParagraphSpacingChangedCopyWith<$Res> {
  __$ParagraphSpacingChangedCopyWithImpl(this._self, this._then);

  final _ParagraphSpacingChanged _self;
  final $Res Function(_ParagraphSpacingChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paragraphSpacing = null,}) {
  return _then(_ParagraphSpacingChanged(
null == paragraphSpacing ? _self.paragraphSpacing : paragraphSpacing // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _TextAlignChanged implements SettingsEvent {
  const _TextAlignChanged(this.textAlign);
  

 final  TextAlignOption textAlign;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextAlignChangedCopyWith<_TextAlignChanged> get copyWith => __$TextAlignChangedCopyWithImpl<_TextAlignChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextAlignChanged&&(identical(other.textAlign, textAlign) || other.textAlign == textAlign));
}


@override
int get hashCode => Object.hash(runtimeType,textAlign);

@override
String toString() {
  return 'SettingsEvent.textAlignChanged(textAlign: $textAlign)';
}


}

/// @nodoc
abstract mixin class _$TextAlignChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$TextAlignChangedCopyWith(_TextAlignChanged value, $Res Function(_TextAlignChanged) _then) = __$TextAlignChangedCopyWithImpl;
@useResult
$Res call({
 TextAlignOption textAlign
});




}
/// @nodoc
class __$TextAlignChangedCopyWithImpl<$Res>
    implements _$TextAlignChangedCopyWith<$Res> {
  __$TextAlignChangedCopyWithImpl(this._self, this._then);

  final _TextAlignChanged _self;
  final $Res Function(_TextAlignChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? textAlign = null,}) {
  return _then(_TextAlignChanged(
null == textAlign ? _self.textAlign : textAlign // ignore: cast_nullable_to_non_nullable
as TextAlignOption,
  ));
}


}

/// @nodoc


class _ThemeChanged implements SettingsEvent {
  const _ThemeChanged(this.theme);
  

 final  ThemeOption theme;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeChangedCopyWith<_ThemeChanged> get copyWith => __$ThemeChangedCopyWithImpl<_ThemeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeChanged&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

@override
String toString() {
  return 'SettingsEvent.themeChanged(theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$ThemeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ThemeChangedCopyWith(_ThemeChanged value, $Res Function(_ThemeChanged) _then) = __$ThemeChangedCopyWithImpl;
@useResult
$Res call({
 ThemeOption theme
});




}
/// @nodoc
class __$ThemeChangedCopyWithImpl<$Res>
    implements _$ThemeChangedCopyWith<$Res> {
  __$ThemeChangedCopyWithImpl(this._self, this._then);

  final _ThemeChanged _self;
  final $Res Function(_ThemeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? theme = null,}) {
  return _then(_ThemeChanged(
null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeOption,
  ));
}


}

/// @nodoc


class _HeaderFontSizeMultiplierChanged implements SettingsEvent {
  const _HeaderFontSizeMultiplierChanged(this.multiplier);
  

 final  double multiplier;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderFontSizeMultiplierChangedCopyWith<_HeaderFontSizeMultiplierChanged> get copyWith => __$HeaderFontSizeMultiplierChangedCopyWithImpl<_HeaderFontSizeMultiplierChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderFontSizeMultiplierChanged&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}


@override
int get hashCode => Object.hash(runtimeType,multiplier);

@override
String toString() {
  return 'SettingsEvent.headerFontSizeMultiplierChanged(multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class _$HeaderFontSizeMultiplierChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$HeaderFontSizeMultiplierChangedCopyWith(_HeaderFontSizeMultiplierChanged value, $Res Function(_HeaderFontSizeMultiplierChanged) _then) = __$HeaderFontSizeMultiplierChangedCopyWithImpl;
@useResult
$Res call({
 double multiplier
});




}
/// @nodoc
class __$HeaderFontSizeMultiplierChangedCopyWithImpl<$Res>
    implements _$HeaderFontSizeMultiplierChangedCopyWith<$Res> {
  __$HeaderFontSizeMultiplierChangedCopyWithImpl(this._self, this._then);

  final _HeaderFontSizeMultiplierChanged _self;
  final $Res Function(_HeaderFontSizeMultiplierChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? multiplier = null,}) {
  return _then(_HeaderFontSizeMultiplierChanged(
null == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _HeaderMarginTopChanged implements SettingsEvent {
  const _HeaderMarginTopChanged(this.margin);
  

 final  double margin;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderMarginTopChangedCopyWith<_HeaderMarginTopChanged> get copyWith => __$HeaderMarginTopChangedCopyWithImpl<_HeaderMarginTopChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderMarginTopChanged&&(identical(other.margin, margin) || other.margin == margin));
}


@override
int get hashCode => Object.hash(runtimeType,margin);

@override
String toString() {
  return 'SettingsEvent.headerMarginTopChanged(margin: $margin)';
}


}

/// @nodoc
abstract mixin class _$HeaderMarginTopChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$HeaderMarginTopChangedCopyWith(_HeaderMarginTopChanged value, $Res Function(_HeaderMarginTopChanged) _then) = __$HeaderMarginTopChangedCopyWithImpl;
@useResult
$Res call({
 double margin
});




}
/// @nodoc
class __$HeaderMarginTopChangedCopyWithImpl<$Res>
    implements _$HeaderMarginTopChangedCopyWith<$Res> {
  __$HeaderMarginTopChangedCopyWithImpl(this._self, this._then);

  final _HeaderMarginTopChanged _self;
  final $Res Function(_HeaderMarginTopChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? margin = null,}) {
  return _then(_HeaderMarginTopChanged(
null == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _HeaderMarginBottomChanged implements SettingsEvent {
  const _HeaderMarginBottomChanged(this.margin);
  

 final  double margin;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderMarginBottomChangedCopyWith<_HeaderMarginBottomChanged> get copyWith => __$HeaderMarginBottomChangedCopyWithImpl<_HeaderMarginBottomChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderMarginBottomChanged&&(identical(other.margin, margin) || other.margin == margin));
}


@override
int get hashCode => Object.hash(runtimeType,margin);

@override
String toString() {
  return 'SettingsEvent.headerMarginBottomChanged(margin: $margin)';
}


}

/// @nodoc
abstract mixin class _$HeaderMarginBottomChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$HeaderMarginBottomChangedCopyWith(_HeaderMarginBottomChanged value, $Res Function(_HeaderMarginBottomChanged) _then) = __$HeaderMarginBottomChangedCopyWithImpl;
@useResult
$Res call({
 double margin
});




}
/// @nodoc
class __$HeaderMarginBottomChangedCopyWithImpl<$Res>
    implements _$HeaderMarginBottomChangedCopyWith<$Res> {
  __$HeaderMarginBottomChangedCopyWithImpl(this._self, this._then);

  final _HeaderMarginBottomChanged _self;
  final $Res Function(_HeaderMarginBottomChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? margin = null,}) {
  return _then(_HeaderMarginBottomChanged(
null == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _FooterMarginTopChanged implements SettingsEvent {
  const _FooterMarginTopChanged(this.margin);
  

 final  double margin;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FooterMarginTopChangedCopyWith<_FooterMarginTopChanged> get copyWith => __$FooterMarginTopChangedCopyWithImpl<_FooterMarginTopChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FooterMarginTopChanged&&(identical(other.margin, margin) || other.margin == margin));
}


@override
int get hashCode => Object.hash(runtimeType,margin);

@override
String toString() {
  return 'SettingsEvent.footerMarginTopChanged(margin: $margin)';
}


}

/// @nodoc
abstract mixin class _$FooterMarginTopChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FooterMarginTopChangedCopyWith(_FooterMarginTopChanged value, $Res Function(_FooterMarginTopChanged) _then) = __$FooterMarginTopChangedCopyWithImpl;
@useResult
$Res call({
 double margin
});




}
/// @nodoc
class __$FooterMarginTopChangedCopyWithImpl<$Res>
    implements _$FooterMarginTopChangedCopyWith<$Res> {
  __$FooterMarginTopChangedCopyWithImpl(this._self, this._then);

  final _FooterMarginTopChanged _self;
  final $Res Function(_FooterMarginTopChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? margin = null,}) {
  return _then(_FooterMarginTopChanged(
null == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _FooterMarginBottomChanged implements SettingsEvent {
  const _FooterMarginBottomChanged(this.margin);
  

 final  double margin;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FooterMarginBottomChangedCopyWith<_FooterMarginBottomChanged> get copyWith => __$FooterMarginBottomChangedCopyWithImpl<_FooterMarginBottomChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FooterMarginBottomChanged&&(identical(other.margin, margin) || other.margin == margin));
}


@override
int get hashCode => Object.hash(runtimeType,margin);

@override
String toString() {
  return 'SettingsEvent.footerMarginBottomChanged(margin: $margin)';
}


}

/// @nodoc
abstract mixin class _$FooterMarginBottomChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FooterMarginBottomChangedCopyWith(_FooterMarginBottomChanged value, $Res Function(_FooterMarginBottomChanged) _then) = __$FooterMarginBottomChangedCopyWithImpl;
@useResult
$Res call({
 double margin
});




}
/// @nodoc
class __$FooterMarginBottomChangedCopyWithImpl<$Res>
    implements _$FooterMarginBottomChangedCopyWith<$Res> {
  __$FooterMarginBottomChangedCopyWithImpl(this._self, this._then);

  final _FooterMarginBottomChanged _self;
  final $Res Function(_FooterMarginBottomChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? margin = null,}) {
  return _then(_FooterMarginBottomChanged(
null == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _ReadingDirectionChanged implements SettingsEvent {
  const _ReadingDirectionChanged(this.readingDirection);
  

 final  ReadingDirection readingDirection;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadingDirectionChangedCopyWith<_ReadingDirectionChanged> get copyWith => __$ReadingDirectionChangedCopyWithImpl<_ReadingDirectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadingDirectionChanged&&(identical(other.readingDirection, readingDirection) || other.readingDirection == readingDirection));
}


@override
int get hashCode => Object.hash(runtimeType,readingDirection);

@override
String toString() {
  return 'SettingsEvent.readingDirectionChanged(readingDirection: $readingDirection)';
}


}

/// @nodoc
abstract mixin class _$ReadingDirectionChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ReadingDirectionChangedCopyWith(_ReadingDirectionChanged value, $Res Function(_ReadingDirectionChanged) _then) = __$ReadingDirectionChangedCopyWithImpl;
@useResult
$Res call({
 ReadingDirection readingDirection
});




}
/// @nodoc
class __$ReadingDirectionChangedCopyWithImpl<$Res>
    implements _$ReadingDirectionChangedCopyWith<$Res> {
  __$ReadingDirectionChangedCopyWithImpl(this._self, this._then);

  final _ReadingDirectionChanged _self;
  final $Res Function(_ReadingDirectionChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? readingDirection = null,}) {
  return _then(_ReadingDirectionChanged(
null == readingDirection ? _self.readingDirection : readingDirection // ignore: cast_nullable_to_non_nullable
as ReadingDirection,
  ));
}


}

/// @nodoc


class _RememberLastPositionChanged implements SettingsEvent {
  const _RememberLastPositionChanged(this.remember);
  

 final  bool remember;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RememberLastPositionChangedCopyWith<_RememberLastPositionChanged> get copyWith => __$RememberLastPositionChangedCopyWithImpl<_RememberLastPositionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RememberLastPositionChanged&&(identical(other.remember, remember) || other.remember == remember));
}


@override
int get hashCode => Object.hash(runtimeType,remember);

@override
String toString() {
  return 'SettingsEvent.rememberLastPositionChanged(remember: $remember)';
}


}

/// @nodoc
abstract mixin class _$RememberLastPositionChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$RememberLastPositionChangedCopyWith(_RememberLastPositionChanged value, $Res Function(_RememberLastPositionChanged) _then) = __$RememberLastPositionChangedCopyWithImpl;
@useResult
$Res call({
 bool remember
});




}
/// @nodoc
class __$RememberLastPositionChangedCopyWithImpl<$Res>
    implements _$RememberLastPositionChangedCopyWith<$Res> {
  __$RememberLastPositionChangedCopyWithImpl(this._self, this._then);

  final _RememberLastPositionChanged _self;
  final $Res Function(_RememberLastPositionChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remember = null,}) {
  return _then(_RememberLastPositionChanged(
null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SyncProgressChanged implements SettingsEvent {
  const _SyncProgressChanged(this.sync);
  

 final  bool sync;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncProgressChangedCopyWith<_SyncProgressChanged> get copyWith => __$SyncProgressChangedCopyWithImpl<_SyncProgressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncProgressChanged&&(identical(other.sync, sync) || other.sync == sync));
}


@override
int get hashCode => Object.hash(runtimeType,sync);

@override
String toString() {
  return 'SettingsEvent.syncProgressChanged(sync: $sync)';
}


}

/// @nodoc
abstract mixin class _$SyncProgressChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$SyncProgressChangedCopyWith(_SyncProgressChanged value, $Res Function(_SyncProgressChanged) _then) = __$SyncProgressChangedCopyWithImpl;
@useResult
$Res call({
 bool sync
});




}
/// @nodoc
class __$SyncProgressChangedCopyWithImpl<$Res>
    implements _$SyncProgressChangedCopyWith<$Res> {
  __$SyncProgressChangedCopyWithImpl(this._self, this._then);

  final _SyncProgressChanged _self;
  final $Res Function(_SyncProgressChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sync = null,}) {
  return _then(_SyncProgressChanged(
null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _NavigationMethodChanged implements SettingsEvent {
  const _NavigationMethodChanged(this.method);
  

 final  NavigationMethod method;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationMethodChangedCopyWith<_NavigationMethodChanged> get copyWith => __$NavigationMethodChangedCopyWithImpl<_NavigationMethodChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationMethodChanged&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,method);

@override
String toString() {
  return 'SettingsEvent.navigationMethodChanged(method: $method)';
}


}

/// @nodoc
abstract mixin class _$NavigationMethodChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$NavigationMethodChangedCopyWith(_NavigationMethodChanged value, $Res Function(_NavigationMethodChanged) _then) = __$NavigationMethodChangedCopyWithImpl;
@useResult
$Res call({
 NavigationMethod method
});




}
/// @nodoc
class __$NavigationMethodChangedCopyWithImpl<$Res>
    implements _$NavigationMethodChangedCopyWith<$Res> {
  __$NavigationMethodChangedCopyWithImpl(this._self, this._then);

  final _NavigationMethodChanged _self;
  final $Res Function(_NavigationMethodChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? method = null,}) {
  return _then(_NavigationMethodChanged(
null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as NavigationMethod,
  ));
}


}

/// @nodoc


class _DyslexicFontChanged implements SettingsEvent {
  const _DyslexicFontChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DyslexicFontChangedCopyWith<_DyslexicFontChanged> get copyWith => __$DyslexicFontChangedCopyWithImpl<_DyslexicFontChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DyslexicFontChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.dyslexicFontChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$DyslexicFontChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$DyslexicFontChangedCopyWith(_DyslexicFontChanged value, $Res Function(_DyslexicFontChanged) _then) = __$DyslexicFontChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$DyslexicFontChangedCopyWithImpl<$Res>
    implements _$DyslexicFontChangedCopyWith<$Res> {
  __$DyslexicFontChangedCopyWithImpl(this._self, this._then);

  final _DyslexicFontChanged _self;
  final $Res Function(_DyslexicFontChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_DyslexicFontChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _HighContrastChanged implements SettingsEvent {
  const _HighContrastChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighContrastChangedCopyWith<_HighContrastChanged> get copyWith => __$HighContrastChangedCopyWithImpl<_HighContrastChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighContrastChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.highContrastChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$HighContrastChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$HighContrastChangedCopyWith(_HighContrastChanged value, $Res Function(_HighContrastChanged) _then) = __$HighContrastChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$HighContrastChangedCopyWithImpl<$Res>
    implements _$HighContrastChangedCopyWith<$Res> {
  __$HighContrastChangedCopyWithImpl(this._self, this._then);

  final _HighContrastChanged _self;
  final $Res Function(_HighContrastChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_HighContrastChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ImmersiveModeChanged implements SettingsEvent {
  const _ImmersiveModeChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImmersiveModeChangedCopyWith<_ImmersiveModeChanged> get copyWith => __$ImmersiveModeChangedCopyWithImpl<_ImmersiveModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImmersiveModeChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.immersiveModeChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$ImmersiveModeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ImmersiveModeChangedCopyWith(_ImmersiveModeChanged value, $Res Function(_ImmersiveModeChanged) _then) = __$ImmersiveModeChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$ImmersiveModeChangedCopyWithImpl<$Res>
    implements _$ImmersiveModeChangedCopyWith<$Res> {
  __$ImmersiveModeChangedCopyWithImpl(this._self, this._then);

  final _ImmersiveModeChanged _self;
  final $Res Function(_ImmersiveModeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_ImmersiveModeChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _TextToSpeechChanged implements SettingsEvent {
  const _TextToSpeechChanged(this.tts);
  

 final  TextToSpeech tts;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextToSpeechChangedCopyWith<_TextToSpeechChanged> get copyWith => __$TextToSpeechChangedCopyWithImpl<_TextToSpeechChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextToSpeechChanged&&(identical(other.tts, tts) || other.tts == tts));
}


@override
int get hashCode => Object.hash(runtimeType,tts);

@override
String toString() {
  return 'SettingsEvent.textToSpeechChanged(tts: $tts)';
}


}

/// @nodoc
abstract mixin class _$TextToSpeechChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$TextToSpeechChangedCopyWith(_TextToSpeechChanged value, $Res Function(_TextToSpeechChanged) _then) = __$TextToSpeechChangedCopyWithImpl;
@useResult
$Res call({
 TextToSpeech tts
});


$TextToSpeechCopyWith<$Res> get tts;

}
/// @nodoc
class __$TextToSpeechChangedCopyWithImpl<$Res>
    implements _$TextToSpeechChangedCopyWith<$Res> {
  __$TextToSpeechChangedCopyWithImpl(this._self, this._then);

  final _TextToSpeechChanged _self;
  final $Res Function(_TextToSpeechChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tts = null,}) {
  return _then(_TextToSpeechChanged(
null == tts ? _self.tts : tts // ignore: cast_nullable_to_non_nullable
as TextToSpeech,
  ));
}

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextToSpeechCopyWith<$Res> get tts {
  
  return $TextToSpeechCopyWith<$Res>(_self.tts, (value) {
    return _then(_self.copyWith(tts: value));
  });
}
}

/// @nodoc


class _SortByChanged implements SettingsEvent {
  const _SortByChanged(this.sortBy);
  

 final  SortBy sortBy;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortByChangedCopyWith<_SortByChanged> get copyWith => __$SortByChangedCopyWithImpl<_SortByChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortByChanged&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,sortBy);

@override
String toString() {
  return 'SettingsEvent.sortByChanged(sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class _$SortByChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$SortByChangedCopyWith(_SortByChanged value, $Res Function(_SortByChanged) _then) = __$SortByChangedCopyWithImpl;
@useResult
$Res call({
 SortBy sortBy
});




}
/// @nodoc
class __$SortByChangedCopyWithImpl<$Res>
    implements _$SortByChangedCopyWith<$Res> {
  __$SortByChangedCopyWithImpl(this._self, this._then);

  final _SortByChanged _self;
  final $Res Function(_SortByChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortBy = null,}) {
  return _then(_SortByChanged(
null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy,
  ));
}


}

/// @nodoc


class _ViewStyleChanged implements SettingsEvent {
  const _ViewStyleChanged(this.viewStyle);
  

 final  ViewStyle viewStyle;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewStyleChangedCopyWith<_ViewStyleChanged> get copyWith => __$ViewStyleChangedCopyWithImpl<_ViewStyleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewStyleChanged&&(identical(other.viewStyle, viewStyle) || other.viewStyle == viewStyle));
}


@override
int get hashCode => Object.hash(runtimeType,viewStyle);

@override
String toString() {
  return 'SettingsEvent.viewStyleChanged(viewStyle: $viewStyle)';
}


}

/// @nodoc
abstract mixin class _$ViewStyleChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ViewStyleChangedCopyWith(_ViewStyleChanged value, $Res Function(_ViewStyleChanged) _then) = __$ViewStyleChangedCopyWithImpl;
@useResult
$Res call({
 ViewStyle viewStyle
});




}
/// @nodoc
class __$ViewStyleChangedCopyWithImpl<$Res>
    implements _$ViewStyleChangedCopyWith<$Res> {
  __$ViewStyleChangedCopyWithImpl(this._self, this._then);

  final _ViewStyleChanged _self;
  final $Res Function(_ViewStyleChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewStyle = null,}) {
  return _then(_ViewStyleChanged(
null == viewStyle ? _self.viewStyle : viewStyle // ignore: cast_nullable_to_non_nullable
as ViewStyle,
  ));
}


}

/// @nodoc


class _ShowCoversChanged implements SettingsEvent {
  const _ShowCoversChanged(this.show);
  

 final  bool show;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowCoversChangedCopyWith<_ShowCoversChanged> get copyWith => __$ShowCoversChangedCopyWithImpl<_ShowCoversChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowCoversChanged&&(identical(other.show, show) || other.show == show));
}


@override
int get hashCode => Object.hash(runtimeType,show);

@override
String toString() {
  return 'SettingsEvent.showCoversChanged(show: $show)';
}


}

/// @nodoc
abstract mixin class _$ShowCoversChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ShowCoversChangedCopyWith(_ShowCoversChanged value, $Res Function(_ShowCoversChanged) _then) = __$ShowCoversChangedCopyWithImpl;
@useResult
$Res call({
 bool show
});




}
/// @nodoc
class __$ShowCoversChangedCopyWithImpl<$Res>
    implements _$ShowCoversChangedCopyWith<$Res> {
  __$ShowCoversChangedCopyWithImpl(this._self, this._then);

  final _ShowCoversChanged _self;
  final $Res Function(_ShowCoversChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? show = null,}) {
  return _then(_ShowCoversChanged(
null == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MetadataSourcesChanged implements SettingsEvent {
  const _MetadataSourcesChanged(final  List<String> sources): _sources = sources;
  

 final  List<String> _sources;
 List<String> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetadataSourcesChangedCopyWith<_MetadataSourcesChanged> get copyWith => __$MetadataSourcesChangedCopyWithImpl<_MetadataSourcesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetadataSourcesChanged&&const DeepCollectionEquality().equals(other._sources, _sources));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'SettingsEvent.metadataSourcesChanged(sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$MetadataSourcesChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$MetadataSourcesChangedCopyWith(_MetadataSourcesChanged value, $Res Function(_MetadataSourcesChanged) _then) = __$MetadataSourcesChangedCopyWithImpl;
@useResult
$Res call({
 List<String> sources
});




}
/// @nodoc
class __$MetadataSourcesChangedCopyWithImpl<$Res>
    implements _$MetadataSourcesChangedCopyWith<$Res> {
  __$MetadataSourcesChangedCopyWithImpl(this._self, this._then);

  final _MetadataSourcesChanged _self;
  final $Res Function(_MetadataSourcesChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sources = null,}) {
  return _then(_MetadataSourcesChanged(
null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _ScanPathsChanged implements SettingsEvent {
  const _ScanPathsChanged(final  List<String> paths): _paths = paths;
  

 final  List<String> _paths;
 List<String> get paths {
  if (_paths is EqualUnmodifiableListView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paths);
}


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanPathsChangedCopyWith<_ScanPathsChanged> get copyWith => __$ScanPathsChangedCopyWithImpl<_ScanPathsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanPathsChanged&&const DeepCollectionEquality().equals(other._paths, _paths));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_paths));

@override
String toString() {
  return 'SettingsEvent.scanPathsChanged(paths: $paths)';
}


}

/// @nodoc
abstract mixin class _$ScanPathsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ScanPathsChangedCopyWith(_ScanPathsChanged value, $Res Function(_ScanPathsChanged) _then) = __$ScanPathsChangedCopyWithImpl;
@useResult
$Res call({
 List<String> paths
});




}
/// @nodoc
class __$ScanPathsChangedCopyWithImpl<$Res>
    implements _$ScanPathsChangedCopyWith<$Res> {
  __$ScanPathsChangedCopyWithImpl(this._self, this._then);

  final _ScanPathsChanged _self;
  final $Res Function(_ScanPathsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paths = null,}) {
  return _then(_ScanPathsChanged(
null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _FormatsChanged implements SettingsEvent {
  const _FormatsChanged(final  List<String> formats): _formats = formats;
  

 final  List<String> _formats;
 List<String> get formats {
  if (_formats is EqualUnmodifiableListView) return _formats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_formats);
}


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormatsChangedCopyWith<_FormatsChanged> get copyWith => __$FormatsChangedCopyWithImpl<_FormatsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatsChanged&&const DeepCollectionEquality().equals(other._formats, _formats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_formats));

@override
String toString() {
  return 'SettingsEvent.formatsChanged(formats: $formats)';
}


}

/// @nodoc
abstract mixin class _$FormatsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$FormatsChangedCopyWith(_FormatsChanged value, $Res Function(_FormatsChanged) _then) = __$FormatsChangedCopyWithImpl;
@useResult
$Res call({
 List<String> formats
});




}
/// @nodoc
class __$FormatsChangedCopyWithImpl<$Res>
    implements _$FormatsChangedCopyWith<$Res> {
  __$FormatsChangedCopyWithImpl(this._self, this._then);

  final _FormatsChanged _self;
  final $Res Function(_FormatsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? formats = null,}) {
  return _then(_FormatsChanged(
null == formats ? _self._formats : formats // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _HighlightColorsChanged implements SettingsEvent {
  const _HighlightColorsChanged(final  List<String> colors): _colors = colors;
  

 final  List<String> _colors;
 List<String> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighlightColorsChangedCopyWith<_HighlightColorsChanged> get copyWith => __$HighlightColorsChangedCopyWithImpl<_HighlightColorsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighlightColorsChanged&&const DeepCollectionEquality().equals(other._colors, _colors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_colors));

@override
String toString() {
  return 'SettingsEvent.highlightColorsChanged(colors: $colors)';
}


}

/// @nodoc
abstract mixin class _$HighlightColorsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$HighlightColorsChangedCopyWith(_HighlightColorsChanged value, $Res Function(_HighlightColorsChanged) _then) = __$HighlightColorsChangedCopyWithImpl;
@useResult
$Res call({
 List<String> colors
});




}
/// @nodoc
class __$HighlightColorsChangedCopyWithImpl<$Res>
    implements _$HighlightColorsChangedCopyWith<$Res> {
  __$HighlightColorsChangedCopyWithImpl(this._self, this._then);

  final _HighlightColorsChanged _self;
  final $Res Function(_HighlightColorsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? colors = null,}) {
  return _then(_HighlightColorsChanged(
null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _AnnotationsSyncChanged implements SettingsEvent {
  const _AnnotationsSyncChanged(this.sync);
  

 final  bool sync;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnotationsSyncChangedCopyWith<_AnnotationsSyncChanged> get copyWith => __$AnnotationsSyncChangedCopyWithImpl<_AnnotationsSyncChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnnotationsSyncChanged&&(identical(other.sync, sync) || other.sync == sync));
}


@override
int get hashCode => Object.hash(runtimeType,sync);

@override
String toString() {
  return 'SettingsEvent.annotationsSyncChanged(sync: $sync)';
}


}

/// @nodoc
abstract mixin class _$AnnotationsSyncChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$AnnotationsSyncChangedCopyWith(_AnnotationsSyncChanged value, $Res Function(_AnnotationsSyncChanged) _then) = __$AnnotationsSyncChangedCopyWithImpl;
@useResult
$Res call({
 bool sync
});




}
/// @nodoc
class __$AnnotationsSyncChangedCopyWithImpl<$Res>
    implements _$AnnotationsSyncChangedCopyWith<$Res> {
  __$AnnotationsSyncChangedCopyWithImpl(this._self, this._then);

  final _AnnotationsSyncChanged _self;
  final $Res Function(_AnnotationsSyncChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sync = null,}) {
  return _then(_AnnotationsSyncChanged(
null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AutoSaveAnnotationsChanged implements SettingsEvent {
  const _AutoSaveAnnotationsChanged(this.autoSave);
  

 final  bool autoSave;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutoSaveAnnotationsChangedCopyWith<_AutoSaveAnnotationsChanged> get copyWith => __$AutoSaveAnnotationsChangedCopyWithImpl<_AutoSaveAnnotationsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutoSaveAnnotationsChanged&&(identical(other.autoSave, autoSave) || other.autoSave == autoSave));
}


@override
int get hashCode => Object.hash(runtimeType,autoSave);

@override
String toString() {
  return 'SettingsEvent.autoSaveAnnotationsChanged(autoSave: $autoSave)';
}


}

/// @nodoc
abstract mixin class _$AutoSaveAnnotationsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$AutoSaveAnnotationsChangedCopyWith(_AutoSaveAnnotationsChanged value, $Res Function(_AutoSaveAnnotationsChanged) _then) = __$AutoSaveAnnotationsChangedCopyWithImpl;
@useResult
$Res call({
 bool autoSave
});




}
/// @nodoc
class __$AutoSaveAnnotationsChangedCopyWithImpl<$Res>
    implements _$AutoSaveAnnotationsChangedCopyWith<$Res> {
  __$AutoSaveAnnotationsChangedCopyWithImpl(this._self, this._then);

  final _AutoSaveAnnotationsChanged _self;
  final $Res Function(_AutoSaveAnnotationsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? autoSave = null,}) {
  return _then(_AutoSaveAnnotationsChanged(
null == autoSave ? _self.autoSave : autoSave // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ExportFormatChanged implements SettingsEvent {
  const _ExportFormatChanged(this.format);
  

 final  AnnotationExportFormat format;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExportFormatChangedCopyWith<_ExportFormatChanged> get copyWith => __$ExportFormatChangedCopyWithImpl<_ExportFormatChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExportFormatChanged&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString() {
  return 'SettingsEvent.exportFormatChanged(format: $format)';
}


}

/// @nodoc
abstract mixin class _$ExportFormatChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ExportFormatChangedCopyWith(_ExportFormatChanged value, $Res Function(_ExportFormatChanged) _then) = __$ExportFormatChangedCopyWithImpl;
@useResult
$Res call({
 AnnotationExportFormat format
});




}
/// @nodoc
class __$ExportFormatChangedCopyWithImpl<$Res>
    implements _$ExportFormatChangedCopyWith<$Res> {
  __$ExportFormatChangedCopyWithImpl(this._self, this._then);

  final _ExportFormatChanged _self;
  final $Res Function(_ExportFormatChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(_ExportFormatChanged(
null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as AnnotationExportFormat,
  ));
}


}

/// @nodoc


class _ShowSidebarChanged implements SettingsEvent {
  const _ShowSidebarChanged(this.show);
  

 final  bool show;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowSidebarChangedCopyWith<_ShowSidebarChanged> get copyWith => __$ShowSidebarChangedCopyWithImpl<_ShowSidebarChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowSidebarChanged&&(identical(other.show, show) || other.show == show));
}


@override
int get hashCode => Object.hash(runtimeType,show);

@override
String toString() {
  return 'SettingsEvent.showSidebarChanged(show: $show)';
}


}

/// @nodoc
abstract mixin class _$ShowSidebarChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ShowSidebarChangedCopyWith(_ShowSidebarChanged value, $Res Function(_ShowSidebarChanged) _then) = __$ShowSidebarChangedCopyWithImpl;
@useResult
$Res call({
 bool show
});




}
/// @nodoc
class __$ShowSidebarChangedCopyWithImpl<$Res>
    implements _$ShowSidebarChangedCopyWith<$Res> {
  __$ShowSidebarChangedCopyWithImpl(this._self, this._then);

  final _ShowSidebarChanged _self;
  final $Res Function(_ShowSidebarChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? show = null,}) {
  return _then(_ShowSidebarChanged(
null == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ToolbarPositionChanged implements SettingsEvent {
  const _ToolbarPositionChanged(this.position);
  

 final  ToolbarPosition position;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolbarPositionChangedCopyWith<_ToolbarPositionChanged> get copyWith => __$ToolbarPositionChangedCopyWithImpl<_ToolbarPositionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolbarPositionChanged&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'SettingsEvent.toolbarPositionChanged(position: $position)';
}


}

/// @nodoc
abstract mixin class _$ToolbarPositionChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ToolbarPositionChangedCopyWith(_ToolbarPositionChanged value, $Res Function(_ToolbarPositionChanged) _then) = __$ToolbarPositionChangedCopyWithImpl;
@useResult
$Res call({
 ToolbarPosition position
});




}
/// @nodoc
class __$ToolbarPositionChangedCopyWithImpl<$Res>
    implements _$ToolbarPositionChangedCopyWith<$Res> {
  __$ToolbarPositionChangedCopyWithImpl(this._self, this._then);

  final _ToolbarPositionChanged _self;
  final $Res Function(_ToolbarPositionChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_ToolbarPositionChanged(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as ToolbarPosition,
  ));
}


}

/// @nodoc


class _EnableAnimationsChanged implements SettingsEvent {
  const _EnableAnimationsChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnableAnimationsChangedCopyWith<_EnableAnimationsChanged> get copyWith => __$EnableAnimationsChangedCopyWithImpl<_EnableAnimationsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnableAnimationsChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.enableAnimationsChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$EnableAnimationsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$EnableAnimationsChangedCopyWith(_EnableAnimationsChanged value, $Res Function(_EnableAnimationsChanged) _then) = __$EnableAnimationsChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$EnableAnimationsChangedCopyWithImpl<$Res>
    implements _$EnableAnimationsChangedCopyWith<$Res> {
  __$EnableAnimationsChangedCopyWithImpl(this._self, this._then);

  final _EnableAnimationsChanged _self;
  final $Res Function(_EnableAnimationsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_EnableAnimationsChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SoundFeedbackChanged implements SettingsEvent {
  const _SoundFeedbackChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoundFeedbackChangedCopyWith<_SoundFeedbackChanged> get copyWith => __$SoundFeedbackChangedCopyWithImpl<_SoundFeedbackChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundFeedbackChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.soundFeedbackChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$SoundFeedbackChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$SoundFeedbackChangedCopyWith(_SoundFeedbackChanged value, $Res Function(_SoundFeedbackChanged) _then) = __$SoundFeedbackChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$SoundFeedbackChangedCopyWithImpl<$Res>
    implements _$SoundFeedbackChangedCopyWith<$Res> {
  __$SoundFeedbackChangedCopyWithImpl(this._self, this._then);

  final _SoundFeedbackChanged _self;
  final $Res Function(_SoundFeedbackChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_SoundFeedbackChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _LanguageChanged implements SettingsEvent {
  const _LanguageChanged(this.language);
  

 final  Language language;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageChangedCopyWith<_LanguageChanged> get copyWith => __$LanguageChangedCopyWithImpl<_LanguageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageChanged&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'SettingsEvent.languageChanged(language: $language)';
}


}

/// @nodoc
abstract mixin class _$LanguageChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$LanguageChangedCopyWith(_LanguageChanged value, $Res Function(_LanguageChanged) _then) = __$LanguageChangedCopyWithImpl;
@useResult
$Res call({
 Language language
});




}
/// @nodoc
class __$LanguageChangedCopyWithImpl<$Res>
    implements _$LanguageChangedCopyWith<$Res> {
  __$LanguageChangedCopyWithImpl(this._self, this._then);

  final _LanguageChanged _self;
  final $Res Function(_LanguageChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(_LanguageChanged(
null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as Language,
  ));
}


}

/// @nodoc


class _RegionChanged implements SettingsEvent {
  const _RegionChanged(this.region);
  

 final  Region region;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegionChangedCopyWith<_RegionChanged> get copyWith => __$RegionChangedCopyWithImpl<_RegionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegionChanged&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,region);

@override
String toString() {
  return 'SettingsEvent.regionChanged(region: $region)';
}


}

/// @nodoc
abstract mixin class _$RegionChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$RegionChangedCopyWith(_RegionChanged value, $Res Function(_RegionChanged) _then) = __$RegionChangedCopyWithImpl;
@useResult
$Res call({
 Region region
});




}
/// @nodoc
class __$RegionChangedCopyWithImpl<$Res>
    implements _$RegionChangedCopyWith<$Res> {
  __$RegionChangedCopyWithImpl(this._self, this._then);

  final _RegionChanged _self;
  final $Res Function(_RegionChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? region = null,}) {
  return _then(_RegionChanged(
null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region,
  ));
}


}

/// @nodoc


class _DateFormatChanged implements SettingsEvent {
  const _DateFormatChanged(this.format);
  

 final  DateFormat format;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateFormatChangedCopyWith<_DateFormatChanged> get copyWith => __$DateFormatChangedCopyWithImpl<_DateFormatChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateFormatChanged&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString() {
  return 'SettingsEvent.dateFormatChanged(format: $format)';
}


}

/// @nodoc
abstract mixin class _$DateFormatChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$DateFormatChangedCopyWith(_DateFormatChanged value, $Res Function(_DateFormatChanged) _then) = __$DateFormatChangedCopyWithImpl;
@useResult
$Res call({
 DateFormat format
});




}
/// @nodoc
class __$DateFormatChangedCopyWithImpl<$Res>
    implements _$DateFormatChangedCopyWith<$Res> {
  __$DateFormatChangedCopyWithImpl(this._self, this._then);

  final _DateFormatChanged _self;
  final $Res Function(_DateFormatChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(_DateFormatChanged(
null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as DateFormat,
  ));
}


}

/// @nodoc


class _DebugLoggingChanged implements SettingsEvent {
  const _DebugLoggingChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugLoggingChangedCopyWith<_DebugLoggingChanged> get copyWith => __$DebugLoggingChangedCopyWithImpl<_DebugLoggingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugLoggingChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.debugLoggingChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$DebugLoggingChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$DebugLoggingChangedCopyWith(_DebugLoggingChanged value, $Res Function(_DebugLoggingChanged) _then) = __$DebugLoggingChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$DebugLoggingChangedCopyWithImpl<$Res>
    implements _$DebugLoggingChangedCopyWith<$Res> {
  __$DebugLoggingChangedCopyWithImpl(this._self, this._then);

  final _DebugLoggingChanged _self;
  final $Res Function(_DebugLoggingChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_DebugLoggingChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _EnableDevToolsChanged implements SettingsEvent {
  const _EnableDevToolsChanged(this.enabled);
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnableDevToolsChangedCopyWith<_EnableDevToolsChanged> get copyWith => __$EnableDevToolsChangedCopyWithImpl<_EnableDevToolsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnableDevToolsChanged&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'SettingsEvent.enableDevToolsChanged(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$EnableDevToolsChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$EnableDevToolsChangedCopyWith(_EnableDevToolsChanged value, $Res Function(_EnableDevToolsChanged) _then) = __$EnableDevToolsChangedCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$EnableDevToolsChangedCopyWithImpl<$Res>
    implements _$EnableDevToolsChangedCopyWith<$Res> {
  __$EnableDevToolsChangedCopyWithImpl(this._self, this._then);

  final _EnableDevToolsChanged _self;
  final $Res Function(_EnableDevToolsChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_EnableDevToolsChanged(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _CustomJSChanged implements SettingsEvent {
  const _CustomJSChanged(this.js);
  

 final  String js;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomJSChangedCopyWith<_CustomJSChanged> get copyWith => __$CustomJSChangedCopyWithImpl<_CustomJSChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomJSChanged&&(identical(other.js, js) || other.js == js));
}


@override
int get hashCode => Object.hash(runtimeType,js);

@override
String toString() {
  return 'SettingsEvent.customJSChanged(js: $js)';
}


}

/// @nodoc
abstract mixin class _$CustomJSChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$CustomJSChangedCopyWith(_CustomJSChanged value, $Res Function(_CustomJSChanged) _then) = __$CustomJSChangedCopyWithImpl;
@useResult
$Res call({
 String js
});




}
/// @nodoc
class __$CustomJSChangedCopyWithImpl<$Res>
    implements _$CustomJSChangedCopyWith<$Res> {
  __$CustomJSChangedCopyWithImpl(this._self, this._then);

  final _CustomJSChanged _self;
  final $Res Function(_CustomJSChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? js = null,}) {
  return _then(_CustomJSChanged(
null == js ? _self.js : js // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResetToDefaults implements SettingsEvent {
  const _ResetToDefaults();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetToDefaults);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.resetToDefaults()';
}


}




/// @nodoc


class _ExportSettings implements SettingsEvent {
  const _ExportSettings(this.format);
  

 final  ExportFormat format;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExportSettingsCopyWith<_ExportSettings> get copyWith => __$ExportSettingsCopyWithImpl<_ExportSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExportSettings&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString() {
  return 'SettingsEvent.exportSettings(format: $format)';
}


}

/// @nodoc
abstract mixin class _$ExportSettingsCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ExportSettingsCopyWith(_ExportSettings value, $Res Function(_ExportSettings) _then) = __$ExportSettingsCopyWithImpl;
@useResult
$Res call({
 ExportFormat format
});




}
/// @nodoc
class __$ExportSettingsCopyWithImpl<$Res>
    implements _$ExportSettingsCopyWith<$Res> {
  __$ExportSettingsCopyWithImpl(this._self, this._then);

  final _ExportSettings _self;
  final $Res Function(_ExportSettings) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(_ExportSettings(
null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ExportFormat,
  ));
}


}

/// @nodoc


class _ImportSettings implements SettingsEvent {
  const _ImportSettings(this.filePath);
  

 final  String filePath;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportSettingsCopyWith<_ImportSettings> get copyWith => __$ImportSettingsCopyWithImpl<_ImportSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportSettings&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'SettingsEvent.importSettings(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$ImportSettingsCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ImportSettingsCopyWith(_ImportSettings value, $Res Function(_ImportSettings) _then) = __$ImportSettingsCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class __$ImportSettingsCopyWithImpl<$Res>
    implements _$ImportSettingsCopyWith<$Res> {
  __$ImportSettingsCopyWithImpl(this._self, this._then);

  final _ImportSettings _self;
  final $Res Function(_ImportSettings) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(_ImportSettings(
null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SettingsState {

 AppSettings get appSettings; String? get backupMessage; bool get isBackupLoading; String? get errorMessage;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings)&&(identical(other.backupMessage, backupMessage) || other.backupMessage == backupMessage)&&(identical(other.isBackupLoading, isBackupLoading) || other.isBackupLoading == isBackupLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings,backupMessage,isBackupLoading,errorMessage);

@override
String toString() {
  return 'SettingsState(appSettings: $appSettings, backupMessage: $backupMessage, isBackupLoading: $isBackupLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 AppSettings appSettings, String? backupMessage, bool isBackupLoading, String? errorMessage
});


$AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appSettings = null,Object? backupMessage = freezed,Object? isBackupLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,backupMessage: freezed == backupMessage ? _self.backupMessage : backupMessage // ignore: cast_nullable_to_non_nullable
as String?,isBackupLoading: null == isBackupLoading ? _self.isBackupLoading : isBackupLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppSettings appSettings,  String? backupMessage,  bool isBackupLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.appSettings,_that.backupMessage,_that.isBackupLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppSettings appSettings,  String? backupMessage,  bool isBackupLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.appSettings,_that.backupMessage,_that.isBackupLoading,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppSettings appSettings,  String? backupMessage,  bool isBackupLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.appSettings,_that.backupMessage,_that.isBackupLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({required this.appSettings, this.backupMessage = null, this.isBackupLoading = false, this.errorMessage = null});
  

@override final  AppSettings appSettings;
@override@JsonKey() final  String? backupMessage;
@override@JsonKey() final  bool isBackupLoading;
@override@JsonKey() final  String? errorMessage;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings)&&(identical(other.backupMessage, backupMessage) || other.backupMessage == backupMessage)&&(identical(other.isBackupLoading, isBackupLoading) || other.isBackupLoading == isBackupLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings,backupMessage,isBackupLoading,errorMessage);

@override
String toString() {
  return 'SettingsState(appSettings: $appSettings, backupMessage: $backupMessage, isBackupLoading: $isBackupLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 AppSettings appSettings, String? backupMessage, bool isBackupLoading, String? errorMessage
});


@override $AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appSettings = null,Object? backupMessage = freezed,Object? isBackupLoading = null,Object? errorMessage = freezed,}) {
  return _then(_SettingsState(
appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,backupMessage: freezed == backupMessage ? _self.backupMessage : backupMessage // ignore: cast_nullable_to_non_nullable
as String?,isBackupLoading: null == isBackupLoading ? _self.isBackupLoading : isBackupLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

// dart format on
