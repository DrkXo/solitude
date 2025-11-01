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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FontSizeChanged value)?  fontSizeChanged,TResult Function( _ReadingModeChanged value)?  readingModeChanged,TResult Function( _ThemeModeChanged value)?  themeModeChanged,TResult Function( _ExportSettings value)?  exportSettings,TResult Function( _ImportSettings value)?  importSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that);case _ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _ExportSettings() when exportSettings != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FontSizeChanged value)  fontSizeChanged,required TResult Function( _ReadingModeChanged value)  readingModeChanged,required TResult Function( _ThemeModeChanged value)  themeModeChanged,required TResult Function( _ExportSettings value)  exportSettings,required TResult Function( _ImportSettings value)  importSettings,}){
final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that);case _ReadingModeChanged():
return readingModeChanged(_that);case _ThemeModeChanged():
return themeModeChanged(_that);case _ExportSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FontSizeChanged value)?  fontSizeChanged,TResult? Function( _ReadingModeChanged value)?  readingModeChanged,TResult? Function( _ThemeModeChanged value)?  themeModeChanged,TResult? Function( _ExportSettings value)?  exportSettings,TResult? Function( _ImportSettings value)?  importSettings,}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that);case _ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _ExportSettings() when exportSettings != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double fontSize)?  fontSizeChanged,TResult Function( String readingMode)?  readingModeChanged,TResult Function( ThemeMode themeMode)?  themeModeChanged,TResult Function( ExportFormat format)?  exportSettings,TResult Function( String filePath)?  importSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that.readingMode);case _ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _ExportSettings() when exportSettings != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double fontSize)  fontSizeChanged,required TResult Function( String readingMode)  readingModeChanged,required TResult Function( ThemeMode themeMode)  themeModeChanged,required TResult Function( ExportFormat format)  exportSettings,required TResult Function( String filePath)  importSettings,}) {final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged():
return readingModeChanged(_that.readingMode);case _ThemeModeChanged():
return themeModeChanged(_that.themeMode);case _ExportSettings():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double fontSize)?  fontSizeChanged,TResult? Function( String readingMode)?  readingModeChanged,TResult? Function( ThemeMode themeMode)?  themeModeChanged,TResult? Function( ExportFormat format)?  exportSettings,TResult? Function( String filePath)?  importSettings,}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that.readingMode);case _ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _ExportSettings() when exportSettings != null:
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


class _ReadingModeChanged implements SettingsEvent {
  const _ReadingModeChanged(this.readingMode);
  

 final  String readingMode;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadingModeChangedCopyWith<_ReadingModeChanged> get copyWith => __$ReadingModeChangedCopyWithImpl<_ReadingModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadingModeChanged&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode));
}


@override
int get hashCode => Object.hash(runtimeType,readingMode);

@override
String toString() {
  return 'SettingsEvent.readingModeChanged(readingMode: $readingMode)';
}


}

