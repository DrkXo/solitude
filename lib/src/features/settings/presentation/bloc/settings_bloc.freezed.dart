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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FontSizeChanged value)?  fontSizeChanged,TResult Function( _ReadingModeChanged value)?  readingModeChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FontSizeChanged value)  fontSizeChanged,required TResult Function( _ReadingModeChanged value)  readingModeChanged,}){
final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that);case _ReadingModeChanged():
return readingModeChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FontSizeChanged value)?  fontSizeChanged,TResult? Function( _ReadingModeChanged value)?  readingModeChanged,}){
final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double fontSize)?  fontSizeChanged,TResult Function( String readingMode)?  readingModeChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that.readingMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double fontSize)  fontSizeChanged,required TResult Function( String readingMode)  readingModeChanged,}) {final _that = this;
switch (_that) {
case _FontSizeChanged():
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged():
return readingModeChanged(_that.readingMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double fontSize)?  fontSizeChanged,TResult? Function( String readingMode)?  readingModeChanged,}) {final _that = this;
switch (_that) {
case _FontSizeChanged() when fontSizeChanged != null:
return fontSizeChanged(_that.fontSize);case _ReadingModeChanged() when readingModeChanged != null:
return readingModeChanged(_that.readingMode);case _:
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
mixin _$SettingsState {

 double get fontSize; String get readingMode;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode));
}


@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode);

@override
String toString() {
  return 'SettingsState(fontSize: $fontSize, readingMode: $readingMode)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 double fontSize, String readingMode
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fontSize = null,Object? readingMode = null,}) {
  return _then(_self.copyWith(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fontSize,  String readingMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.fontSize,_that.readingMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fontSize,  String readingMode)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.fontSize,_that.readingMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fontSize,  String readingMode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.fontSize,_that.readingMode);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({required this.fontSize, required this.readingMode});
  

@override final  double fontSize;
@override final  String readingMode;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.readingMode, readingMode) || other.readingMode == readingMode));
}


@override
int get hashCode => Object.hash(runtimeType,fontSize,readingMode);

@override
String toString() {
  return 'SettingsState(fontSize: $fontSize, readingMode: $readingMode)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 double fontSize, String readingMode
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fontSize = null,Object? readingMode = null,}) {
  return _then(_SettingsState(
fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,readingMode: null == readingMode ? _self.readingMode : readingMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
