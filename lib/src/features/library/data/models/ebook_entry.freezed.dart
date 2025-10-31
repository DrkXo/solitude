// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ebook_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EbookEntry {

 String get id; Ebook get ebook; String get filePath; String get fileName; DateTime get addedAt; DateTime? get lastReadAt; int get currentChapter; int? get fileSize; String? get coverImagePath;
/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EbookEntryCopyWith<EbookEntry> get copyWith => _$EbookEntryCopyWithImpl<EbookEntry>(this as EbookEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EbookEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.ebook, ebook) || other.ebook == ebook)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.currentChapter, currentChapter) || other.currentChapter == currentChapter)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.coverImagePath, coverImagePath) || other.coverImagePath == coverImagePath));
}


@override
int get hashCode => Object.hash(runtimeType,id,ebook,filePath,fileName,addedAt,lastReadAt,currentChapter,fileSize,coverImagePath);

@override
String toString() {
  return 'EbookEntry(id: $id, ebook: $ebook, filePath: $filePath, fileName: $fileName, addedAt: $addedAt, lastReadAt: $lastReadAt, currentChapter: $currentChapter, fileSize: $fileSize, coverImagePath: $coverImagePath)';
}


}

/// @nodoc
abstract mixin class $EbookEntryCopyWith<$Res>  {
  factory $EbookEntryCopyWith(EbookEntry value, $Res Function(EbookEntry) _then) = _$EbookEntryCopyWithImpl;
@useResult
$Res call({
 String id, Ebook ebook, String filePath, String fileName, DateTime addedAt, DateTime? lastReadAt, int currentChapter, int? fileSize, String? coverImagePath
});


$EbookCopyWith<$Res> get ebook;

}
/// @nodoc
class _$EbookEntryCopyWithImpl<$Res>
    implements $EbookEntryCopyWith<$Res> {
  _$EbookEntryCopyWithImpl(this._self, this._then);

  final EbookEntry _self;
  final $Res Function(EbookEntry) _then;

/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ebook = null,Object? filePath = null,Object? fileName = null,Object? addedAt = null,Object? lastReadAt = freezed,Object? currentChapter = null,Object? fileSize = freezed,Object? coverImagePath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ebook: null == ebook ? _self.ebook : ebook // ignore: cast_nullable_to_non_nullable
as Ebook,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as DateTime?,currentChapter: null == currentChapter ? _self.currentChapter : currentChapter // ignore: cast_nullable_to_non_nullable
as int,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,coverImagePath: freezed == coverImagePath ? _self.coverImagePath : coverImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EbookCopyWith<$Res> get ebook {
  
  return $EbookCopyWith<$Res>(_self.ebook, (value) {
    return _then(_self.copyWith(ebook: value));
  });
}
}


/// Adds pattern-matching-related methods to [EbookEntry].
extension EbookEntryPatterns on EbookEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EbookEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EbookEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EbookEntry value)  $default,){
final _that = this;
switch (_that) {
case _EbookEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EbookEntry value)?  $default,){
final _that = this;
switch (_that) {
case _EbookEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Ebook ebook,  String filePath,  String fileName,  DateTime addedAt,  DateTime? lastReadAt,  int currentChapter,  int? fileSize,  String? coverImagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EbookEntry() when $default != null:
return $default(_that.id,_that.ebook,_that.filePath,_that.fileName,_that.addedAt,_that.lastReadAt,_that.currentChapter,_that.fileSize,_that.coverImagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Ebook ebook,  String filePath,  String fileName,  DateTime addedAt,  DateTime? lastReadAt,  int currentChapter,  int? fileSize,  String? coverImagePath)  $default,) {final _that = this;
switch (_that) {
case _EbookEntry():
return $default(_that.id,_that.ebook,_that.filePath,_that.fileName,_that.addedAt,_that.lastReadAt,_that.currentChapter,_that.fileSize,_that.coverImagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Ebook ebook,  String filePath,  String fileName,  DateTime addedAt,  DateTime? lastReadAt,  int currentChapter,  int? fileSize,  String? coverImagePath)?  $default,) {final _that = this;
switch (_that) {
case _EbookEntry() when $default != null:
return $default(_that.id,_that.ebook,_that.filePath,_that.fileName,_that.addedAt,_that.lastReadAt,_that.currentChapter,_that.fileSize,_that.coverImagePath);case _:
  return null;

}
}

}

/// @nodoc


class _EbookEntry implements EbookEntry {
  const _EbookEntry({required this.id, required this.ebook, required this.filePath, required this.fileName, required this.addedAt, this.lastReadAt, this.currentChapter = 0, this.fileSize, this.coverImagePath});
  

@override final  String id;
@override final  Ebook ebook;
@override final  String filePath;
@override final  String fileName;
@override final  DateTime addedAt;
@override final  DateTime? lastReadAt;
@override@JsonKey() final  int currentChapter;
@override final  int? fileSize;
@override final  String? coverImagePath;

/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EbookEntryCopyWith<_EbookEntry> get copyWith => __$EbookEntryCopyWithImpl<_EbookEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EbookEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.ebook, ebook) || other.ebook == ebook)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.currentChapter, currentChapter) || other.currentChapter == currentChapter)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.coverImagePath, coverImagePath) || other.coverImagePath == coverImagePath));
}


@override
int get hashCode => Object.hash(runtimeType,id,ebook,filePath,fileName,addedAt,lastReadAt,currentChapter,fileSize,coverImagePath);

@override
String toString() {
  return 'EbookEntry(id: $id, ebook: $ebook, filePath: $filePath, fileName: $fileName, addedAt: $addedAt, lastReadAt: $lastReadAt, currentChapter: $currentChapter, fileSize: $fileSize, coverImagePath: $coverImagePath)';
}


}

/// @nodoc
abstract mixin class _$EbookEntryCopyWith<$Res> implements $EbookEntryCopyWith<$Res> {
  factory _$EbookEntryCopyWith(_EbookEntry value, $Res Function(_EbookEntry) _then) = __$EbookEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, Ebook ebook, String filePath, String fileName, DateTime addedAt, DateTime? lastReadAt, int currentChapter, int? fileSize, String? coverImagePath
});


@override $EbookCopyWith<$Res> get ebook;

}
/// @nodoc
class __$EbookEntryCopyWithImpl<$Res>
    implements _$EbookEntryCopyWith<$Res> {
  __$EbookEntryCopyWithImpl(this._self, this._then);

  final _EbookEntry _self;
  final $Res Function(_EbookEntry) _then;

/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ebook = null,Object? filePath = null,Object? fileName = null,Object? addedAt = null,Object? lastReadAt = freezed,Object? currentChapter = null,Object? fileSize = freezed,Object? coverImagePath = freezed,}) {
  return _then(_EbookEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ebook: null == ebook ? _self.ebook : ebook // ignore: cast_nullable_to_non_nullable
as Ebook,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as DateTime?,currentChapter: null == currentChapter ? _self.currentChapter : currentChapter // ignore: cast_nullable_to_non_nullable
as int,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,coverImagePath: freezed == coverImagePath ? _self.coverImagePath : coverImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EbookEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EbookCopyWith<$Res> get ebook {
  
  return $EbookCopyWith<$Res>(_self.ebook, (value) {
    return _then(_self.copyWith(ebook: value));
  });
}
}

// dart format on