/// @nodoc
abstract mixin class _$ReadingModeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ReadingModeChangedCopyWith(_ReadingModeChanged value, $Res Function(_ReadingModeChanged) _then) = __$ReadingModeChangedCopyWithImpl;
@useResult
$Res call({
 String readingMode
});




}
/// @nodoc
class __$ReadingModeChangedCopyWithImpl<$Res>
    implements _$ReadingModeChangedCopyWith<$Res> {
  __$ReadingModeChangedCopyWithImpl(this._self, this._then);

  final _ReadingModeChanged _self;
  final $Res Function(_ReadingModeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? readingMode = null,}) {
  return _then(_ReadingModeChanged(
null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ThemeModeChanged implements SettingsEvent {
  const _ThemeModeChanged(this.themeMode);
  

 final  ThemeMode themeMode;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeModeChangedCopyWith<_ThemeModeChanged> get copyWith => __$ThemeModeChangedCopyWithImpl<_ThemeModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeModeChanged&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'SettingsEvent.themeModeChanged(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$ThemeModeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ThemeModeChangedCopyWith(_ThemeModeChanged value, $Res Function(_ThemeModeChanged) _then) = __$ThemeModeChangedCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class __$ThemeModeChangedCopyWithImpl<$Res>
    implements _$ThemeModeChangedCopyWith<$Res> {
  __$ThemeModeChangedCopyWithImpl(this._self, this._then);

  final _ThemeModeChanged _self;
  final $Res Function(_ThemeModeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_ThemeModeChanged(
null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
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
mixin _$SettingsModel {

 double get fontSize; String get readingMode; ThemeMode get themeMode;
/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<SettingsModel> get copyWith => _$SettingsModelCopyWithImpl<SettingsModel>(this as SettingsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsModel&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode,themeMode);

@override
String toString() {
  return 'SettingsModel(fontSize: $fontSize, readingMode: $readingMode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $SettingsModelCopyWith<$Res>  {
  factory $SettingsModelCopyWith(SettingsModel value, $Res Function(SettingsModel) _then) = _$SettingsModelCopyWithImpl;
@useResult
$Res call({
 double fontSize, String readingMode, ThemeMode themeMode
});




}
/// @nodoc
class _$SettingsModelCopyWithImpl<$Res>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._self, this._then);

  final SettingsModel _self;
  final $Res Function(SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fontSize = null,Object? readingMode = null,Object? themeMode = null,}) {
  return _then(_self.copyWith(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsModel].
extension SettingsModelPatterns on SettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _SettingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fontSize,  String readingMode,  ThemeMode themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fontSize,  String readingMode,  ThemeMode themeMode)  $default,) {final _that = this;
switch (_that) {
case _SettingsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fontSize,  String readingMode,  ThemeMode themeMode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that.fontSize,_that.readingMode,_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsModel implements SettingsModel {
  const _SettingsModel({this.fontSize = 16.0, this.readingMode = 'page', this.themeMode = ThemeMode.system});
  

@override@JsonKey() final  double fontSize;
@override@JsonKey() final  String readingMode;
@override@JsonKey() final  ThemeMode themeMode;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsModelCopyWith<_SettingsModel> get copyWith => __$SettingsModelCopyWithImpl<_SettingsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsModel&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode,themeMode);

@override
String toString() {
  return 'SettingsModel(fontSize: $fontSize, readingMode: $readingMode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$SettingsModelCopyWith<$Res> implements $SettingsModelCopyWith<$Res> {
  factory _$SettingsModelCopyWith(_SettingsModel value, $Res Function(_SettingsModel) _then) = __$SettingsModelCopyWithImpl;
@override @useResult
$Res call({
 double fontSize, String readingMode, ThemeMode themeMode
});




}
/// @nodoc
class __$SettingsModelCopyWithImpl<$Res>
    implements _$SettingsModelCopyWith<$Res> {
  __$SettingsModelCopyWithImpl(this._self, this._then);

  final _SettingsModel _self;
  final $Res Function(_SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fontSize = null,Object? readingMode = null,Object? themeMode = null,}) {
  return _then(_SettingsModel(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

/// @nodoc
mixin _$SettingsState {

 SettingsModel get settings; String? get backupMessage; bool get isBackupLoading;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.backupMessage, backupMessage) || other.backupMessage == backupMessage)&&(identical(other.isBackupLoading, isBackupLoading) || other.isBackupLoading == isBackupLoading));
}


@override
int get hashCode => Object.hash(runtimeType,settings,backupMessage,isBackupLoading);

@override
String toString() {
  return 'SettingsState(settings: $settings, backupMessage: $backupMessage, isBackupLoading: $isBackupLoading)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 SettingsModel settings, String? backupMessage, bool isBackupLoading
});


$SettingsModelCopyWith<$Res> get settings;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,Object? backupMessage = freezed,Object? isBackupLoading = null,}) {
  return _then(_self.copyWith(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as SettingsModel,backupMessage: freezed == backupMessage ? _self.backupMessage : backupMessage // ignore: cast_nullable_to_non_nullable
as String?,isBackupLoading: null == isBackupLoading ? _self.isBackupLoading : isBackupLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<$Res> get settings {
  
  return $SettingsModelCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsModel settings,  String? backupMessage,  bool isBackupLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.settings,_that.backupMessage,_that.isBackupLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsModel settings,  String? backupMessage,  bool isBackupLoading)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.settings,_that.backupMessage,_that.isBackupLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsModel settings,  String? backupMessage,  bool isBackupLoading)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.settings,_that.backupMessage,_that.isBackupLoading);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({required this.settings, this.backupMessage = null, this.isBackupLoading = false});
  

@override final  SettingsModel settings;
@override@JsonKey() final  String? backupMessage;
@override@JsonKey() final  bool isBackupLoading;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.backupMessage, backupMessage) || other.backupMessage == backupMessage)&&(identical(other.isBackupLoading, isBackupLoading) || other.isBackupLoading == isBackupLoading));
}


@override
int get hashCode => Object.hash(runtimeType,settings,backupMessage,isBackupLoading);

@override
String toString() {
  return 'SettingsState(settings: $settings, backupMessage: $backupMessage, isBackupLoading: $isBackupLoading)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 SettingsModel settings, String? backupMessage, bool isBackupLoading
});


@override $SettingsModelCopyWith<$Res> get settings;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,Object? backupMessage = freezed,Object? isBackupLoading = null,}) {
  return _then(_SettingsState(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as SettingsModel,backupMessage: freezed == backupMessage ? _self.backupMessage : backupMessage // ignore: cast_nullable_to_non_nullable
as String?,isBackupLoading: null == isBackupLoading ? _self.isBackupLoading : isBackupLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<$Res> get settings {
  
  return $SettingsModelCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
