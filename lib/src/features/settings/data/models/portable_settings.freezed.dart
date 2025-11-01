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

 double get fontSize; String get readingMode; String get themeMode;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode,themeMode);

@override
String toString() {
  return 'AppSettings(fontSize: $fontSize, readingMode: $readingMode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 double fontSize, String readingMode, String themeMode
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fontSize = null,Object? readingMode = null,Object? themeMode = null,}) {
  return _then(_self.copyWith(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fontSize,  String readingMode,  String themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.fontSize,_that.readingMode,_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fontSize,  String readingMode,  String themeMode)  $default,) {final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that.fontSize,_that.readingMode,_that.themeMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fontSize,  String readingMode,  String themeMode)?  $default,) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.fontSize,_that.readingMode,_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppSettings implements AppSettings {
  const _AppSettings({required this.fontSize, required this.readingMode, required this.themeMode});
  factory _AppSettings.fromJson(Map<String, dynamic> json) => _$AppSettingsFromJson(json);

@override final  double fontSize;
@override final  String readingMode;
@override final  String themeMode;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode,themeMode);

@override
String toString() {
  return 'AppSettings(fontSize: $fontSize, readingMode: $readingMode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 double fontSize, String readingMode, String themeMode
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fontSize = null,Object? readingMode = null,Object? themeMode = null,}) {
  return _then(_AppSettings(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
