// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReaderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent()';
}


}

/// @nodoc
class $ReaderEventCopyWith<$Res>  {
$ReaderEventCopyWith(ReaderEvent _, $Res Function(ReaderEvent) __);
}


/// Adds pattern-matching-related methods to [ReaderEvent].
extension ReaderEventPatterns on ReaderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadEbook value)?  loadEbook,TResult Function( _NextChapter value)?  nextChapter,TResult Function( _PreviousChapter value)?  previousChapter,TResult Function( _StartReading value)?  startReading,TResult Function( _UpdateReadingProgress value)?  updateReadingProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadEbook() when loadEbook != null:
return loadEbook(_that);case _NextChapter() when nextChapter != null:
return nextChapter(_that);case _PreviousChapter() when previousChapter != null:
return previousChapter(_that);case _StartReading() when startReading != null:
return startReading(_that);case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadEbook value)  loadEbook,required TResult Function( _NextChapter value)  nextChapter,required TResult Function( _PreviousChapter value)  previousChapter,required TResult Function( _StartReading value)  startReading,required TResult Function( _UpdateReadingProgress value)  updateReadingProgress,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadEbook():
return loadEbook(_that);case _NextChapter():
return nextChapter(_that);case _PreviousChapter():
return previousChapter(_that);case _StartReading():
return startReading(_that);case _UpdateReadingProgress():
return updateReadingProgress(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadEbook value)?  loadEbook,TResult? Function( _NextChapter value)?  nextChapter,TResult? Function( _PreviousChapter value)?  previousChapter,TResult? Function( _StartReading value)?  startReading,TResult? Function( _UpdateReadingProgress value)?  updateReadingProgress,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadEbook() when loadEbook != null:
return loadEbook(_that);case _NextChapter() when nextChapter != null:
return nextChapter(_that);case _PreviousChapter() when previousChapter != null:
return previousChapter(_that);case _StartReading() when startReading != null:
return startReading(_that);case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String ebookId)?  loadEbook,TResult Function()?  nextChapter,TResult Function()?  previousChapter,TResult Function()?  startReading,TResult Function( int chapterIndex)?  updateReadingProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadEbook() when loadEbook != null:
return loadEbook(_that.ebookId);case _NextChapter() when nextChapter != null:
return nextChapter();case _PreviousChapter() when previousChapter != null:
return previousChapter();case _StartReading() when startReading != null:
return startReading();case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that.chapterIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String ebookId)  loadEbook,required TResult Function()  nextChapter,required TResult Function()  previousChapter,required TResult Function()  startReading,required TResult Function( int chapterIndex)  updateReadingProgress,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadEbook():
return loadEbook(_that.ebookId);case _NextChapter():
return nextChapter();case _PreviousChapter():
return previousChapter();case _StartReading():
return startReading();case _UpdateReadingProgress():
return updateReadingProgress(_that.chapterIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String ebookId)?  loadEbook,TResult? Function()?  nextChapter,TResult? Function()?  previousChapter,TResult? Function()?  startReading,TResult? Function( int chapterIndex)?  updateReadingProgress,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadEbook() when loadEbook != null:
return loadEbook(_that.ebookId);case _NextChapter() when nextChapter != null:
return nextChapter();case _PreviousChapter() when previousChapter != null:
return previousChapter();case _StartReading() when startReading != null:
return startReading();case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that.chapterIndex);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ReaderEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.started()';
}


}




/// @nodoc


class _LoadEbook implements ReaderEvent {
  const _LoadEbook(this.ebookId);
  

 final  String ebookId;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadEbookCopyWith<_LoadEbook> get copyWith => __$LoadEbookCopyWithImpl<_LoadEbook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadEbook&&(identical(other.ebookId, ebookId) || other.ebookId == ebookId));
}


@override
int get hashCode => Object.hash(runtimeType,ebookId);

@override
String toString() {
  return 'ReaderEvent.loadEbook(ebookId: $ebookId)';
}


}

