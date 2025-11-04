/// Constants for settings options to ensure maintainability and avoid hardcoded values in UI.
library;

import 'package:json_annotation/json_annotation.dart';

/// Font size constraints
const double minFontSize = 8.0;
const double maxFontSize = 32.0;

/// Font families
enum FontFamily {
  @JsonValue('Merriweather')
  merriweather('Merriweather'),
  @JsonValue('Arial')
  arial('Arial'),
  @JsonValue('Times New Roman')
  timesNewRoman('Times New Roman'),
  @JsonValue('Georgia')
  georgia('Georgia'),
  @JsonValue('Open Sans')
  openSans('Open Sans');

  const FontFamily(this.displayName);
  final String displayName;
}

/// Text alignment options
enum TextAlignOption {
  @JsonValue('left')
  left('Left'),
  @JsonValue('center')
  center('Center'),
  @JsonValue('right')
  right('Right'),
  @JsonValue('justify')
  justify('Justify');

  const TextAlignOption(this.displayName);
  final String displayName;
}

/// Themes
enum ThemeOption {
  light('light'),
  dark('dark'),
  device('system');

  const ThemeOption(this.value);
  final String value;
}

/// Page layouts
enum PageLayout {
  paged('paged'),
  scroll('scroll');

  const PageLayout(this.value);
  final String value;
}

/// Reading directions
enum ReadingDirection {
  @JsonValue('LTR')
  ltr('LTR'),
  @JsonValue('RTL')
  rtl('RTL');

  const ReadingDirection(this.value);
  final String value;
}

/// Scroll modes
enum ScrollMode {
  paged('paged'),
  continuous('continuous');

  const ScrollMode(this.value);
  final String value;
}

/// Navigation methods for reader
enum NavigationMethod {
  swipeVertical('Swipe Vertical'),
  swipeHorizontal('Swipe Horizontal'),
  tap('Tap (Left and Right)');

  const NavigationMethod(this.value);
  final String value;
}

/// Sort options
enum SortBy {
  title('title'),
  author('author'),
  date('date'),
  size('size');

  const SortBy(this.value);
  final String value;
}

/// View styles
enum ViewStyle {
  grid('grid'),
  list('list');

  const ViewStyle(this.value);
  final String value;
}

/// Export formats for annotations
enum AnnotationExportFormat {
  html('html'),
  json('json');

  const AnnotationExportFormat(this.value);
  final String value;

  String get extension => value;
}

/// Toolbar positions
enum ToolbarPosition {
  bottom('bottom'),
  top('top');

  const ToolbarPosition(this.value);
  final String value;
}

/// Languages
enum Language {
  en('en'),
  es('es'),
  fr('fr'),
  de('de');

  const Language(this.value);
  final String value;
}

/// Regions
enum Region {
  @JsonValue('US')
  us('US'),
  @JsonValue('UK')
  uk('UK'),
  @JsonValue('ES')
  es('ES'),
  @JsonValue('FR')
  fr('FR'),
  @JsonValue('DE')
  de('DE');

  const Region(this.value);
  final String value;
}

/// Date formats
enum DateFormat {
  ddMmYyyy('DD/MM/YYYY'),
  mmDdYyyy('MM/DD/YYYY'),
  yyyyMmDd('YYYY-MM-DD');

  const DateFormat(this.value);
  final String value;
}

/// HTML rendering modes
enum HtmlRenderingMode {
  @JsonValue('original')
  original('Original HTML Styling'),
  @JsonValue('custom')
  custom('Custom Styling');

  const HtmlRenderingMode(this.displayName);
  final String displayName;
}
