// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portable_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortableSettings _$PortableSettingsFromJson(Map<String, dynamic> json) =>
    _PortableSettings(
      version: (json['version'] as num).toInt(),
      appSettings: AppSettings.fromJson(
        json['appSettings'] as Map<String, dynamic>,
      ),
      exportDate: DateTime.parse(json['exportDate'] as String),
    );

Map<String, dynamic> _$PortableSettingsToJson(_PortableSettings instance) =>
    <String, dynamic>{
      'version': instance.version,
      'appSettings': instance.appSettings,
      'exportDate': instance.exportDate.toIso8601String(),
    };

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  display: json['display'] == null
      ? const DisplaySettings()
      : DisplaySettings.fromJson(json['display'] as Map<String, dynamic>),
  behavior: json['behavior'] == null
      ? const BehaviorSettings()
      : BehaviorSettings.fromJson(json['behavior'] as Map<String, dynamic>),
  accessibility: json['accessibility'] == null
      ? const AccessibilitySettings()
      : AccessibilitySettings.fromJson(
          json['accessibility'] as Map<String, dynamic>,
        ),
  library: json['library'] == null
      ? const LibrarySettings()
      : LibrarySettings.fromJson(json['library'] as Map<String, dynamic>),
  annotations: json['annotations'] == null
      ? const AnnotationsSettings()
      : AnnotationsSettings.fromJson(
          json['annotations'] as Map<String, dynamic>,
        ),
  ui: json['ui'] == null
      ? const UISettings()
      : UISettings.fromJson(json['ui'] as Map<String, dynamic>),
  localization: json['localization'] == null
      ? const LocalizationSettings()
      : LocalizationSettings.fromJson(
          json['localization'] as Map<String, dynamic>,
        ),
  developer: json['developer'] == null
      ? const DeveloperSettings()
      : DeveloperSettings.fromJson(json['developer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'display': instance.display,
      'behavior': instance.behavior,
      'accessibility': instance.accessibility,
      'library': instance.library,
      'annotations': instance.annotations,
      'ui': instance.ui,
      'localization': instance.localization,
      'developer': instance.developer,
    };

_DisplaySettings _$DisplaySettingsFromJson(Map<String, dynamic> json) =>
    _DisplaySettings(
      fontFamily: json['fontFamily'] as String? ?? 'Merriweather',
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 18.0,
      fontWeight: json['fontWeight'] as String? ?? 'normal',
      lineHeight: (json['lineHeight'] as num?)?.toDouble() ?? 1.5,
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble() ?? 0.2,
      paragraphSpacing: (json['paragraphSpacing'] as num?)?.toDouble() ?? 1.2,
      theme: json['theme'] as String? ?? 'sepia',
      customTheme: json['customTheme'] == null
          ? const CustomTheme()
          : CustomTheme.fromJson(json['customTheme'] as Map<String, dynamic>),
      pageLayout: json['pageLayout'] as String? ?? 'paged',
      orientation: json['orientation'] as String? ?? 'auto',
      textAlign: json['textAlign'] as String? ?? 'justify',
      pageTurnAnimation: json['pageTurnAnimation'] as String? ?? 'slide',
      margins: json['margins'] == null
          ? const Margins()
          : Margins.fromJson(json['margins'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DisplaySettingsToJson(_DisplaySettings instance) =>
    <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'lineHeight': instance.lineHeight,
      'letterSpacing': instance.letterSpacing,
      'paragraphSpacing': instance.paragraphSpacing,
      'theme': instance.theme,
      'customTheme': instance.customTheme,
      'pageLayout': instance.pageLayout,
      'orientation': instance.orientation,
      'textAlign': instance.textAlign,
      'pageTurnAnimation': instance.pageTurnAnimation,
      'margins': instance.margins,
    };

_CustomTheme _$CustomThemeFromJson(Map<String, dynamic> json) => _CustomTheme(
  backgroundColor: json['backgroundColor'] as String? ?? '#f4ecd8',
  textColor: json['textColor'] as String? ?? '#3b2f2f',
);

Map<String, dynamic> _$CustomThemeToJson(_CustomTheme instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
    };

_Margins _$MarginsFromJson(Map<String, dynamic> json) => _Margins(
  top: (json['top'] as num?)?.toInt() ?? 20,
  bottom: (json['bottom'] as num?)?.toInt() ?? 20,
  left: (json['left'] as num?)?.toInt() ?? 15,
  right: (json['right'] as num?)?.toInt() ?? 15,
);

Map<String, dynamic> _$MarginsToJson(_Margins instance) => <String, dynamic>{
  'top': instance.top,
  'bottom': instance.bottom,
  'left': instance.left,
  'right': instance.right,
};

_BehaviorSettings _$BehaviorSettingsFromJson(Map<String, dynamic> json) =>
    _BehaviorSettings(
      tapZones: json['tapZones'] == null
          ? const TapZones()
          : TapZones.fromJson(json['tapZones'] as Map<String, dynamic>),
      scrollMode: json['scrollMode'] as String? ?? 'paged',
      rememberLastPosition: json['rememberLastPosition'] as bool? ?? true,
      syncProgress: json['syncProgress'] as bool? ?? true,
      autoScroll: json['autoScroll'] == null
          ? const AutoScroll()
          : AutoScroll.fromJson(json['autoScroll'] as Map<String, dynamic>),
      readingDirection: json['readingDirection'] as String? ?? 'LTR',
    );

Map<String, dynamic> _$BehaviorSettingsToJson(_BehaviorSettings instance) =>
    <String, dynamic>{
      'tapZones': instance.tapZones,
      'scrollMode': instance.scrollMode,
      'rememberLastPosition': instance.rememberLastPosition,
      'syncProgress': instance.syncProgress,
      'autoScroll': instance.autoScroll,
      'readingDirection': instance.readingDirection,
    };

_TapZones _$TapZonesFromJson(Map<String, dynamic> json) => _TapZones(
  left: json['left'] as String? ?? 'previousPage',
  right: json['right'] as String? ?? 'nextPage',
  center: json['center'] as String? ?? 'menuToggle',
);

Map<String, dynamic> _$TapZonesToJson(_TapZones instance) => <String, dynamic>{
  'left': instance.left,
  'right': instance.right,
  'center': instance.center,
};

_AutoScroll _$AutoScrollFromJson(Map<String, dynamic> json) => _AutoScroll(
  enabled: json['enabled'] as bool? ?? false,
  speed: (json['speed'] as num?)?.toDouble() ?? 1.0,
);

Map<String, dynamic> _$AutoScrollToJson(_AutoScroll instance) =>
    <String, dynamic>{'enabled': instance.enabled, 'speed': instance.speed};

_AccessibilitySettings _$AccessibilitySettingsFromJson(
  Map<String, dynamic> json,
) => _AccessibilitySettings(
  dyslexicFont: json['dyslexicFont'] as bool? ?? false,
  highContrast: json['highContrast'] as bool? ?? false,
  fontSmoothing: json['fontSmoothing'] as bool? ?? true,
  immersiveMode: json['immersiveMode'] as bool? ?? true,
  textToSpeech: json['textToSpeech'] == null
      ? const TextToSpeech()
      : TextToSpeech.fromJson(json['textToSpeech'] as Map<String, dynamic>),
  customCSS: json['customCSS'] as String? ?? '',
);

Map<String, dynamic> _$AccessibilitySettingsToJson(
  _AccessibilitySettings instance,
) => <String, dynamic>{
  'dyslexicFont': instance.dyslexicFont,
  'highContrast': instance.highContrast,
  'fontSmoothing': instance.fontSmoothing,
  'immersiveMode': instance.immersiveMode,
  'textToSpeech': instance.textToSpeech,
  'customCSS': instance.customCSS,
};

_TextToSpeech _$TextToSpeechFromJson(Map<String, dynamic> json) =>
    _TextToSpeech(
      enabled: json['enabled'] as bool? ?? false,
      voice: json['voice'] as String? ?? 'default',
      rate: (json['rate'] as num?)?.toDouble() ?? 1.0,
      pitch: (json['pitch'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$TextToSpeechToJson(_TextToSpeech instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'voice': instance.voice,
      'rate': instance.rate,
      'pitch': instance.pitch,
    };

_LibrarySettings _$LibrarySettingsFromJson(
  Map<String, dynamic> json,
) => _LibrarySettings(
  sortBy: json['sortBy'] as String? ?? 'title',
  viewStyle: json['viewStyle'] as String? ?? 'grid',
  showCovers: json['showCovers'] as bool? ?? true,
  metadataSources:
      (json['metadataSources'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const ['OpenLibrary', 'GoogleBooks'],
  scanPaths:
      (json['scanPaths'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const ['/books', '/downloads/ebooks'],
  formats:
      (json['formats'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const ['epub', 'pdf', 'mobi', 'cbz'],
);

Map<String, dynamic> _$LibrarySettingsToJson(_LibrarySettings instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'viewStyle': instance.viewStyle,
      'showCovers': instance.showCovers,
      'metadataSources': instance.metadataSources,
      'scanPaths': instance.scanPaths,
      'formats': instance.formats,
    };

_AnnotationsSettings _$AnnotationsSettingsFromJson(Map<String, dynamic> json) =>
    _AnnotationsSettings(
      highlightColors:
          (json['highlightColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['#f4d03f', '#58d68d', '#5dade2'],
      sync: json['sync'] as bool? ?? true,
      autoSave: json['autoSave'] as bool? ?? true,
      exportFormat: json['exportFormat'] as String? ?? 'markdown',
      showSidebar: json['showSidebar'] as bool? ?? true,
    );

Map<String, dynamic> _$AnnotationsSettingsToJson(
  _AnnotationsSettings instance,
) => <String, dynamic>{
  'highlightColors': instance.highlightColors,
  'sync': instance.sync,
  'autoSave': instance.autoSave,
  'exportFormat': instance.exportFormat,
  'showSidebar': instance.showSidebar,
};

_UISettings _$UISettingsFromJson(Map<String, dynamic> json) => _UISettings(
  toolbarPosition: json['toolbarPosition'] as String? ?? 'bottom',
  gestures: json['gestures'] == null
      ? const Gestures()
      : Gestures.fromJson(json['gestures'] as Map<String, dynamic>),
  enableAnimations: json['enableAnimations'] as bool? ?? true,
  soundFeedback: json['soundFeedback'] as bool? ?? false,
);

Map<String, dynamic> _$UISettingsToJson(_UISettings instance) =>
    <String, dynamic>{
      'toolbarPosition': instance.toolbarPosition,
      'gestures': instance.gestures,
      'enableAnimations': instance.enableAnimations,
      'soundFeedback': instance.soundFeedback,
    };

_Gestures _$GesturesFromJson(Map<String, dynamic> json) => _Gestures(
  swipeUp: json['swipeUp'] as String? ?? 'brightnessUp',
  swipeDown: json['swipeDown'] as String? ?? 'brightnessDown',
  longPress: json['longPress'] as String? ?? 'highlight',
);

Map<String, dynamic> _$GesturesToJson(_Gestures instance) => <String, dynamic>{
  'swipeUp': instance.swipeUp,
  'swipeDown': instance.swipeDown,
  'longPress': instance.longPress,
};

_LocalizationSettings _$LocalizationSettingsFromJson(
  Map<String, dynamic> json,
) => _LocalizationSettings(
  language: json['language'] as String? ?? 'en',
  region: json['region'] as String? ?? 'US',
  dateFormat: json['dateFormat'] as String? ?? 'DD/MM/YYYY',
);

Map<String, dynamic> _$LocalizationSettingsToJson(
  _LocalizationSettings instance,
) => <String, dynamic>{
  'language': instance.language,
  'region': instance.region,
  'dateFormat': instance.dateFormat,
};

_DeveloperSettings _$DeveloperSettingsFromJson(Map<String, dynamic> json) =>
    _DeveloperSettings(
      debugLogging: json['debugLogging'] as bool? ?? false,
      enableDevTools: json['enableDevTools'] as bool? ?? false,
      customJS: json['customJS'] as String? ?? '',
    );

Map<String, dynamic> _$DeveloperSettingsToJson(_DeveloperSettings instance) =>
    <String, dynamic>{
      'debugLogging': instance.debugLogging,
      'enableDevTools': instance.enableDevTools,
      'customJS': instance.customJS,
    };
