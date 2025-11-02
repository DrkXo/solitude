// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portable_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortableSettings {

 int get version; AppSettings get appSettings; DateTime get exportDate;
/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortableSettingsCopyWith<PortableSettings> get copyWith => _$PortableSettingsCopyWithImpl<PortableSettings>(this as PortableSettings, _$identity);

  /// Serializes this PortableSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortableSettings&&(identical(other.version, version) || other.version == version)&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings)&&(identical(other.exportDate, exportDate) || other.exportDate == exportDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,appSettings,exportDate);

@override
String toString() {
  return 'PortableSettings(version: $version, appSettings: $appSettings, exportDate: $exportDate)';
}


}

/// @nodoc
abstract mixin class $PortableSettingsCopyWith<$Res>  {
  factory $PortableSettingsCopyWith(PortableSettings value, $Res Function(PortableSettings) _then) = _$PortableSettingsCopyWithImpl;
@useResult
$Res call({
 int version, AppSettings appSettings, DateTime exportDate
});


$AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class _$PortableSettingsCopyWithImpl<$Res>
    implements $PortableSettingsCopyWith<$Res> {
  _$PortableSettingsCopyWithImpl(this._self, this._then);

  final PortableSettings _self;
  final $Res Function(PortableSettings) _then;

/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? appSettings = null,Object? exportDate = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,exportDate: null == exportDate ? _self.exportDate : exportDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortableSettings].
extension PortableSettingsPatterns on PortableSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortableSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortableSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortableSettings value)  $default,){
final _that = this;
switch (_that) {
case _PortableSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortableSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PortableSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int version,  AppSettings appSettings,  DateTime exportDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortableSettings() when $default != null:
return $default(_that.version,_that.appSettings,_that.exportDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int version,  AppSettings appSettings,  DateTime exportDate)  $default,) {final _that = this;
switch (_that) {
case _PortableSettings():
return $default(_that.version,_that.appSettings,_that.exportDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int version,  AppSettings appSettings,  DateTime exportDate)?  $default,) {final _that = this;
switch (_that) {
case _PortableSettings() when $default != null:
return $default(_that.version,_that.appSettings,_that.exportDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortableSettings implements PortableSettings {
  const _PortableSettings({required this.version, required this.appSettings, required this.exportDate});
  factory _PortableSettings.fromJson(Map<String, dynamic> json) => _$PortableSettingsFromJson(json);

@override final  int version;
@override final  AppSettings appSettings;
@override final  DateTime exportDate;

/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortableSettingsCopyWith<_PortableSettings> get copyWith => __$PortableSettingsCopyWithImpl<_PortableSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortableSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortableSettings&&(identical(other.version, version) || other.version == version)&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings)&&(identical(other.exportDate, exportDate) || other.exportDate == exportDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,appSettings,exportDate);

@override
String toString() {
  return 'PortableSettings(version: $version, appSettings: $appSettings, exportDate: $exportDate)';
}


}

/// @nodoc
abstract mixin class _$PortableSettingsCopyWith<$Res> implements $PortableSettingsCopyWith<$Res> {
  factory _$PortableSettingsCopyWith(_PortableSettings value, $Res Function(_PortableSettings) _then) = __$PortableSettingsCopyWithImpl;
@override @useResult
$Res call({
 int version, AppSettings appSettings, DateTime exportDate
});


@override $AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class __$PortableSettingsCopyWithImpl<$Res>
    implements _$PortableSettingsCopyWith<$Res> {
  __$PortableSettingsCopyWithImpl(this._self, this._then);

  final _PortableSettings _self;
  final $Res Function(_PortableSettings) _then;

/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? appSettings = null,Object? exportDate = null,}) {
  return _then(_PortableSettings(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,exportDate: null == exportDate ? _self.exportDate : exportDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of PortableSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// @nodoc
mixin _$AppSettings {

 DisplaySettings get display; BehaviorSettings get behavior; AccessibilitySettings get accessibility; LibrarySettings get library; AnnotationsSettings get annotations; UISettings get ui; LocalizationSettings get localization;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.display, display) || other.display == display)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.accessibility, accessibility) || other.accessibility == accessibility)&&(identical(other.library, library) || other.library == library)&&(identical(other.annotations, annotations) || other.annotations == annotations)&&(identical(other.ui, ui) || other.ui == ui)&&(identical(other.localization, localization) || other.localization == localization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,display,behavior,accessibility,library,annotations,ui,localization);

@override
String toString() {
  return 'AppSettings(display: $display, behavior: $behavior, accessibility: $accessibility, library: $library, annotations: $annotations, ui: $ui, localization: $localization)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 DisplaySettings display, BehaviorSettings behavior, AccessibilitySettings accessibility, LibrarySettings library, AnnotationsSettings annotations, UISettings ui, LocalizationSettings localization
});


$DisplaySettingsCopyWith<$Res> get display;$BehaviorSettingsCopyWith<$Res> get behavior;$AccessibilitySettingsCopyWith<$Res> get accessibility;$LibrarySettingsCopyWith<$Res> get library;$AnnotationsSettingsCopyWith<$Res> get annotations;$UISettingsCopyWith<$Res> get ui;$LocalizationSettingsCopyWith<$Res> get localization;

}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? display = null,Object? behavior = null,Object? accessibility = null,Object? library = null,Object? annotations = null,Object? ui = null,Object? localization = null,}) {
  return _then(_self.copyWith(
display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as DisplaySettings,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as BehaviorSettings,accessibility: null == accessibility ? _self.accessibility : accessibility // ignore: cast_nullable_to_non_nullable
as AccessibilitySettings,library: null == library ? _self.library : library // ignore: cast_nullable_to_non_nullable
as LibrarySettings,annotations: null == annotations ? _self.annotations : annotations // ignore: cast_nullable_to_non_nullable
as AnnotationsSettings,ui: null == ui ? _self.ui : ui // ignore: cast_nullable_to_non_nullable
as UISettings,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as LocalizationSettings,
  ));
}
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplaySettingsCopyWith<$Res> get display {
  
  return $DisplaySettingsCopyWith<$Res>(_self.display, (value) {
    return _then(_self.copyWith(display: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorSettingsCopyWith<$Res> get behavior {
  
  return $BehaviorSettingsCopyWith<$Res>(_self.behavior, (value) {
    return _then(_self.copyWith(behavior: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessibilitySettingsCopyWith<$Res> get accessibility {
  
  return $AccessibilitySettingsCopyWith<$Res>(_self.accessibility, (value) {
    return _then(_self.copyWith(accessibility: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibrarySettingsCopyWith<$Res> get library {
  
  return $LibrarySettingsCopyWith<$Res>(_self.library, (value) {
    return _then(_self.copyWith(library: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnotationsSettingsCopyWith<$Res> get annotations {
  
  return $AnnotationsSettingsCopyWith<$Res>(_self.annotations, (value) {
    return _then(_self.copyWith(annotations: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UISettingsCopyWith<$Res> get ui {
  
  return $UISettingsCopyWith<$Res>(_self.ui, (value) {
    return _then(_self.copyWith(ui: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizationSettingsCopyWith<$Res> get localization {
  
  return $LocalizationSettingsCopyWith<$Res>(_self.localization, (value) {
    return _then(_self.copyWith(localization: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppSettings].
extension AppSettingsPatterns on AppSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettings value)  $default,){
final _that = this;
switch (_that) {
case _AppSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DisplaySettings display,  BehaviorSettings behavior,  AccessibilitySettings accessibility,  LibrarySettings library,  AnnotationsSettings annotations,  UISettings ui,  LocalizationSettings localization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.display,_that.behavior,_that.accessibility,_that.library,_that.annotations,_that.ui,_that.localization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DisplaySettings display,  BehaviorSettings behavior,  AccessibilitySettings accessibility,  LibrarySettings library,  AnnotationsSettings annotations,  UISettings ui,  LocalizationSettings localization)  $default,) {final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that.display,_that.behavior,_that.accessibility,_that.library,_that.annotations,_that.ui,_that.localization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DisplaySettings display,  BehaviorSettings behavior,  AccessibilitySettings accessibility,  LibrarySettings library,  AnnotationsSettings annotations,  UISettings ui,  LocalizationSettings localization)?  $default,) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.display,_that.behavior,_that.accessibility,_that.library,_that.annotations,_that.ui,_that.localization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppSettings implements AppSettings {
  const _AppSettings({this.display = const DisplaySettings(), this.behavior = const BehaviorSettings(), this.accessibility = const AccessibilitySettings(), this.library = const LibrarySettings(), this.annotations = const AnnotationsSettings(), this.ui = const UISettings(), this.localization = const LocalizationSettings()});
  factory _AppSettings.fromJson(Map<String, dynamic> json) => _$AppSettingsFromJson(json);

@override@JsonKey() final  DisplaySettings display;
@override@JsonKey() final  BehaviorSettings behavior;
@override@JsonKey() final  AccessibilitySettings accessibility;
@override@JsonKey() final  LibrarySettings library;
@override@JsonKey() final  AnnotationsSettings annotations;
@override@JsonKey() final  UISettings ui;
@override@JsonKey() final  LocalizationSettings localization;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.display, display) || other.display == display)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.accessibility, accessibility) || other.accessibility == accessibility)&&(identical(other.library, library) || other.library == library)&&(identical(other.annotations, annotations) || other.annotations == annotations)&&(identical(other.ui, ui) || other.ui == ui)&&(identical(other.localization, localization) || other.localization == localization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,display,behavior,accessibility,library,annotations,ui,localization);

@override
String toString() {
  return 'AppSettings(display: $display, behavior: $behavior, accessibility: $accessibility, library: $library, annotations: $annotations, ui: $ui, localization: $localization)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 DisplaySettings display, BehaviorSettings behavior, AccessibilitySettings accessibility, LibrarySettings library, AnnotationsSettings annotations, UISettings ui, LocalizationSettings localization
});


@override $DisplaySettingsCopyWith<$Res> get display;@override $BehaviorSettingsCopyWith<$Res> get behavior;@override $AccessibilitySettingsCopyWith<$Res> get accessibility;@override $LibrarySettingsCopyWith<$Res> get library;@override $AnnotationsSettingsCopyWith<$Res> get annotations;@override $UISettingsCopyWith<$Res> get ui;@override $LocalizationSettingsCopyWith<$Res> get localization;

}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? display = null,Object? behavior = null,Object? accessibility = null,Object? library = null,Object? annotations = null,Object? ui = null,Object? localization = null,}) {
  return _then(_AppSettings(
display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as DisplaySettings,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as BehaviorSettings,accessibility: null == accessibility ? _self.accessibility : accessibility // ignore: cast_nullable_to_non_nullable
as AccessibilitySettings,library: null == library ? _self.library : library // ignore: cast_nullable_to_non_nullable
as LibrarySettings,annotations: null == annotations ? _self.annotations : annotations // ignore: cast_nullable_to_non_nullable
as AnnotationsSettings,ui: null == ui ? _self.ui : ui // ignore: cast_nullable_to_non_nullable
as UISettings,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as LocalizationSettings,
  ));
}

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplaySettingsCopyWith<$Res> get display {
  
  return $DisplaySettingsCopyWith<$Res>(_self.display, (value) {
    return _then(_self.copyWith(display: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorSettingsCopyWith<$Res> get behavior {
  
  return $BehaviorSettingsCopyWith<$Res>(_self.behavior, (value) {
    return _then(_self.copyWith(behavior: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessibilitySettingsCopyWith<$Res> get accessibility {
  
  return $AccessibilitySettingsCopyWith<$Res>(_self.accessibility, (value) {
    return _then(_self.copyWith(accessibility: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibrarySettingsCopyWith<$Res> get library {
  
  return $LibrarySettingsCopyWith<$Res>(_self.library, (value) {
    return _then(_self.copyWith(library: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnotationsSettingsCopyWith<$Res> get annotations {
  
  return $AnnotationsSettingsCopyWith<$Res>(_self.annotations, (value) {
    return _then(_self.copyWith(annotations: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UISettingsCopyWith<$Res> get ui {
  
  return $UISettingsCopyWith<$Res>(_self.ui, (value) {
    return _then(_self.copyWith(ui: value));
  });
}/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizationSettingsCopyWith<$Res> get localization {
  
  return $LocalizationSettingsCopyWith<$Res>(_self.localization, (value) {
    return _then(_self.copyWith(localization: value));
  });
}
}


/// @nodoc
mixin _$DisplaySettings {

 FontFamily get fontFamily; double get fontSize; String get fontWeight; double get lineHeight; double get letterSpacing; double get paragraphSpacing; ThemeOption get theme; String get orientation; TextAlignOption get textAlign; String get pageTurnAnimation; Margins get margins; double get headerFontSizeMultiplier; double get headerMarginTop; double get headerMarginBottom; double get footerMarginTop; double get footerMarginBottom;
/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplaySettingsCopyWith<DisplaySettings> get copyWith => _$DisplaySettingsCopyWithImpl<DisplaySettings>(this as DisplaySettings, _$identity);

  /// Serializes this DisplaySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplaySettings&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontWeight, fontWeight) || other.fontWeight == fontWeight)&&(identical(other.lineHeight, lineHeight) || other.lineHeight == lineHeight)&&(identical(other.letterSpacing, letterSpacing) || other.letterSpacing == letterSpacing)&&(identical(other.paragraphSpacing, paragraphSpacing) || other.paragraphSpacing == paragraphSpacing)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.textAlign, textAlign) || other.textAlign == textAlign)&&(identical(other.pageTurnAnimation, pageTurnAnimation) || other.pageTurnAnimation == pageTurnAnimation)&&(identical(other.margins, margins) || other.margins == margins)&&(identical(other.headerFontSizeMultiplier, headerFontSizeMultiplier) || other.headerFontSizeMultiplier == headerFontSizeMultiplier)&&(identical(other.headerMarginTop, headerMarginTop) || other.headerMarginTop == headerMarginTop)&&(identical(other.headerMarginBottom, headerMarginBottom) || other.headerMarginBottom == headerMarginBottom)&&(identical(other.footerMarginTop, footerMarginTop) || other.footerMarginTop == footerMarginTop)&&(identical(other.footerMarginBottom, footerMarginBottom) || other.footerMarginBottom == footerMarginBottom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontFamily,fontSize,fontWeight,lineHeight,letterSpacing,paragraphSpacing,theme,orientation,textAlign,pageTurnAnimation,margins,headerFontSizeMultiplier,headerMarginTop,headerMarginBottom,footerMarginTop,footerMarginBottom);

@override
String toString() {
  return 'DisplaySettings(fontFamily: $fontFamily, fontSize: $fontSize, fontWeight: $fontWeight, lineHeight: $lineHeight, letterSpacing: $letterSpacing, paragraphSpacing: $paragraphSpacing, theme: $theme, orientation: $orientation, textAlign: $textAlign, pageTurnAnimation: $pageTurnAnimation, margins: $margins, headerFontSizeMultiplier: $headerFontSizeMultiplier, headerMarginTop: $headerMarginTop, headerMarginBottom: $headerMarginBottom, footerMarginTop: $footerMarginTop, footerMarginBottom: $footerMarginBottom)';
}


}

/// @nodoc
abstract mixin class $DisplaySettingsCopyWith<$Res>  {
  factory $DisplaySettingsCopyWith(DisplaySettings value, $Res Function(DisplaySettings) _then) = _$DisplaySettingsCopyWithImpl;
@useResult
$Res call({
 FontFamily fontFamily, double fontSize, String fontWeight, double lineHeight, double letterSpacing, double paragraphSpacing, ThemeOption theme, String orientation, TextAlignOption textAlign, String pageTurnAnimation, Margins margins, double headerFontSizeMultiplier, double headerMarginTop, double headerMarginBottom, double footerMarginTop, double footerMarginBottom
});


$MarginsCopyWith<$Res> get margins;

}
/// @nodoc
class _$DisplaySettingsCopyWithImpl<$Res>
    implements $DisplaySettingsCopyWith<$Res> {
  _$DisplaySettingsCopyWithImpl(this._self, this._then);

  final DisplaySettings _self;
  final $Res Function(DisplaySettings) _then;

/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fontFamily = null,Object? fontSize = null,Object? fontWeight = null,Object? lineHeight = null,Object? letterSpacing = null,Object? paragraphSpacing = null,Object? theme = null,Object? orientation = null,Object? textAlign = null,Object? pageTurnAnimation = null,Object? margins = null,Object? headerFontSizeMultiplier = null,Object? headerMarginTop = null,Object? headerMarginBottom = null,Object? footerMarginTop = null,Object? footerMarginBottom = null,}) {
  return _then(_self.copyWith(
fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as FontFamily,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,fontWeight: null == fontWeight ? _self.fontWeight : fontWeight // ignore: cast_nullable_to_non_nullable
as String,lineHeight: null == lineHeight ? _self.lineHeight : lineHeight // ignore: cast_nullable_to_non_nullable
as double,letterSpacing: null == letterSpacing ? _self.letterSpacing : letterSpacing // ignore: cast_nullable_to_non_nullable
as double,paragraphSpacing: null == paragraphSpacing ? _self.paragraphSpacing : paragraphSpacing // ignore: cast_nullable_to_non_nullable
as double,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeOption,orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,textAlign: null == textAlign ? _self.textAlign : textAlign // ignore: cast_nullable_to_non_nullable
as TextAlignOption,pageTurnAnimation: null == pageTurnAnimation ? _self.pageTurnAnimation : pageTurnAnimation // ignore: cast_nullable_to_non_nullable
as String,margins: null == margins ? _self.margins : margins // ignore: cast_nullable_to_non_nullable
as Margins,headerFontSizeMultiplier: null == headerFontSizeMultiplier ? _self.headerFontSizeMultiplier : headerFontSizeMultiplier // ignore: cast_nullable_to_non_nullable
as double,headerMarginTop: null == headerMarginTop ? _self.headerMarginTop : headerMarginTop // ignore: cast_nullable_to_non_nullable
as double,headerMarginBottom: null == headerMarginBottom ? _self.headerMarginBottom : headerMarginBottom // ignore: cast_nullable_to_non_nullable
as double,footerMarginTop: null == footerMarginTop ? _self.footerMarginTop : footerMarginTop // ignore: cast_nullable_to_non_nullable
as double,footerMarginBottom: null == footerMarginBottom ? _self.footerMarginBottom : footerMarginBottom // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarginsCopyWith<$Res> get margins {
  
  return $MarginsCopyWith<$Res>(_self.margins, (value) {
    return _then(_self.copyWith(margins: value));
  });
}
}


/// Adds pattern-matching-related methods to [DisplaySettings].
extension DisplaySettingsPatterns on DisplaySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisplaySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplaySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisplaySettings value)  $default,){
final _that = this;
switch (_that) {
case _DisplaySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisplaySettings value)?  $default,){
final _that = this;
switch (_that) {
case _DisplaySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FontFamily fontFamily,  double fontSize,  String fontWeight,  double lineHeight,  double letterSpacing,  double paragraphSpacing,  ThemeOption theme,  String orientation,  TextAlignOption textAlign,  String pageTurnAnimation,  Margins margins,  double headerFontSizeMultiplier,  double headerMarginTop,  double headerMarginBottom,  double footerMarginTop,  double footerMarginBottom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplaySettings() when $default != null:
return $default(_that.fontFamily,_that.fontSize,_that.fontWeight,_that.lineHeight,_that.letterSpacing,_that.paragraphSpacing,_that.theme,_that.orientation,_that.textAlign,_that.pageTurnAnimation,_that.margins,_that.headerFontSizeMultiplier,_that.headerMarginTop,_that.headerMarginBottom,_that.footerMarginTop,_that.footerMarginBottom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FontFamily fontFamily,  double fontSize,  String fontWeight,  double lineHeight,  double letterSpacing,  double paragraphSpacing,  ThemeOption theme,  String orientation,  TextAlignOption textAlign,  String pageTurnAnimation,  Margins margins,  double headerFontSizeMultiplier,  double headerMarginTop,  double headerMarginBottom,  double footerMarginTop,  double footerMarginBottom)  $default,) {final _that = this;
switch (_that) {
case _DisplaySettings():
return $default(_that.fontFamily,_that.fontSize,_that.fontWeight,_that.lineHeight,_that.letterSpacing,_that.paragraphSpacing,_that.theme,_that.orientation,_that.textAlign,_that.pageTurnAnimation,_that.margins,_that.headerFontSizeMultiplier,_that.headerMarginTop,_that.headerMarginBottom,_that.footerMarginTop,_that.footerMarginBottom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FontFamily fontFamily,  double fontSize,  String fontWeight,  double lineHeight,  double letterSpacing,  double paragraphSpacing,  ThemeOption theme,  String orientation,  TextAlignOption textAlign,  String pageTurnAnimation,  Margins margins,  double headerFontSizeMultiplier,  double headerMarginTop,  double headerMarginBottom,  double footerMarginTop,  double footerMarginBottom)?  $default,) {final _that = this;
switch (_that) {
case _DisplaySettings() when $default != null:
return $default(_that.fontFamily,_that.fontSize,_that.fontWeight,_that.lineHeight,_that.letterSpacing,_that.paragraphSpacing,_that.theme,_that.orientation,_that.textAlign,_that.pageTurnAnimation,_that.margins,_that.headerFontSizeMultiplier,_that.headerMarginTop,_that.headerMarginBottom,_that.footerMarginTop,_that.footerMarginBottom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisplaySettings implements DisplaySettings {
  const _DisplaySettings({this.fontFamily = FontFamily.openSans, this.fontSize = 18.0, this.fontWeight = 'normal', this.lineHeight = 1.5, this.letterSpacing = 0.2, this.paragraphSpacing = 1.2, this.theme = ThemeOption.dark, this.orientation = 'auto', this.textAlign = TextAlignOption.left, this.pageTurnAnimation = 'slide', this.margins = const Margins(), this.headerFontSizeMultiplier = 1.2, this.headerMarginTop = 10.0, this.headerMarginBottom = 10.0, this.footerMarginTop = 10.0, this.footerMarginBottom = 10.0});
  factory _DisplaySettings.fromJson(Map<String, dynamic> json) => _$DisplaySettingsFromJson(json);

@override@JsonKey() final  FontFamily fontFamily;
@override@JsonKey() final  double fontSize;
@override@JsonKey() final  String fontWeight;
@override@JsonKey() final  double lineHeight;
@override@JsonKey() final  double letterSpacing;
@override@JsonKey() final  double paragraphSpacing;
@override@JsonKey() final  ThemeOption theme;
@override@JsonKey() final  String orientation;
@override@JsonKey() final  TextAlignOption textAlign;
@override@JsonKey() final  String pageTurnAnimation;
@override@JsonKey() final  Margins margins;
@override@JsonKey() final  double headerFontSizeMultiplier;
@override@JsonKey() final  double headerMarginTop;
@override@JsonKey() final  double headerMarginBottom;
@override@JsonKey() final  double footerMarginTop;
@override@JsonKey() final  double footerMarginBottom;

/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplaySettingsCopyWith<_DisplaySettings> get copyWith => __$DisplaySettingsCopyWithImpl<_DisplaySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplaySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplaySettings&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontWeight, fontWeight) || other.fontWeight == fontWeight)&&(identical(other.lineHeight, lineHeight) || other.lineHeight == lineHeight)&&(identical(other.letterSpacing, letterSpacing) || other.letterSpacing == letterSpacing)&&(identical(other.paragraphSpacing, paragraphSpacing) || other.paragraphSpacing == paragraphSpacing)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.textAlign, textAlign) || other.textAlign == textAlign)&&(identical(other.pageTurnAnimation, pageTurnAnimation) || other.pageTurnAnimation == pageTurnAnimation)&&(identical(other.margins, margins) || other.margins == margins)&&(identical(other.headerFontSizeMultiplier, headerFontSizeMultiplier) || other.headerFontSizeMultiplier == headerFontSizeMultiplier)&&(identical(other.headerMarginTop, headerMarginTop) || other.headerMarginTop == headerMarginTop)&&(identical(other.headerMarginBottom, headerMarginBottom) || other.headerMarginBottom == headerMarginBottom)&&(identical(other.footerMarginTop, footerMarginTop) || other.footerMarginTop == footerMarginTop)&&(identical(other.footerMarginBottom, footerMarginBottom) || other.footerMarginBottom == footerMarginBottom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontFamily,fontSize,fontWeight,lineHeight,letterSpacing,paragraphSpacing,theme,orientation,textAlign,pageTurnAnimation,margins,headerFontSizeMultiplier,headerMarginTop,headerMarginBottom,footerMarginTop,footerMarginBottom);

@override
String toString() {
  return 'DisplaySettings(fontFamily: $fontFamily, fontSize: $fontSize, fontWeight: $fontWeight, lineHeight: $lineHeight, letterSpacing: $letterSpacing, paragraphSpacing: $paragraphSpacing, theme: $theme, orientation: $orientation, textAlign: $textAlign, pageTurnAnimation: $pageTurnAnimation, margins: $margins, headerFontSizeMultiplier: $headerFontSizeMultiplier, headerMarginTop: $headerMarginTop, headerMarginBottom: $headerMarginBottom, footerMarginTop: $footerMarginTop, footerMarginBottom: $footerMarginBottom)';
}


}

/// @nodoc
abstract mixin class _$DisplaySettingsCopyWith<$Res> implements $DisplaySettingsCopyWith<$Res> {
  factory _$DisplaySettingsCopyWith(_DisplaySettings value, $Res Function(_DisplaySettings) _then) = __$DisplaySettingsCopyWithImpl;
@override @useResult
$Res call({
 FontFamily fontFamily, double fontSize, String fontWeight, double lineHeight, double letterSpacing, double paragraphSpacing, ThemeOption theme, String orientation, TextAlignOption textAlign, String pageTurnAnimation, Margins margins, double headerFontSizeMultiplier, double headerMarginTop, double headerMarginBottom, double footerMarginTop, double footerMarginBottom
});


@override $MarginsCopyWith<$Res> get margins;

}
/// @nodoc
class __$DisplaySettingsCopyWithImpl<$Res>
    implements _$DisplaySettingsCopyWith<$Res> {
  __$DisplaySettingsCopyWithImpl(this._self, this._then);

  final _DisplaySettings _self;
  final $Res Function(_DisplaySettings) _then;

/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fontFamily = null,Object? fontSize = null,Object? fontWeight = null,Object? lineHeight = null,Object? letterSpacing = null,Object? paragraphSpacing = null,Object? theme = null,Object? orientation = null,Object? textAlign = null,Object? pageTurnAnimation = null,Object? margins = null,Object? headerFontSizeMultiplier = null,Object? headerMarginTop = null,Object? headerMarginBottom = null,Object? footerMarginTop = null,Object? footerMarginBottom = null,}) {
  return _then(_DisplaySettings(
fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as FontFamily,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,fontWeight: null == fontWeight ? _self.fontWeight : fontWeight // ignore: cast_nullable_to_non_nullable
as String,lineHeight: null == lineHeight ? _self.lineHeight : lineHeight // ignore: cast_nullable_to_non_nullable
as double,letterSpacing: null == letterSpacing ? _self.letterSpacing : letterSpacing // ignore: cast_nullable_to_non_nullable
as double,paragraphSpacing: null == paragraphSpacing ? _self.paragraphSpacing : paragraphSpacing // ignore: cast_nullable_to_non_nullable
as double,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeOption,orientation: null == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as String,textAlign: null == textAlign ? _self.textAlign : textAlign // ignore: cast_nullable_to_non_nullable
as TextAlignOption,pageTurnAnimation: null == pageTurnAnimation ? _self.pageTurnAnimation : pageTurnAnimation // ignore: cast_nullable_to_non_nullable
as String,margins: null == margins ? _self.margins : margins // ignore: cast_nullable_to_non_nullable
as Margins,headerFontSizeMultiplier: null == headerFontSizeMultiplier ? _self.headerFontSizeMultiplier : headerFontSizeMultiplier // ignore: cast_nullable_to_non_nullable
as double,headerMarginTop: null == headerMarginTop ? _self.headerMarginTop : headerMarginTop // ignore: cast_nullable_to_non_nullable
as double,headerMarginBottom: null == headerMarginBottom ? _self.headerMarginBottom : headerMarginBottom // ignore: cast_nullable_to_non_nullable
as double,footerMarginTop: null == footerMarginTop ? _self.footerMarginTop : footerMarginTop // ignore: cast_nullable_to_non_nullable
as double,footerMarginBottom: null == footerMarginBottom ? _self.footerMarginBottom : footerMarginBottom // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of DisplaySettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarginsCopyWith<$Res> get margins {
  
  return $MarginsCopyWith<$Res>(_self.margins, (value) {
    return _then(_self.copyWith(margins: value));
  });
}
}


/// @nodoc
mixin _$Margins {

 int get top; int get bottom; int get left; int get right;
/// Create a copy of Margins
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarginsCopyWith<Margins> get copyWith => _$MarginsCopyWithImpl<Margins>(this as Margins, _$identity);

  /// Serializes this Margins to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Margins&&(identical(other.top, top) || other.top == top)&&(identical(other.bottom, bottom) || other.bottom == bottom)&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,top,bottom,left,right);

@override
String toString() {
  return 'Margins(top: $top, bottom: $bottom, left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class $MarginsCopyWith<$Res>  {
  factory $MarginsCopyWith(Margins value, $Res Function(Margins) _then) = _$MarginsCopyWithImpl;
@useResult
$Res call({
 int top, int bottom, int left, int right
});




}
/// @nodoc
class _$MarginsCopyWithImpl<$Res>
    implements $MarginsCopyWith<$Res> {
  _$MarginsCopyWithImpl(this._self, this._then);

  final Margins _self;
  final $Res Function(Margins) _then;

/// Create a copy of Margins
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? top = null,Object? bottom = null,Object? left = null,Object? right = null,}) {
  return _then(_self.copyWith(
top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as int,bottom: null == bottom ? _self.bottom : bottom // ignore: cast_nullable_to_non_nullable
as int,left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as int,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Margins].
extension MarginsPatterns on Margins {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Margins value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Margins() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Margins value)  $default,){
final _that = this;
switch (_that) {
case _Margins():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Margins value)?  $default,){
final _that = this;
switch (_that) {
case _Margins() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int top,  int bottom,  int left,  int right)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Margins() when $default != null:
return $default(_that.top,_that.bottom,_that.left,_that.right);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int top,  int bottom,  int left,  int right)  $default,) {final _that = this;
switch (_that) {
case _Margins():
return $default(_that.top,_that.bottom,_that.left,_that.right);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int top,  int bottom,  int left,  int right)?  $default,) {final _that = this;
switch (_that) {
case _Margins() when $default != null:
return $default(_that.top,_that.bottom,_that.left,_that.right);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Margins implements Margins {
  const _Margins({this.top = 20, this.bottom = 20, this.left = 15, this.right = 15});
  factory _Margins.fromJson(Map<String, dynamic> json) => _$MarginsFromJson(json);

@override@JsonKey() final  int top;
@override@JsonKey() final  int bottom;
@override@JsonKey() final  int left;
@override@JsonKey() final  int right;

/// Create a copy of Margins
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarginsCopyWith<_Margins> get copyWith => __$MarginsCopyWithImpl<_Margins>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarginsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Margins&&(identical(other.top, top) || other.top == top)&&(identical(other.bottom, bottom) || other.bottom == bottom)&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,top,bottom,left,right);

@override
String toString() {
  return 'Margins(top: $top, bottom: $bottom, left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class _$MarginsCopyWith<$Res> implements $MarginsCopyWith<$Res> {
  factory _$MarginsCopyWith(_Margins value, $Res Function(_Margins) _then) = __$MarginsCopyWithImpl;
@override @useResult
$Res call({
 int top, int bottom, int left, int right
});




}
/// @nodoc
class __$MarginsCopyWithImpl<$Res>
    implements _$MarginsCopyWith<$Res> {
  __$MarginsCopyWithImpl(this._self, this._then);

  final _Margins _self;
  final $Res Function(_Margins) _then;

/// Create a copy of Margins
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? top = null,Object? bottom = null,Object? left = null,Object? right = null,}) {
  return _then(_Margins(
top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as int,bottom: null == bottom ? _self.bottom : bottom // ignore: cast_nullable_to_non_nullable
as int,left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as int,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BehaviorSettings {

 TapZones get tapZones; bool get rememberLastPosition; AutoScroll get autoScroll; ReadingDirection get readingDirection; NavigationMethod get navigationMethod;
/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorSettingsCopyWith<BehaviorSettings> get copyWith => _$BehaviorSettingsCopyWithImpl<BehaviorSettings>(this as BehaviorSettings, _$identity);

  /// Serializes this BehaviorSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorSettings&&(identical(other.tapZones, tapZones) || other.tapZones == tapZones)&&(identical(other.rememberLastPosition, rememberLastPosition) || other.rememberLastPosition == rememberLastPosition)&&(identical(other.autoScroll, autoScroll) || other.autoScroll == autoScroll)&&(identical(other.readingDirection, readingDirection) || other.readingDirection == readingDirection)&&(identical(other.navigationMethod, navigationMethod) || other.navigationMethod == navigationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tapZones,rememberLastPosition,autoScroll,readingDirection,navigationMethod);

@override
String toString() {
  return 'BehaviorSettings(tapZones: $tapZones, rememberLastPosition: $rememberLastPosition, autoScroll: $autoScroll, readingDirection: $readingDirection, navigationMethod: $navigationMethod)';
}


}

/// @nodoc
abstract mixin class $BehaviorSettingsCopyWith<$Res>  {
  factory $BehaviorSettingsCopyWith(BehaviorSettings value, $Res Function(BehaviorSettings) _then) = _$BehaviorSettingsCopyWithImpl;
@useResult
$Res call({
 TapZones tapZones, bool rememberLastPosition, AutoScroll autoScroll, ReadingDirection readingDirection, NavigationMethod navigationMethod
});


$TapZonesCopyWith<$Res> get tapZones;$AutoScrollCopyWith<$Res> get autoScroll;

}
/// @nodoc
class _$BehaviorSettingsCopyWithImpl<$Res>
    implements $BehaviorSettingsCopyWith<$Res> {
  _$BehaviorSettingsCopyWithImpl(this._self, this._then);

  final BehaviorSettings _self;
  final $Res Function(BehaviorSettings) _then;

/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tapZones = null,Object? rememberLastPosition = null,Object? autoScroll = null,Object? readingDirection = null,Object? navigationMethod = null,}) {
  return _then(_self.copyWith(
tapZones: null == tapZones ? _self.tapZones : tapZones // ignore: cast_nullable_to_non_nullable
as TapZones,rememberLastPosition: null == rememberLastPosition ? _self.rememberLastPosition : rememberLastPosition // ignore: cast_nullable_to_non_nullable
as bool,autoScroll: null == autoScroll ? _self.autoScroll : autoScroll // ignore: cast_nullable_to_non_nullable
as AutoScroll,readingDirection: null == readingDirection ? _self.readingDirection : readingDirection // ignore: cast_nullable_to_non_nullable
as ReadingDirection,navigationMethod: null == navigationMethod ? _self.navigationMethod : navigationMethod // ignore: cast_nullable_to_non_nullable
as NavigationMethod,
  ));
}
/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TapZonesCopyWith<$Res> get tapZones {
  
  return $TapZonesCopyWith<$Res>(_self.tapZones, (value) {
    return _then(_self.copyWith(tapZones: value));
  });
}/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutoScrollCopyWith<$Res> get autoScroll {
  
  return $AutoScrollCopyWith<$Res>(_self.autoScroll, (value) {
    return _then(_self.copyWith(autoScroll: value));
  });
}
}


/// Adds pattern-matching-related methods to [BehaviorSettings].
extension BehaviorSettingsPatterns on BehaviorSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BehaviorSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BehaviorSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BehaviorSettings value)  $default,){
final _that = this;
switch (_that) {
case _BehaviorSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BehaviorSettings value)?  $default,){
final _that = this;
switch (_that) {
case _BehaviorSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TapZones tapZones,  bool rememberLastPosition,  AutoScroll autoScroll,  ReadingDirection readingDirection,  NavigationMethod navigationMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BehaviorSettings() when $default != null:
return $default(_that.tapZones,_that.rememberLastPosition,_that.autoScroll,_that.readingDirection,_that.navigationMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TapZones tapZones,  bool rememberLastPosition,  AutoScroll autoScroll,  ReadingDirection readingDirection,  NavigationMethod navigationMethod)  $default,) {final _that = this;
switch (_that) {
case _BehaviorSettings():
return $default(_that.tapZones,_that.rememberLastPosition,_that.autoScroll,_that.readingDirection,_that.navigationMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TapZones tapZones,  bool rememberLastPosition,  AutoScroll autoScroll,  ReadingDirection readingDirection,  NavigationMethod navigationMethod)?  $default,) {final _that = this;
switch (_that) {
case _BehaviorSettings() when $default != null:
return $default(_that.tapZones,_that.rememberLastPosition,_that.autoScroll,_that.readingDirection,_that.navigationMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BehaviorSettings implements BehaviorSettings {
  const _BehaviorSettings({this.tapZones = const TapZones(), this.rememberLastPosition = true, this.autoScroll = const AutoScroll(), this.readingDirection = ReadingDirection.ltr, this.navigationMethod = NavigationMethod.swipeHorizontal});
  factory _BehaviorSettings.fromJson(Map<String, dynamic> json) => _$BehaviorSettingsFromJson(json);

@override@JsonKey() final  TapZones tapZones;
@override@JsonKey() final  bool rememberLastPosition;
@override@JsonKey() final  AutoScroll autoScroll;
@override@JsonKey() final  ReadingDirection readingDirection;
@override@JsonKey() final  NavigationMethod navigationMethod;

/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BehaviorSettingsCopyWith<_BehaviorSettings> get copyWith => __$BehaviorSettingsCopyWithImpl<_BehaviorSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BehaviorSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BehaviorSettings&&(identical(other.tapZones, tapZones) || other.tapZones == tapZones)&&(identical(other.rememberLastPosition, rememberLastPosition) || other.rememberLastPosition == rememberLastPosition)&&(identical(other.autoScroll, autoScroll) || other.autoScroll == autoScroll)&&(identical(other.readingDirection, readingDirection) || other.readingDirection == readingDirection)&&(identical(other.navigationMethod, navigationMethod) || other.navigationMethod == navigationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tapZones,rememberLastPosition,autoScroll,readingDirection,navigationMethod);

@override
String toString() {
  return 'BehaviorSettings(tapZones: $tapZones, rememberLastPosition: $rememberLastPosition, autoScroll: $autoScroll, readingDirection: $readingDirection, navigationMethod: $navigationMethod)';
}


}

/// @nodoc
abstract mixin class _$BehaviorSettingsCopyWith<$Res> implements $BehaviorSettingsCopyWith<$Res> {
  factory _$BehaviorSettingsCopyWith(_BehaviorSettings value, $Res Function(_BehaviorSettings) _then) = __$BehaviorSettingsCopyWithImpl;
@override @useResult
$Res call({
 TapZones tapZones, bool rememberLastPosition, AutoScroll autoScroll, ReadingDirection readingDirection, NavigationMethod navigationMethod
});


@override $TapZonesCopyWith<$Res> get tapZones;@override $AutoScrollCopyWith<$Res> get autoScroll;

}
/// @nodoc
class __$BehaviorSettingsCopyWithImpl<$Res>
    implements _$BehaviorSettingsCopyWith<$Res> {
  __$BehaviorSettingsCopyWithImpl(this._self, this._then);

  final _BehaviorSettings _self;
  final $Res Function(_BehaviorSettings) _then;

/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tapZones = null,Object? rememberLastPosition = null,Object? autoScroll = null,Object? readingDirection = null,Object? navigationMethod = null,}) {
  return _then(_BehaviorSettings(
tapZones: null == tapZones ? _self.tapZones : tapZones // ignore: cast_nullable_to_non_nullable
as TapZones,rememberLastPosition: null == rememberLastPosition ? _self.rememberLastPosition : rememberLastPosition // ignore: cast_nullable_to_non_nullable
as bool,autoScroll: null == autoScroll ? _self.autoScroll : autoScroll // ignore: cast_nullable_to_non_nullable
as AutoScroll,readingDirection: null == readingDirection ? _self.readingDirection : readingDirection // ignore: cast_nullable_to_non_nullable
as ReadingDirection,navigationMethod: null == navigationMethod ? _self.navigationMethod : navigationMethod // ignore: cast_nullable_to_non_nullable
as NavigationMethod,
  ));
}

/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TapZonesCopyWith<$Res> get tapZones {
  
  return $TapZonesCopyWith<$Res>(_self.tapZones, (value) {
    return _then(_self.copyWith(tapZones: value));
  });
}/// Create a copy of BehaviorSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutoScrollCopyWith<$Res> get autoScroll {
  
  return $AutoScrollCopyWith<$Res>(_self.autoScroll, (value) {
    return _then(_self.copyWith(autoScroll: value));
  });
}
}


/// @nodoc
mixin _$TapZones {

 String get left; String get right; String get center;
/// Create a copy of TapZones
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TapZonesCopyWith<TapZones> get copyWith => _$TapZonesCopyWithImpl<TapZones>(this as TapZones, _$identity);

  /// Serializes this TapZones to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TapZones&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right)&&(identical(other.center, center) || other.center == center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right,center);

@override
String toString() {
  return 'TapZones(left: $left, right: $right, center: $center)';
}


}

/// @nodoc
abstract mixin class $TapZonesCopyWith<$Res>  {
  factory $TapZonesCopyWith(TapZones value, $Res Function(TapZones) _then) = _$TapZonesCopyWithImpl;
@useResult
$Res call({
 String left, String right, String center
});




}
/// @nodoc
class _$TapZonesCopyWithImpl<$Res>
    implements $TapZonesCopyWith<$Res> {
  _$TapZonesCopyWithImpl(this._self, this._then);

  final TapZones _self;
  final $Res Function(TapZones) _then;

/// Create a copy of TapZones
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? right = null,Object? center = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as String,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as String,center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TapZones].
extension TapZonesPatterns on TapZones {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TapZones value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TapZones() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TapZones value)  $default,){
final _that = this;
switch (_that) {
case _TapZones():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TapZones value)?  $default,){
final _that = this;
switch (_that) {
case _TapZones() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String left,  String right,  String center)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TapZones() when $default != null:
return $default(_that.left,_that.right,_that.center);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String left,  String right,  String center)  $default,) {final _that = this;
switch (_that) {
case _TapZones():
return $default(_that.left,_that.right,_that.center);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String left,  String right,  String center)?  $default,) {final _that = this;
switch (_that) {
case _TapZones() when $default != null:
return $default(_that.left,_that.right,_that.center);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TapZones implements TapZones {
  const _TapZones({this.left = 'previousPage', this.right = 'nextPage', this.center = 'menuToggle'});
  factory _TapZones.fromJson(Map<String, dynamic> json) => _$TapZonesFromJson(json);

@override@JsonKey() final  String left;
@override@JsonKey() final  String right;
@override@JsonKey() final  String center;

/// Create a copy of TapZones
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TapZonesCopyWith<_TapZones> get copyWith => __$TapZonesCopyWithImpl<_TapZones>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TapZonesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TapZones&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right)&&(identical(other.center, center) || other.center == center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right,center);

@override
String toString() {
  return 'TapZones(left: $left, right: $right, center: $center)';
}


}

/// @nodoc
abstract mixin class _$TapZonesCopyWith<$Res> implements $TapZonesCopyWith<$Res> {
  factory _$TapZonesCopyWith(_TapZones value, $Res Function(_TapZones) _then) = __$TapZonesCopyWithImpl;
@override @useResult
$Res call({
 String left, String right, String center
});




}
/// @nodoc
class __$TapZonesCopyWithImpl<$Res>
    implements _$TapZonesCopyWith<$Res> {
  __$TapZonesCopyWithImpl(this._self, this._then);

  final _TapZones _self;
  final $Res Function(_TapZones) _then;

/// Create a copy of TapZones
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? right = null,Object? center = null,}) {
  return _then(_TapZones(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as String,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as String,center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AutoScroll {

 bool get enabled; double get speed;
/// Create a copy of AutoScroll
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutoScrollCopyWith<AutoScroll> get copyWith => _$AutoScrollCopyWithImpl<AutoScroll>(this as AutoScroll, _$identity);

  /// Serializes this AutoScroll to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutoScroll&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,speed);

@override
String toString() {
  return 'AutoScroll(enabled: $enabled, speed: $speed)';
}


}

/// @nodoc
abstract mixin class $AutoScrollCopyWith<$Res>  {
  factory $AutoScrollCopyWith(AutoScroll value, $Res Function(AutoScroll) _then) = _$AutoScrollCopyWithImpl;
@useResult
$Res call({
 bool enabled, double speed
});




}
/// @nodoc
class _$AutoScrollCopyWithImpl<$Res>
    implements $AutoScrollCopyWith<$Res> {
  _$AutoScrollCopyWithImpl(this._self, this._then);

  final AutoScroll _self;
  final $Res Function(AutoScroll) _then;

/// Create a copy of AutoScroll
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? speed = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AutoScroll].
extension AutoScrollPatterns on AutoScroll {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutoScroll value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutoScroll() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutoScroll value)  $default,){
final _that = this;
switch (_that) {
case _AutoScroll():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutoScroll value)?  $default,){
final _that = this;
switch (_that) {
case _AutoScroll() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  double speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutoScroll() when $default != null:
return $default(_that.enabled,_that.speed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  double speed)  $default,) {final _that = this;
switch (_that) {
case _AutoScroll():
return $default(_that.enabled,_that.speed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  double speed)?  $default,) {final _that = this;
switch (_that) {
case _AutoScroll() when $default != null:
return $default(_that.enabled,_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutoScroll implements AutoScroll {
  const _AutoScroll({this.enabled = false, this.speed = 1.0});
  factory _AutoScroll.fromJson(Map<String, dynamic> json) => _$AutoScrollFromJson(json);

@override@JsonKey() final  bool enabled;
@override@JsonKey() final  double speed;

/// Create a copy of AutoScroll
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutoScrollCopyWith<_AutoScroll> get copyWith => __$AutoScrollCopyWithImpl<_AutoScroll>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutoScrollToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutoScroll&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,speed);

@override
String toString() {
  return 'AutoScroll(enabled: $enabled, speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$AutoScrollCopyWith<$Res> implements $AutoScrollCopyWith<$Res> {
  factory _$AutoScrollCopyWith(_AutoScroll value, $Res Function(_AutoScroll) _then) = __$AutoScrollCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, double speed
});




}
/// @nodoc
class __$AutoScrollCopyWithImpl<$Res>
    implements _$AutoScrollCopyWith<$Res> {
  __$AutoScrollCopyWithImpl(this._self, this._then);

  final _AutoScroll _self;
  final $Res Function(_AutoScroll) _then;

/// Create a copy of AutoScroll
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? speed = null,}) {
  return _then(_AutoScroll(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AccessibilitySettings {

 bool get dyslexicFont; bool get highContrast; bool get fontSmoothing; TextToSpeech get textToSpeech; String get customCSS;
/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessibilitySettingsCopyWith<AccessibilitySettings> get copyWith => _$AccessibilitySettingsCopyWithImpl<AccessibilitySettings>(this as AccessibilitySettings, _$identity);

  /// Serializes this AccessibilitySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessibilitySettings&&(identical(other.dyslexicFont, dyslexicFont) || other.dyslexicFont == dyslexicFont)&&(identical(other.highContrast, highContrast) || other.highContrast == highContrast)&&(identical(other.fontSmoothing, fontSmoothing) || other.fontSmoothing == fontSmoothing)&&(identical(other.textToSpeech, textToSpeech) || other.textToSpeech == textToSpeech)&&(identical(other.customCSS, customCSS) || other.customCSS == customCSS));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dyslexicFont,highContrast,fontSmoothing,textToSpeech,customCSS);

@override
String toString() {
  return 'AccessibilitySettings(dyslexicFont: $dyslexicFont, highContrast: $highContrast, fontSmoothing: $fontSmoothing, textToSpeech: $textToSpeech, customCSS: $customCSS)';
}


}

/// @nodoc
abstract mixin class $AccessibilitySettingsCopyWith<$Res>  {
  factory $AccessibilitySettingsCopyWith(AccessibilitySettings value, $Res Function(AccessibilitySettings) _then) = _$AccessibilitySettingsCopyWithImpl;
@useResult
$Res call({
 bool dyslexicFont, bool highContrast, bool fontSmoothing, TextToSpeech textToSpeech, String customCSS
});


$TextToSpeechCopyWith<$Res> get textToSpeech;

}
/// @nodoc
class _$AccessibilitySettingsCopyWithImpl<$Res>
    implements $AccessibilitySettingsCopyWith<$Res> {
  _$AccessibilitySettingsCopyWithImpl(this._self, this._then);

  final AccessibilitySettings _self;
  final $Res Function(AccessibilitySettings) _then;

/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dyslexicFont = null,Object? highContrast = null,Object? fontSmoothing = null,Object? textToSpeech = null,Object? customCSS = null,}) {
  return _then(_self.copyWith(
dyslexicFont: null == dyslexicFont ? _self.dyslexicFont : dyslexicFont // ignore: cast_nullable_to_non_nullable
as bool,highContrast: null == highContrast ? _self.highContrast : highContrast // ignore: cast_nullable_to_non_nullable
as bool,fontSmoothing: null == fontSmoothing ? _self.fontSmoothing : fontSmoothing // ignore: cast_nullable_to_non_nullable
as bool,textToSpeech: null == textToSpeech ? _self.textToSpeech : textToSpeech // ignore: cast_nullable_to_non_nullable
as TextToSpeech,customCSS: null == customCSS ? _self.customCSS : customCSS // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextToSpeechCopyWith<$Res> get textToSpeech {
  
  return $TextToSpeechCopyWith<$Res>(_self.textToSpeech, (value) {
    return _then(_self.copyWith(textToSpeech: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccessibilitySettings].
extension AccessibilitySettingsPatterns on AccessibilitySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccessibilitySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccessibilitySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccessibilitySettings value)  $default,){
final _that = this;
switch (_that) {
case _AccessibilitySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccessibilitySettings value)?  $default,){
final _that = this;
switch (_that) {
case _AccessibilitySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool dyslexicFont,  bool highContrast,  bool fontSmoothing,  TextToSpeech textToSpeech,  String customCSS)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccessibilitySettings() when $default != null:
return $default(_that.dyslexicFont,_that.highContrast,_that.fontSmoothing,_that.textToSpeech,_that.customCSS);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool dyslexicFont,  bool highContrast,  bool fontSmoothing,  TextToSpeech textToSpeech,  String customCSS)  $default,) {final _that = this;
switch (_that) {
case _AccessibilitySettings():
return $default(_that.dyslexicFont,_that.highContrast,_that.fontSmoothing,_that.textToSpeech,_that.customCSS);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool dyslexicFont,  bool highContrast,  bool fontSmoothing,  TextToSpeech textToSpeech,  String customCSS)?  $default,) {final _that = this;
switch (_that) {
case _AccessibilitySettings() when $default != null:
return $default(_that.dyslexicFont,_that.highContrast,_that.fontSmoothing,_that.textToSpeech,_that.customCSS);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccessibilitySettings implements AccessibilitySettings {
  const _AccessibilitySettings({this.dyslexicFont = false, this.highContrast = false, this.fontSmoothing = true, this.textToSpeech = const TextToSpeech(), this.customCSS = ''});
  factory _AccessibilitySettings.fromJson(Map<String, dynamic> json) => _$AccessibilitySettingsFromJson(json);

@override@JsonKey() final  bool dyslexicFont;
@override@JsonKey() final  bool highContrast;
@override@JsonKey() final  bool fontSmoothing;
@override@JsonKey() final  TextToSpeech textToSpeech;
@override@JsonKey() final  String customCSS;

/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessibilitySettingsCopyWith<_AccessibilitySettings> get copyWith => __$AccessibilitySettingsCopyWithImpl<_AccessibilitySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessibilitySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessibilitySettings&&(identical(other.dyslexicFont, dyslexicFont) || other.dyslexicFont == dyslexicFont)&&(identical(other.highContrast, highContrast) || other.highContrast == highContrast)&&(identical(other.fontSmoothing, fontSmoothing) || other.fontSmoothing == fontSmoothing)&&(identical(other.textToSpeech, textToSpeech) || other.textToSpeech == textToSpeech)&&(identical(other.customCSS, customCSS) || other.customCSS == customCSS));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dyslexicFont,highContrast,fontSmoothing,textToSpeech,customCSS);

@override
String toString() {
  return 'AccessibilitySettings(dyslexicFont: $dyslexicFont, highContrast: $highContrast, fontSmoothing: $fontSmoothing, textToSpeech: $textToSpeech, customCSS: $customCSS)';
}


}

/// @nodoc
abstract mixin class _$AccessibilitySettingsCopyWith<$Res> implements $AccessibilitySettingsCopyWith<$Res> {
  factory _$AccessibilitySettingsCopyWith(_AccessibilitySettings value, $Res Function(_AccessibilitySettings) _then) = __$AccessibilitySettingsCopyWithImpl;
@override @useResult
$Res call({
 bool dyslexicFont, bool highContrast, bool fontSmoothing, TextToSpeech textToSpeech, String customCSS
});


@override $TextToSpeechCopyWith<$Res> get textToSpeech;

}
/// @nodoc
class __$AccessibilitySettingsCopyWithImpl<$Res>
    implements _$AccessibilitySettingsCopyWith<$Res> {
  __$AccessibilitySettingsCopyWithImpl(this._self, this._then);

  final _AccessibilitySettings _self;
  final $Res Function(_AccessibilitySettings) _then;

/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dyslexicFont = null,Object? highContrast = null,Object? fontSmoothing = null,Object? textToSpeech = null,Object? customCSS = null,}) {
  return _then(_AccessibilitySettings(
dyslexicFont: null == dyslexicFont ? _self.dyslexicFont : dyslexicFont // ignore: cast_nullable_to_non_nullable
as bool,highContrast: null == highContrast ? _self.highContrast : highContrast // ignore: cast_nullable_to_non_nullable
as bool,fontSmoothing: null == fontSmoothing ? _self.fontSmoothing : fontSmoothing // ignore: cast_nullable_to_non_nullable
as bool,textToSpeech: null == textToSpeech ? _self.textToSpeech : textToSpeech // ignore: cast_nullable_to_non_nullable
as TextToSpeech,customCSS: null == customCSS ? _self.customCSS : customCSS // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AccessibilitySettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextToSpeechCopyWith<$Res> get textToSpeech {
  
  return $TextToSpeechCopyWith<$Res>(_self.textToSpeech, (value) {
    return _then(_self.copyWith(textToSpeech: value));
  });
}
}


/// @nodoc
mixin _$TextToSpeech {

 bool get enabled; String get voice; double get rate; double get pitch;
/// Create a copy of TextToSpeech
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextToSpeechCopyWith<TextToSpeech> get copyWith => _$TextToSpeechCopyWithImpl<TextToSpeech>(this as TextToSpeech, _$identity);

  /// Serializes this TextToSpeech to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextToSpeech&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.pitch, pitch) || other.pitch == pitch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,voice,rate,pitch);

@override
String toString() {
  return 'TextToSpeech(enabled: $enabled, voice: $voice, rate: $rate, pitch: $pitch)';
}


}

/// @nodoc
abstract mixin class $TextToSpeechCopyWith<$Res>  {
  factory $TextToSpeechCopyWith(TextToSpeech value, $Res Function(TextToSpeech) _then) = _$TextToSpeechCopyWithImpl;
@useResult
$Res call({
 bool enabled, String voice, double rate, double pitch
});




}
/// @nodoc
class _$TextToSpeechCopyWithImpl<$Res>
    implements $TextToSpeechCopyWith<$Res> {
  _$TextToSpeechCopyWithImpl(this._self, this._then);

  final TextToSpeech _self;
  final $Res Function(TextToSpeech) _then;

/// Create a copy of TextToSpeech
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? voice = null,Object? rate = null,Object? pitch = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TextToSpeech].
extension TextToSpeechPatterns on TextToSpeech {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextToSpeech value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextToSpeech() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextToSpeech value)  $default,){
final _that = this;
switch (_that) {
case _TextToSpeech():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextToSpeech value)?  $default,){
final _that = this;
switch (_that) {
case _TextToSpeech() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  String voice,  double rate,  double pitch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextToSpeech() when $default != null:
return $default(_that.enabled,_that.voice,_that.rate,_that.pitch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  String voice,  double rate,  double pitch)  $default,) {final _that = this;
switch (_that) {
case _TextToSpeech():
return $default(_that.enabled,_that.voice,_that.rate,_that.pitch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  String voice,  double rate,  double pitch)?  $default,) {final _that = this;
switch (_that) {
case _TextToSpeech() when $default != null:
return $default(_that.enabled,_that.voice,_that.rate,_that.pitch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextToSpeech implements TextToSpeech {
  const _TextToSpeech({this.enabled = false, this.voice = 'default', this.rate = 1.0, this.pitch = 1.0});
  factory _TextToSpeech.fromJson(Map<String, dynamic> json) => _$TextToSpeechFromJson(json);

@override@JsonKey() final  bool enabled;
@override@JsonKey() final  String voice;
@override@JsonKey() final  double rate;
@override@JsonKey() final  double pitch;

/// Create a copy of TextToSpeech
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextToSpeechCopyWith<_TextToSpeech> get copyWith => __$TextToSpeechCopyWithImpl<_TextToSpeech>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextToSpeechToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextToSpeech&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.pitch, pitch) || other.pitch == pitch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,voice,rate,pitch);

@override
String toString() {
  return 'TextToSpeech(enabled: $enabled, voice: $voice, rate: $rate, pitch: $pitch)';
}


}

/// @nodoc
abstract mixin class _$TextToSpeechCopyWith<$Res> implements $TextToSpeechCopyWith<$Res> {
  factory _$TextToSpeechCopyWith(_TextToSpeech value, $Res Function(_TextToSpeech) _then) = __$TextToSpeechCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, String voice, double rate, double pitch
});




}
/// @nodoc
class __$TextToSpeechCopyWithImpl<$Res>
    implements _$TextToSpeechCopyWith<$Res> {
  __$TextToSpeechCopyWithImpl(this._self, this._then);

  final _TextToSpeech _self;
  final $Res Function(_TextToSpeech) _then;

/// Create a copy of TextToSpeech
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? voice = null,Object? rate = null,Object? pitch = null,}) {
  return _then(_TextToSpeech(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$LibrarySettings {

 SortBy get sortBy; ViewStyle get viewStyle; bool get showCovers; List<String> get metadataSources; List<String> get scanPaths; List<String> get formats;
/// Create a copy of LibrarySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibrarySettingsCopyWith<LibrarySettings> get copyWith => _$LibrarySettingsCopyWithImpl<LibrarySettings>(this as LibrarySettings, _$identity);

  /// Serializes this LibrarySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibrarySettings&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.viewStyle, viewStyle) || other.viewStyle == viewStyle)&&(identical(other.showCovers, showCovers) || other.showCovers == showCovers)&&const DeepCollectionEquality().equals(other.metadataSources, metadataSources)&&const DeepCollectionEquality().equals(other.scanPaths, scanPaths)&&const DeepCollectionEquality().equals(other.formats, formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,viewStyle,showCovers,const DeepCollectionEquality().hash(metadataSources),const DeepCollectionEquality().hash(scanPaths),const DeepCollectionEquality().hash(formats));

@override
String toString() {
  return 'LibrarySettings(sortBy: $sortBy, viewStyle: $viewStyle, showCovers: $showCovers, metadataSources: $metadataSources, scanPaths: $scanPaths, formats: $formats)';
}


}

/// @nodoc
abstract mixin class $LibrarySettingsCopyWith<$Res>  {
  factory $LibrarySettingsCopyWith(LibrarySettings value, $Res Function(LibrarySettings) _then) = _$LibrarySettingsCopyWithImpl;
@useResult
$Res call({
 SortBy sortBy, ViewStyle viewStyle, bool showCovers, List<String> metadataSources, List<String> scanPaths, List<String> formats
});




}
/// @nodoc
class _$LibrarySettingsCopyWithImpl<$Res>
    implements $LibrarySettingsCopyWith<$Res> {
  _$LibrarySettingsCopyWithImpl(this._self, this._then);

  final LibrarySettings _self;
  final $Res Function(LibrarySettings) _then;

/// Create a copy of LibrarySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortBy = null,Object? viewStyle = null,Object? showCovers = null,Object? metadataSources = null,Object? scanPaths = null,Object? formats = null,}) {
  return _then(_self.copyWith(
sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy,viewStyle: null == viewStyle ? _self.viewStyle : viewStyle // ignore: cast_nullable_to_non_nullable
as ViewStyle,showCovers: null == showCovers ? _self.showCovers : showCovers // ignore: cast_nullable_to_non_nullable
as bool,metadataSources: null == metadataSources ? _self.metadataSources : metadataSources // ignore: cast_nullable_to_non_nullable
as List<String>,scanPaths: null == scanPaths ? _self.scanPaths : scanPaths // ignore: cast_nullable_to_non_nullable
as List<String>,formats: null == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LibrarySettings].
extension LibrarySettingsPatterns on LibrarySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibrarySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibrarySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibrarySettings value)  $default,){
final _that = this;
switch (_that) {
case _LibrarySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibrarySettings value)?  $default,){
final _that = this;
switch (_that) {
case _LibrarySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SortBy sortBy,  ViewStyle viewStyle,  bool showCovers,  List<String> metadataSources,  List<String> scanPaths,  List<String> formats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibrarySettings() when $default != null:
return $default(_that.sortBy,_that.viewStyle,_that.showCovers,_that.metadataSources,_that.scanPaths,_that.formats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SortBy sortBy,  ViewStyle viewStyle,  bool showCovers,  List<String> metadataSources,  List<String> scanPaths,  List<String> formats)  $default,) {final _that = this;
switch (_that) {
case _LibrarySettings():
return $default(_that.sortBy,_that.viewStyle,_that.showCovers,_that.metadataSources,_that.scanPaths,_that.formats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SortBy sortBy,  ViewStyle viewStyle,  bool showCovers,  List<String> metadataSources,  List<String> scanPaths,  List<String> formats)?  $default,) {final _that = this;
switch (_that) {
case _LibrarySettings() when $default != null:
return $default(_that.sortBy,_that.viewStyle,_that.showCovers,_that.metadataSources,_that.scanPaths,_that.formats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibrarySettings implements LibrarySettings {
  const _LibrarySettings({this.sortBy = SortBy.title, this.viewStyle = ViewStyle.grid, this.showCovers = true, final  List<String> metadataSources = const ['OpenLibrary', 'GoogleBooks'], final  List<String> scanPaths = const ['/books', '/downloads/ebooks'], final  List<String> formats = const ['epub', 'pdf', 'mobi', 'cbz']}): _metadataSources = metadataSources,_scanPaths = scanPaths,_formats = formats;
  factory _LibrarySettings.fromJson(Map<String, dynamic> json) => _$LibrarySettingsFromJson(json);

@override@JsonKey() final  SortBy sortBy;
@override@JsonKey() final  ViewStyle viewStyle;
@override@JsonKey() final  bool showCovers;
 final  List<String> _metadataSources;
@override@JsonKey() List<String> get metadataSources {
  if (_metadataSources is EqualUnmodifiableListView) return _metadataSources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_metadataSources);
}

 final  List<String> _scanPaths;
@override@JsonKey() List<String> get scanPaths {
  if (_scanPaths is EqualUnmodifiableListView) return _scanPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scanPaths);
}

 final  List<String> _formats;
@override@JsonKey() List<String> get formats {
  if (_formats is EqualUnmodifiableListView) return _formats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_formats);
}


/// Create a copy of LibrarySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibrarySettingsCopyWith<_LibrarySettings> get copyWith => __$LibrarySettingsCopyWithImpl<_LibrarySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibrarySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibrarySettings&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.viewStyle, viewStyle) || other.viewStyle == viewStyle)&&(identical(other.showCovers, showCovers) || other.showCovers == showCovers)&&const DeepCollectionEquality().equals(other._metadataSources, _metadataSources)&&const DeepCollectionEquality().equals(other._scanPaths, _scanPaths)&&const DeepCollectionEquality().equals(other._formats, _formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,viewStyle,showCovers,const DeepCollectionEquality().hash(_metadataSources),const DeepCollectionEquality().hash(_scanPaths),const DeepCollectionEquality().hash(_formats));

@override
String toString() {
  return 'LibrarySettings(sortBy: $sortBy, viewStyle: $viewStyle, showCovers: $showCovers, metadataSources: $metadataSources, scanPaths: $scanPaths, formats: $formats)';
}


}

/// @nodoc
abstract mixin class _$LibrarySettingsCopyWith<$Res> implements $LibrarySettingsCopyWith<$Res> {
  factory _$LibrarySettingsCopyWith(_LibrarySettings value, $Res Function(_LibrarySettings) _then) = __$LibrarySettingsCopyWithImpl;
@override @useResult
$Res call({
 SortBy sortBy, ViewStyle viewStyle, bool showCovers, List<String> metadataSources, List<String> scanPaths, List<String> formats
});




}
/// @nodoc
class __$LibrarySettingsCopyWithImpl<$Res>
    implements _$LibrarySettingsCopyWith<$Res> {
  __$LibrarySettingsCopyWithImpl(this._self, this._then);

  final _LibrarySettings _self;
  final $Res Function(_LibrarySettings) _then;

/// Create a copy of LibrarySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortBy = null,Object? viewStyle = null,Object? showCovers = null,Object? metadataSources = null,Object? scanPaths = null,Object? formats = null,}) {
  return _then(_LibrarySettings(
sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy,viewStyle: null == viewStyle ? _self.viewStyle : viewStyle // ignore: cast_nullable_to_non_nullable
as ViewStyle,showCovers: null == showCovers ? _self.showCovers : showCovers // ignore: cast_nullable_to_non_nullable
as bool,metadataSources: null == metadataSources ? _self._metadataSources : metadataSources // ignore: cast_nullable_to_non_nullable
as List<String>,scanPaths: null == scanPaths ? _self._scanPaths : scanPaths // ignore: cast_nullable_to_non_nullable
as List<String>,formats: null == formats ? _self._formats : formats // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$AnnotationsSettings {

 List<String> get highlightColors; bool get sync; bool get autoSave; AnnotationExportFormat get exportFormat; bool get showSidebar;
/// Create a copy of AnnotationsSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnotationsSettingsCopyWith<AnnotationsSettings> get copyWith => _$AnnotationsSettingsCopyWithImpl<AnnotationsSettings>(this as AnnotationsSettings, _$identity);

  /// Serializes this AnnotationsSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnotationsSettings&&const DeepCollectionEquality().equals(other.highlightColors, highlightColors)&&(identical(other.sync, sync) || other.sync == sync)&&(identical(other.autoSave, autoSave) || other.autoSave == autoSave)&&(identical(other.exportFormat, exportFormat) || other.exportFormat == exportFormat)&&(identical(other.showSidebar, showSidebar) || other.showSidebar == showSidebar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(highlightColors),sync,autoSave,exportFormat,showSidebar);

@override
String toString() {
  return 'AnnotationsSettings(highlightColors: $highlightColors, sync: $sync, autoSave: $autoSave, exportFormat: $exportFormat, showSidebar: $showSidebar)';
}


}

/// @nodoc
abstract mixin class $AnnotationsSettingsCopyWith<$Res>  {
  factory $AnnotationsSettingsCopyWith(AnnotationsSettings value, $Res Function(AnnotationsSettings) _then) = _$AnnotationsSettingsCopyWithImpl;
@useResult
$Res call({
 List<String> highlightColors, bool sync, bool autoSave, AnnotationExportFormat exportFormat, bool showSidebar
});




}
/// @nodoc
class _$AnnotationsSettingsCopyWithImpl<$Res>
    implements $AnnotationsSettingsCopyWith<$Res> {
  _$AnnotationsSettingsCopyWithImpl(this._self, this._then);

  final AnnotationsSettings _self;
  final $Res Function(AnnotationsSettings) _then;

/// Create a copy of AnnotationsSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? highlightColors = null,Object? sync = null,Object? autoSave = null,Object? exportFormat = null,Object? showSidebar = null,}) {
  return _then(_self.copyWith(
highlightColors: null == highlightColors ? _self.highlightColors : highlightColors // ignore: cast_nullable_to_non_nullable
as List<String>,sync: null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as bool,autoSave: null == autoSave ? _self.autoSave : autoSave // ignore: cast_nullable_to_non_nullable
as bool,exportFormat: null == exportFormat ? _self.exportFormat : exportFormat // ignore: cast_nullable_to_non_nullable
as AnnotationExportFormat,showSidebar: null == showSidebar ? _self.showSidebar : showSidebar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AnnotationsSettings].
extension AnnotationsSettingsPatterns on AnnotationsSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnnotationsSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnnotationsSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnnotationsSettings value)  $default,){
final _that = this;
switch (_that) {
case _AnnotationsSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnnotationsSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AnnotationsSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> highlightColors,  bool sync,  bool autoSave,  AnnotationExportFormat exportFormat,  bool showSidebar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnnotationsSettings() when $default != null:
return $default(_that.highlightColors,_that.sync,_that.autoSave,_that.exportFormat,_that.showSidebar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> highlightColors,  bool sync,  bool autoSave,  AnnotationExportFormat exportFormat,  bool showSidebar)  $default,) {final _that = this;
switch (_that) {
case _AnnotationsSettings():
return $default(_that.highlightColors,_that.sync,_that.autoSave,_that.exportFormat,_that.showSidebar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> highlightColors,  bool sync,  bool autoSave,  AnnotationExportFormat exportFormat,  bool showSidebar)?  $default,) {final _that = this;
switch (_that) {
case _AnnotationsSettings() when $default != null:
return $default(_that.highlightColors,_that.sync,_that.autoSave,_that.exportFormat,_that.showSidebar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnnotationsSettings implements AnnotationsSettings {
  const _AnnotationsSettings({final  List<String> highlightColors = const ['#f4d03f', '#58d68d', '#5dade2'], this.sync = true, this.autoSave = true, this.exportFormat = AnnotationExportFormat.json, this.showSidebar = true}): _highlightColors = highlightColors;
  factory _AnnotationsSettings.fromJson(Map<String, dynamic> json) => _$AnnotationsSettingsFromJson(json);

 final  List<String> _highlightColors;
@override@JsonKey() List<String> get highlightColors {
  if (_highlightColors is EqualUnmodifiableListView) return _highlightColors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlightColors);
}

@override@JsonKey() final  bool sync;
@override@JsonKey() final  bool autoSave;
@override@JsonKey() final  AnnotationExportFormat exportFormat;
@override@JsonKey() final  bool showSidebar;

/// Create a copy of AnnotationsSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnotationsSettingsCopyWith<_AnnotationsSettings> get copyWith => __$AnnotationsSettingsCopyWithImpl<_AnnotationsSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnnotationsSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnnotationsSettings&&const DeepCollectionEquality().equals(other._highlightColors, _highlightColors)&&(identical(other.sync, sync) || other.sync == sync)&&(identical(other.autoSave, autoSave) || other.autoSave == autoSave)&&(identical(other.exportFormat, exportFormat) || other.exportFormat == exportFormat)&&(identical(other.showSidebar, showSidebar) || other.showSidebar == showSidebar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_highlightColors),sync,autoSave,exportFormat,showSidebar);

@override
String toString() {
  return 'AnnotationsSettings(highlightColors: $highlightColors, sync: $sync, autoSave: $autoSave, exportFormat: $exportFormat, showSidebar: $showSidebar)';
}


}

/// @nodoc
abstract mixin class _$AnnotationsSettingsCopyWith<$Res> implements $AnnotationsSettingsCopyWith<$Res> {
  factory _$AnnotationsSettingsCopyWith(_AnnotationsSettings value, $Res Function(_AnnotationsSettings) _then) = __$AnnotationsSettingsCopyWithImpl;
@override @useResult
$Res call({
 List<String> highlightColors, bool sync, bool autoSave, AnnotationExportFormat exportFormat, bool showSidebar
});




}
/// @nodoc
class __$AnnotationsSettingsCopyWithImpl<$Res>
    implements _$AnnotationsSettingsCopyWith<$Res> {
  __$AnnotationsSettingsCopyWithImpl(this._self, this._then);

  final _AnnotationsSettings _self;
  final $Res Function(_AnnotationsSettings) _then;

/// Create a copy of AnnotationsSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? highlightColors = null,Object? sync = null,Object? autoSave = null,Object? exportFormat = null,Object? showSidebar = null,}) {
  return _then(_AnnotationsSettings(
highlightColors: null == highlightColors ? _self._highlightColors : highlightColors // ignore: cast_nullable_to_non_nullable
as List<String>,sync: null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as bool,autoSave: null == autoSave ? _self.autoSave : autoSave // ignore: cast_nullable_to_non_nullable
as bool,exportFormat: null == exportFormat ? _self.exportFormat : exportFormat // ignore: cast_nullable_to_non_nullable
as AnnotationExportFormat,showSidebar: null == showSidebar ? _self.showSidebar : showSidebar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UISettings {

 ToolbarPosition get toolbarPosition; Gestures get gestures; bool get enableAnimations; bool get soundFeedback;
/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UISettingsCopyWith<UISettings> get copyWith => _$UISettingsCopyWithImpl<UISettings>(this as UISettings, _$identity);

  /// Serializes this UISettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UISettings&&(identical(other.toolbarPosition, toolbarPosition) || other.toolbarPosition == toolbarPosition)&&(identical(other.gestures, gestures) || other.gestures == gestures)&&(identical(other.enableAnimations, enableAnimations) || other.enableAnimations == enableAnimations)&&(identical(other.soundFeedback, soundFeedback) || other.soundFeedback == soundFeedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,toolbarPosition,gestures,enableAnimations,soundFeedback);

@override
String toString() {
  return 'UISettings(toolbarPosition: $toolbarPosition, gestures: $gestures, enableAnimations: $enableAnimations, soundFeedback: $soundFeedback)';
}


}

/// @nodoc
abstract mixin class $UISettingsCopyWith<$Res>  {
  factory $UISettingsCopyWith(UISettings value, $Res Function(UISettings) _then) = _$UISettingsCopyWithImpl;
@useResult
$Res call({
 ToolbarPosition toolbarPosition, Gestures gestures, bool enableAnimations, bool soundFeedback
});


$GesturesCopyWith<$Res> get gestures;

}
/// @nodoc
class _$UISettingsCopyWithImpl<$Res>
    implements $UISettingsCopyWith<$Res> {
  _$UISettingsCopyWithImpl(this._self, this._then);

  final UISettings _self;
  final $Res Function(UISettings) _then;

/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toolbarPosition = null,Object? gestures = null,Object? enableAnimations = null,Object? soundFeedback = null,}) {
  return _then(_self.copyWith(
toolbarPosition: null == toolbarPosition ? _self.toolbarPosition : toolbarPosition // ignore: cast_nullable_to_non_nullable
as ToolbarPosition,gestures: null == gestures ? _self.gestures : gestures // ignore: cast_nullable_to_non_nullable
as Gestures,enableAnimations: null == enableAnimations ? _self.enableAnimations : enableAnimations // ignore: cast_nullable_to_non_nullable
as bool,soundFeedback: null == soundFeedback ? _self.soundFeedback : soundFeedback // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GesturesCopyWith<$Res> get gestures {
  
  return $GesturesCopyWith<$Res>(_self.gestures, (value) {
    return _then(_self.copyWith(gestures: value));
  });
}
}


/// Adds pattern-matching-related methods to [UISettings].
extension UISettingsPatterns on UISettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UISettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UISettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UISettings value)  $default,){
final _that = this;
switch (_that) {
case _UISettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UISettings value)?  $default,){
final _that = this;
switch (_that) {
case _UISettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ToolbarPosition toolbarPosition,  Gestures gestures,  bool enableAnimations,  bool soundFeedback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UISettings() when $default != null:
return $default(_that.toolbarPosition,_that.gestures,_that.enableAnimations,_that.soundFeedback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ToolbarPosition toolbarPosition,  Gestures gestures,  bool enableAnimations,  bool soundFeedback)  $default,) {final _that = this;
switch (_that) {
case _UISettings():
return $default(_that.toolbarPosition,_that.gestures,_that.enableAnimations,_that.soundFeedback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ToolbarPosition toolbarPosition,  Gestures gestures,  bool enableAnimations,  bool soundFeedback)?  $default,) {final _that = this;
switch (_that) {
case _UISettings() when $default != null:
return $default(_that.toolbarPosition,_that.gestures,_that.enableAnimations,_that.soundFeedback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UISettings implements UISettings {
  const _UISettings({this.toolbarPosition = ToolbarPosition.bottom, this.gestures = const Gestures(), this.enableAnimations = true, this.soundFeedback = false});
  factory _UISettings.fromJson(Map<String, dynamic> json) => _$UISettingsFromJson(json);

@override@JsonKey() final  ToolbarPosition toolbarPosition;
@override@JsonKey() final  Gestures gestures;
@override@JsonKey() final  bool enableAnimations;
@override@JsonKey() final  bool soundFeedback;

/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UISettingsCopyWith<_UISettings> get copyWith => __$UISettingsCopyWithImpl<_UISettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UISettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UISettings&&(identical(other.toolbarPosition, toolbarPosition) || other.toolbarPosition == toolbarPosition)&&(identical(other.gestures, gestures) || other.gestures == gestures)&&(identical(other.enableAnimations, enableAnimations) || other.enableAnimations == enableAnimations)&&(identical(other.soundFeedback, soundFeedback) || other.soundFeedback == soundFeedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,toolbarPosition,gestures,enableAnimations,soundFeedback);

@override
String toString() {
  return 'UISettings(toolbarPosition: $toolbarPosition, gestures: $gestures, enableAnimations: $enableAnimations, soundFeedback: $soundFeedback)';
}


}

/// @nodoc
abstract mixin class _$UISettingsCopyWith<$Res> implements $UISettingsCopyWith<$Res> {
  factory _$UISettingsCopyWith(_UISettings value, $Res Function(_UISettings) _then) = __$UISettingsCopyWithImpl;
@override @useResult
$Res call({
 ToolbarPosition toolbarPosition, Gestures gestures, bool enableAnimations, bool soundFeedback
});


@override $GesturesCopyWith<$Res> get gestures;

}
/// @nodoc
class __$UISettingsCopyWithImpl<$Res>
    implements _$UISettingsCopyWith<$Res> {
  __$UISettingsCopyWithImpl(this._self, this._then);

  final _UISettings _self;
  final $Res Function(_UISettings) _then;

/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toolbarPosition = null,Object? gestures = null,Object? enableAnimations = null,Object? soundFeedback = null,}) {
  return _then(_UISettings(
toolbarPosition: null == toolbarPosition ? _self.toolbarPosition : toolbarPosition // ignore: cast_nullable_to_non_nullable
as ToolbarPosition,gestures: null == gestures ? _self.gestures : gestures // ignore: cast_nullable_to_non_nullable
as Gestures,enableAnimations: null == enableAnimations ? _self.enableAnimations : enableAnimations // ignore: cast_nullable_to_non_nullable
as bool,soundFeedback: null == soundFeedback ? _self.soundFeedback : soundFeedback // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UISettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GesturesCopyWith<$Res> get gestures {
  
  return $GesturesCopyWith<$Res>(_self.gestures, (value) {
    return _then(_self.copyWith(gestures: value));
  });
}
}


/// @nodoc
mixin _$Gestures {

 String get swipeUp; String get swipeDown; String get longPress;
/// Create a copy of Gestures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GesturesCopyWith<Gestures> get copyWith => _$GesturesCopyWithImpl<Gestures>(this as Gestures, _$identity);

  /// Serializes this Gestures to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gestures&&(identical(other.swipeUp, swipeUp) || other.swipeUp == swipeUp)&&(identical(other.swipeDown, swipeDown) || other.swipeDown == swipeDown)&&(identical(other.longPress, longPress) || other.longPress == longPress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,swipeUp,swipeDown,longPress);

@override
String toString() {
  return 'Gestures(swipeUp: $swipeUp, swipeDown: $swipeDown, longPress: $longPress)';
}


}

/// @nodoc
abstract mixin class $GesturesCopyWith<$Res>  {
  factory $GesturesCopyWith(Gestures value, $Res Function(Gestures) _then) = _$GesturesCopyWithImpl;
@useResult
$Res call({
 String swipeUp, String swipeDown, String longPress
});




}
/// @nodoc
class _$GesturesCopyWithImpl<$Res>
    implements $GesturesCopyWith<$Res> {
  _$GesturesCopyWithImpl(this._self, this._then);

  final Gestures _self;
  final $Res Function(Gestures) _then;

/// Create a copy of Gestures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? swipeUp = null,Object? swipeDown = null,Object? longPress = null,}) {
  return _then(_self.copyWith(
swipeUp: null == swipeUp ? _self.swipeUp : swipeUp // ignore: cast_nullable_to_non_nullable
as String,swipeDown: null == swipeDown ? _self.swipeDown : swipeDown // ignore: cast_nullable_to_non_nullable
as String,longPress: null == longPress ? _self.longPress : longPress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Gestures].
extension GesturesPatterns on Gestures {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gestures value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gestures() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gestures value)  $default,){
final _that = this;
switch (_that) {
case _Gestures():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gestures value)?  $default,){
final _that = this;
switch (_that) {
case _Gestures() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String swipeUp,  String swipeDown,  String longPress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gestures() when $default != null:
return $default(_that.swipeUp,_that.swipeDown,_that.longPress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String swipeUp,  String swipeDown,  String longPress)  $default,) {final _that = this;
switch (_that) {
case _Gestures():
return $default(_that.swipeUp,_that.swipeDown,_that.longPress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String swipeUp,  String swipeDown,  String longPress)?  $default,) {final _that = this;
switch (_that) {
case _Gestures() when $default != null:
return $default(_that.swipeUp,_that.swipeDown,_that.longPress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Gestures implements Gestures {
  const _Gestures({this.swipeUp = 'brightnessUp', this.swipeDown = 'brightnessDown', this.longPress = 'highlight'});
  factory _Gestures.fromJson(Map<String, dynamic> json) => _$GesturesFromJson(json);

@override@JsonKey() final  String swipeUp;
@override@JsonKey() final  String swipeDown;
@override@JsonKey() final  String longPress;

/// Create a copy of Gestures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GesturesCopyWith<_Gestures> get copyWith => __$GesturesCopyWithImpl<_Gestures>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GesturesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gestures&&(identical(other.swipeUp, swipeUp) || other.swipeUp == swipeUp)&&(identical(other.swipeDown, swipeDown) || other.swipeDown == swipeDown)&&(identical(other.longPress, longPress) || other.longPress == longPress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,swipeUp,swipeDown,longPress);

@override
String toString() {
  return 'Gestures(swipeUp: $swipeUp, swipeDown: $swipeDown, longPress: $longPress)';
}


}

/// @nodoc
abstract mixin class _$GesturesCopyWith<$Res> implements $GesturesCopyWith<$Res> {
  factory _$GesturesCopyWith(_Gestures value, $Res Function(_Gestures) _then) = __$GesturesCopyWithImpl;
@override @useResult
$Res call({
 String swipeUp, String swipeDown, String longPress
});




}
/// @nodoc
class __$GesturesCopyWithImpl<$Res>
    implements _$GesturesCopyWith<$Res> {
  __$GesturesCopyWithImpl(this._self, this._then);

  final _Gestures _self;
  final $Res Function(_Gestures) _then;

/// Create a copy of Gestures
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? swipeUp = null,Object? swipeDown = null,Object? longPress = null,}) {
  return _then(_Gestures(
swipeUp: null == swipeUp ? _self.swipeUp : swipeUp // ignore: cast_nullable_to_non_nullable
as String,swipeDown: null == swipeDown ? _self.swipeDown : swipeDown // ignore: cast_nullable_to_non_nullable
as String,longPress: null == longPress ? _self.longPress : longPress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LocalizationSettings {

 Language get language; Region get region; DateFormat get dateFormat;
/// Create a copy of LocalizationSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizationSettingsCopyWith<LocalizationSettings> get copyWith => _$LocalizationSettingsCopyWithImpl<LocalizationSettings>(this as LocalizationSettings, _$identity);

  /// Serializes this LocalizationSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizationSettings&&(identical(other.language, language) || other.language == language)&&(identical(other.region, region) || other.region == region)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,region,dateFormat);

@override
String toString() {
  return 'LocalizationSettings(language: $language, region: $region, dateFormat: $dateFormat)';
}


}

/// @nodoc
abstract mixin class $LocalizationSettingsCopyWith<$Res>  {
  factory $LocalizationSettingsCopyWith(LocalizationSettings value, $Res Function(LocalizationSettings) _then) = _$LocalizationSettingsCopyWithImpl;
@useResult
$Res call({
 Language language, Region region, DateFormat dateFormat
});




}
/// @nodoc
class _$LocalizationSettingsCopyWithImpl<$Res>
    implements $LocalizationSettingsCopyWith<$Res> {
  _$LocalizationSettingsCopyWithImpl(this._self, this._then);

  final LocalizationSettings _self;
  final $Res Function(LocalizationSettings) _then;

/// Create a copy of LocalizationSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? region = null,Object? dateFormat = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as Language,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as DateFormat,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizationSettings].
extension LocalizationSettingsPatterns on LocalizationSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizationSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizationSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizationSettings value)  $default,){
final _that = this;
switch (_that) {
case _LocalizationSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizationSettings value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizationSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Language language,  Region region,  DateFormat dateFormat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizationSettings() when $default != null:
return $default(_that.language,_that.region,_that.dateFormat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Language language,  Region region,  DateFormat dateFormat)  $default,) {final _that = this;
switch (_that) {
case _LocalizationSettings():
return $default(_that.language,_that.region,_that.dateFormat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Language language,  Region region,  DateFormat dateFormat)?  $default,) {final _that = this;
switch (_that) {
case _LocalizationSettings() when $default != null:
return $default(_that.language,_that.region,_that.dateFormat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizationSettings implements LocalizationSettings {
  const _LocalizationSettings({this.language = Language.en, this.region = Region.us, this.dateFormat = DateFormat.ddMmYyyy});
  factory _LocalizationSettings.fromJson(Map<String, dynamic> json) => _$LocalizationSettingsFromJson(json);

@override@JsonKey() final  Language language;
@override@JsonKey() final  Region region;
@override@JsonKey() final  DateFormat dateFormat;

/// Create a copy of LocalizationSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizationSettingsCopyWith<_LocalizationSettings> get copyWith => __$LocalizationSettingsCopyWithImpl<_LocalizationSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizationSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizationSettings&&(identical(other.language, language) || other.language == language)&&(identical(other.region, region) || other.region == region)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,region,dateFormat);

@override
String toString() {
  return 'LocalizationSettings(language: $language, region: $region, dateFormat: $dateFormat)';
}


}

/// @nodoc
abstract mixin class _$LocalizationSettingsCopyWith<$Res> implements $LocalizationSettingsCopyWith<$Res> {
  factory _$LocalizationSettingsCopyWith(_LocalizationSettings value, $Res Function(_LocalizationSettings) _then) = __$LocalizationSettingsCopyWithImpl;
@override @useResult
$Res call({
 Language language, Region region, DateFormat dateFormat
});




}
/// @nodoc
class __$LocalizationSettingsCopyWithImpl<$Res>
    implements _$LocalizationSettingsCopyWith<$Res> {
  __$LocalizationSettingsCopyWithImpl(this._self, this._then);

  final _LocalizationSettings _self;
  final $Res Function(_LocalizationSettings) _then;

/// Create a copy of LocalizationSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? region = null,Object? dateFormat = null,}) {
  return _then(_LocalizationSettings(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as Language,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as DateFormat,
  ));
}


}

// dart format on
