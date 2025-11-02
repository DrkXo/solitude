import 'package:freezed_annotation/freezed_annotation.dart';

import 'settings_constants.dart';

part 'portable_settings.freezed.dart';
part 'portable_settings.g.dart';

@freezed
abstract class PortableSettings with _$PortableSettings {
  const factory PortableSettings({
    required int version,
    required AppSettings appSettings,
    required DateTime exportDate,
  }) = _PortableSettings;

  factory PortableSettings.fromJson(Map<String, dynamic> json) =>
      _$PortableSettingsFromJson(json);
}

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    @Default(DisplaySettings()) DisplaySettings display,
    @Default(BehaviorSettings()) BehaviorSettings behavior,
    @Default(AccessibilitySettings()) AccessibilitySettings accessibility,
    @Default(LibrarySettings()) LibrarySettings library,
    @Default(AnnotationsSettings()) AnnotationsSettings annotations,
    @Default(UISettings()) UISettings ui,
    @Default(LocalizationSettings()) LocalizationSettings localization,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

@freezed
abstract class DisplaySettings with _$DisplaySettings {
  const factory DisplaySettings({
    @Default(FontFamily.openSans) FontFamily fontFamily,
    @Default(18.0) double fontSize,
    @Default('normal') String fontWeight,
    @Default(1.5) double lineHeight,
    @Default(0.2) double letterSpacing,
    @Default(1.2) double paragraphSpacing,
    @Default(ThemeOption.dark) ThemeOption theme,
    @Default('auto') String orientation,
    @Default(TextAlignOption.justify) TextAlignOption textAlign,
    @Default('slide') String pageTurnAnimation,
    @Default(Margins()) Margins margins,
    @Default(1.2) double headerFontSizeMultiplier,
    @Default(10.0) double headerMarginTop,
    @Default(10.0) double headerMarginBottom,
    @Default(10.0) double footerMarginTop,
    @Default(10.0) double footerMarginBottom,
  }) = _DisplaySettings;

  factory DisplaySettings.fromJson(Map<String, dynamic> json) =>
      _$DisplaySettingsFromJson(json);
}

@freezed
abstract class Margins with _$Margins {
  const factory Margins({
    @Default(20) int top,
    @Default(20) int bottom,
    @Default(15) int left,
    @Default(15) int right,
  }) = _Margins;

  factory Margins.fromJson(Map<String, dynamic> json) =>
      _$MarginsFromJson(json);
}

@freezed
abstract class BehaviorSettings with _$BehaviorSettings {
  const factory BehaviorSettings({
    @Default(TapZones()) TapZones tapZones,
    @Default(true) bool rememberLastPosition,
    @Default(AutoScroll()) AutoScroll autoScroll,
    @Default(ReadingDirection.ltr) ReadingDirection readingDirection,
    @Default(NavigationMethod.swipeHorizontal) NavigationMethod navigationMethod,
  }) = _BehaviorSettings;

  factory BehaviorSettings.fromJson(Map<String, dynamic> json) =>
      _$BehaviorSettingsFromJson(json);
}

@freezed
abstract class TapZones with _$TapZones {
  const factory TapZones({
    @Default('previousPage') String left,
    @Default('nextPage') String right,
    @Default('menuToggle') String center,
  }) = _TapZones;

  factory TapZones.fromJson(Map<String, dynamic> json) =>
      _$TapZonesFromJson(json);
}

@freezed
abstract class AutoScroll with _$AutoScroll {
  const factory AutoScroll({
    @Default(false) bool enabled,
    @Default(1.0) double speed,
  }) = _AutoScroll;

  factory AutoScroll.fromJson(Map<String, dynamic> json) =>
      _$AutoScrollFromJson(json);
}

@freezed
abstract class AccessibilitySettings with _$AccessibilitySettings {
  const factory AccessibilitySettings({
    @Default(false) bool dyslexicFont,
    @Default(false) bool highContrast,
    @Default(true) bool fontSmoothing,
    @Default(TextToSpeech()) TextToSpeech textToSpeech,
    @Default('') String customCSS,
  }) = _AccessibilitySettings;

  factory AccessibilitySettings.fromJson(Map<String, dynamic> json) =>
      _$AccessibilitySettingsFromJson(json);
}

@freezed
abstract class TextToSpeech with _$TextToSpeech {
  const factory TextToSpeech({
    @Default(false) bool enabled,
    @Default('default') String voice,
    @Default(1.0) double rate,
    @Default(1.0) double pitch,
  }) = _TextToSpeech;

  factory TextToSpeech.fromJson(Map<String, dynamic> json) =>
      _$TextToSpeechFromJson(json);
}

@freezed
abstract class LibrarySettings with _$LibrarySettings {
  const factory LibrarySettings({
    @Default(SortBy.title) SortBy sortBy,
    @Default(ViewStyle.grid) ViewStyle viewStyle,
    @Default(true) bool showCovers,
    @Default(['OpenLibrary', 'GoogleBooks']) List<String> metadataSources,
    @Default(['/books', '/downloads/ebooks']) List<String> scanPaths,
    @Default(['epub', 'pdf', 'mobi', 'cbz']) List<String> formats,
  }) = _LibrarySettings;

  factory LibrarySettings.fromJson(Map<String, dynamic> json) =>
      _$LibrarySettingsFromJson(json);
}

@freezed
abstract class AnnotationsSettings with _$AnnotationsSettings {
  const factory AnnotationsSettings({
    @Default(['#f4d03f', '#58d68d', '#5dade2']) List<String> highlightColors,
    @Default(true) bool sync,
    @Default(true) bool autoSave,
    @Default(AnnotationExportFormat.markdown) AnnotationExportFormat exportFormat,
    @Default(true) bool showSidebar,
  }) = _AnnotationsSettings;

  factory AnnotationsSettings.fromJson(Map<String, dynamic> json) =>
      _$AnnotationsSettingsFromJson(json);
}

@freezed
abstract class UISettings with _$UISettings {
  const factory UISettings({
    @Default(ToolbarPosition.bottom) ToolbarPosition toolbarPosition,
    @Default(Gestures()) Gestures gestures,
    @Default(true) bool enableAnimations,
    @Default(false) bool soundFeedback,
  }) = _UISettings;

  factory UISettings.fromJson(Map<String, dynamic> json) =>
      _$UISettingsFromJson(json);
}

@freezed
abstract class Gestures with _$Gestures {
  const factory Gestures({
    @Default('brightnessUp') String swipeUp,
    @Default('brightnessDown') String swipeDown,
    @Default('highlight') String longPress,
  }) = _Gestures;

  factory Gestures.fromJson(Map<String, dynamic> json) =>
      _$GesturesFromJson(json);
}

@freezed
abstract class LocalizationSettings with _$LocalizationSettings {
  const factory LocalizationSettings({
    @Default(Language.en) Language language,
    @Default(Region.us) Region region,
    @Default(DateFormat.ddMmYyyy) DateFormat dateFormat,
  }) = _LocalizationSettings;

  factory LocalizationSettings.fromJson(Map<String, dynamic> json) =>
      _$LocalizationSettingsFromJson(json);
}