/// @nodoc
abstract mixin class _$LoadEbookCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$LoadEbookCopyWith(_LoadEbook value, $Res Function(_LoadEbook) _then) = __$LoadEbookCopyWithImpl;
@useResult
$Res call({
 String ebookId
});




}
/// @nodoc
class __$LoadEbookCopyWithImpl<$Res>
    implements _$LoadEbookCopyWith<$Res> {
  __$LoadEbookCopyWithImpl(this._self, this._then);

  final _LoadEbook _self;
  final $Res Function(_LoadEbook) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ebookId = null,}) {
  return _then(_LoadEbook(
null == ebookId ? _self.ebookId : ebookId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NextChapter implements ReaderEvent {
  const _NextChapter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextChapter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.nextChapter()';
}


}




/// @nodoc


class _PreviousChapter implements ReaderEvent {
  const _PreviousChapter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousChapter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.previousChapter()';
}


}




/// @nodoc


class _StartReading implements ReaderEvent {
  const _StartReading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartReading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.startReading()';
}


}




/// @nodoc


class _UpdateReadingProgress implements ReaderEvent {
  const _UpdateReadingProgress(this.chapterIndex);
  

 final  int chapterIndex;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateReadingProgressCopyWith<_UpdateReadingProgress> get copyWith => __$UpdateReadingProgressCopyWithImpl<_UpdateReadingProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReadingProgress&&(identical(other.chapterIndex, chapterIndex) || other.chapterIndex == chapterIndex));
}


@override
int get hashCode => Object.hash(runtimeType,chapterIndex);

@override
String toString() {
  return 'ReaderEvent.updateReadingProgress(chapterIndex: $chapterIndex)';
}


}

/// @nodoc
abstract mixin class _$UpdateReadingProgressCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$UpdateReadingProgressCopyWith(_UpdateReadingProgress value, $Res Function(_UpdateReadingProgress) _then) = __$UpdateReadingProgressCopyWithImpl;
@useResult
$Res call({
 int chapterIndex
});




}
/// @nodoc
class __$UpdateReadingProgressCopyWithImpl<$Res>
    implements _$UpdateReadingProgressCopyWith<$Res> {
  __$UpdateReadingProgressCopyWithImpl(this._self, this._then);

  final _UpdateReadingProgress _self;
  final $Res Function(_UpdateReadingProgress) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chapterIndex = null,}) {
  return _then(_UpdateReadingProgress(
null == chapterIndex ? _self.chapterIndex : chapterIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ReaderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderState()';
}


}

/// @nodoc
class $ReaderStateCopyWith<$Res>  {
$ReaderStateCopyWith(ReaderState _, $Res Function(ReaderState) __);
}


/// Adds pattern-matching-related methods to [ReaderState].
extension ReaderStatePatterns on ReaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loaded():
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ReaderState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderState.initial()';
}


}




/// @nodoc


class _Loaded implements ReaderState {
  const _Loaded(this.controller, this.currentChapterIndex, this.currentPageIndex);
  

 final  EbookXController controller;
 final  int currentChapterIndex;
 final  int currentPageIndex;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.currentChapterIndex, currentChapterIndex) || other.currentChapterIndex == currentChapterIndex)&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,controller,currentChapterIndex,currentPageIndex);

@override
String toString() {
  return 'ReaderState.loaded(controller: $controller, currentChapterIndex: $currentChapterIndex, currentPageIndex: $currentPageIndex)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ReaderStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 EbookXController controller, int currentChapterIndex, int currentPageIndex
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? controller = null,Object? currentChapterIndex = null,Object? currentPageIndex = null,}) {
  return _then(_Loaded(
null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as EbookXController,null == currentChapterIndex ? _self.currentChapterIndex : currentChapterIndex // ignore: cast_nullable_to_non_nullable
as int,null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Error implements ReaderState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReaderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ReaderStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
