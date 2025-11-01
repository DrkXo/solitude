// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryStats {

 int get totalEbooks; int get totalSize;
/// Create a copy of LibraryStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryStatsCopyWith<LibraryStats> get copyWith => _$LibraryStatsCopyWithImpl<LibraryStats>(this as LibraryStats, _$identity);

  /// Serializes this LibraryStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryStats&&(identical(other.totalEbooks, totalEbooks) || other.totalEbooks == totalEbooks)&&(identical(other.totalSize, totalSize) || other.totalSize == totalSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalEbooks,totalSize);

@override
String toString() {
  return 'LibraryStats(totalEbooks: $totalEbooks, totalSize: $totalSize)';
}


}

/// @nodoc
abstract mixin class $LibraryStatsCopyWith<$Res>  {
  factory $LibraryStatsCopyWith(LibraryStats value, $Res Function(LibraryStats) _then) = _$LibraryStatsCopyWithImpl;
@useResult
$Res call({
 int totalEbooks, int totalSize
});




}
/// @nodoc
class _$LibraryStatsCopyWithImpl<$Res>
    implements $LibraryStatsCopyWith<$Res> {
  _$LibraryStatsCopyWithImpl(this._self, this._then);

  final LibraryStats _self;
  final $Res Function(LibraryStats) _then;

/// Create a copy of LibraryStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalEbooks = null,Object? totalSize = null,}) {
  return _then(_self.copyWith(
totalEbooks: null == totalEbooks ? _self.totalEbooks : totalEbooks // ignore: cast_nullable_to_non_nullable
as int,totalSize: null == totalSize ? _self.totalSize : totalSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryStats].
extension LibraryStatsPatterns on LibraryStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryStats value)  $default,){
final _that = this;
switch (_that) {
case _LibraryStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryStats value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalEbooks,  int totalSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryStats() when $default != null:
return $default(_that.totalEbooks,_that.totalSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalEbooks,  int totalSize)  $default,) {final _that = this;
switch (_that) {
case _LibraryStats():
return $default(_that.totalEbooks,_that.totalSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalEbooks,  int totalSize)?  $default,) {final _that = this;
switch (_that) {
case _LibraryStats() when $default != null:
return $default(_that.totalEbooks,_that.totalSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryStats implements LibraryStats {
  const _LibraryStats({required this.totalEbooks, required this.totalSize});
  factory _LibraryStats.fromJson(Map<String, dynamic> json) => _$LibraryStatsFromJson(json);

@override final  int totalEbooks;
@override final  int totalSize;

/// Create a copy of LibraryStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryStatsCopyWith<_LibraryStats> get copyWith => __$LibraryStatsCopyWithImpl<_LibraryStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryStats&&(identical(other.totalEbooks, totalEbooks) || other.totalEbooks == totalEbooks)&&(identical(other.totalSize, totalSize) || other.totalSize == totalSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalEbooks,totalSize);

@override
String toString() {
  return 'LibraryStats(totalEbooks: $totalEbooks, totalSize: $totalSize)';
}


}

/// @nodoc
abstract mixin class _$LibraryStatsCopyWith<$Res> implements $LibraryStatsCopyWith<$Res> {
  factory _$LibraryStatsCopyWith(_LibraryStats value, $Res Function(_LibraryStats) _then) = __$LibraryStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalEbooks, int totalSize
});




}
/// @nodoc
class __$LibraryStatsCopyWithImpl<$Res>
    implements _$LibraryStatsCopyWith<$Res> {
  __$LibraryStatsCopyWithImpl(this._self, this._then);

  final _LibraryStats _self;
  final $Res Function(_LibraryStats) _then;

/// Create a copy of LibraryStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalEbooks = null,Object? totalSize = null,}) {
  return _then(_LibraryStats(
totalEbooks: null == totalEbooks ? _self.totalEbooks : totalEbooks // ignore: cast_nullable_to_non_nullable
as int,totalSize: null == totalSize ? _self.totalSize : totalSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
