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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadEbook value)?  loadEbook,TResult Function( _NextChapter value)?  nextChapter,TResult Function( _PreviousChapter value)?  previousChapter,TResult Function( _NextPage value)?  nextPage,TResult Function( _PreviousPage value)?  previousPage,TResult Function( _GoToPage value)?  goToPage,TResult Function( _AddBookmark value)?  addBookmark,TResult Function( _RemoveBookmark value)?  removeBookmark,TResult Function( _GoToBookmark value)?  goToBookmark,TResult Function( _StartReading value)?  startReading,TResult Function( _UpdateReadingProgress value)?  updateReadingProgress,TResult Function( _UpdatePageOffset value)?  updatePageOffset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadEbook() when loadEbook != null:
return loadEbook(_that);case _NextChapter() when nextChapter != null:
return nextChapter(_that);case _PreviousChapter() when previousChapter != null:
return previousChapter(_that);case _NextPage() when nextPage != null:
return nextPage(_that);case _PreviousPage() when previousPage != null:
return previousPage(_that);case _GoToPage() when goToPage != null:
return goToPage(_that);case _AddBookmark() when addBookmark != null:
return addBookmark(_that);case _RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that);case _GoToBookmark() when goToBookmark != null:
return goToBookmark(_that);case _StartReading() when startReading != null:
return startReading(_that);case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that);case _UpdatePageOffset() when updatePageOffset != null:
return updatePageOffset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadEbook value)  loadEbook,required TResult Function( _NextChapter value)  nextChapter,required TResult Function( _PreviousChapter value)  previousChapter,required TResult Function( _NextPage value)  nextPage,required TResult Function( _PreviousPage value)  previousPage,required TResult Function( _GoToPage value)  goToPage,required TResult Function( _AddBookmark value)  addBookmark,required TResult Function( _RemoveBookmark value)  removeBookmark,required TResult Function( _GoToBookmark value)  goToBookmark,required TResult Function( _StartReading value)  startReading,required TResult Function( _UpdateReadingProgress value)  updateReadingProgress,required TResult Function( _UpdatePageOffset value)  updatePageOffset,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadEbook():
return loadEbook(_that);case _NextChapter():
return nextChapter(_that);case _PreviousChapter():
return previousChapter(_that);case _NextPage():
return nextPage(_that);case _PreviousPage():
return previousPage(_that);case _GoToPage():
return goToPage(_that);case _AddBookmark():
return addBookmark(_that);case _RemoveBookmark():
return removeBookmark(_that);case _GoToBookmark():
return goToBookmark(_that);case _StartReading():
return startReading(_that);case _UpdateReadingProgress():
return updateReadingProgress(_that);case _UpdatePageOffset():
return updatePageOffset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadEbook value)?  loadEbook,TResult? Function( _NextChapter value)?  nextChapter,TResult? Function( _PreviousChapter value)?  previousChapter,TResult? Function( _NextPage value)?  nextPage,TResult? Function( _PreviousPage value)?  previousPage,TResult? Function( _GoToPage value)?  goToPage,TResult? Function( _AddBookmark value)?  addBookmark,TResult? Function( _RemoveBookmark value)?  removeBookmark,TResult? Function( _GoToBookmark value)?  goToBookmark,TResult? Function( _StartReading value)?  startReading,TResult? Function( _UpdateReadingProgress value)?  updateReadingProgress,TResult? Function( _UpdatePageOffset value)?  updatePageOffset,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadEbook() when loadEbook != null:
return loadEbook(_that);case _NextChapter() when nextChapter != null:
return nextChapter(_that);case _PreviousChapter() when previousChapter != null:
return previousChapter(_that);case _NextPage() when nextPage != null:
return nextPage(_that);case _PreviousPage() when previousPage != null:
return previousPage(_that);case _GoToPage() when goToPage != null:
return goToPage(_that);case _AddBookmark() when addBookmark != null:
return addBookmark(_that);case _RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that);case _GoToBookmark() when goToBookmark != null:
return goToBookmark(_that);case _StartReading() when startReading != null:
return startReading(_that);case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that);case _UpdatePageOffset() when updatePageOffset != null:
return updatePageOffset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String ebookId)?  loadEbook,TResult Function()?  nextChapter,TResult Function()?  previousChapter,TResult Function()?  nextPage,TResult Function()?  previousPage,TResult Function( int pageIndex)?  goToPage,TResult Function( String title)?  addBookmark,TResult Function( int index)?  removeBookmark,TResult Function( int index)?  goToBookmark,TResult Function()?  startReading,TResult Function( int chapterIndex)?  updateReadingProgress,TResult Function( double offset)?  updatePageOffset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadEbook() when loadEbook != null:
return loadEbook(_that.ebookId);case _NextChapter() when nextChapter != null:
return nextChapter();case _PreviousChapter() when previousChapter != null:
return previousChapter();case _NextPage() when nextPage != null:
return nextPage();case _PreviousPage() when previousPage != null:
return previousPage();case _GoToPage() when goToPage != null:
return goToPage(_that.pageIndex);case _AddBookmark() when addBookmark != null:
return addBookmark(_that.title);case _RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that.index);case _GoToBookmark() when goToBookmark != null:
return goToBookmark(_that.index);case _StartReading() when startReading != null:
return startReading();case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that.chapterIndex);case _UpdatePageOffset() when updatePageOffset != null:
return updatePageOffset(_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String ebookId)  loadEbook,required TResult Function()  nextChapter,required TResult Function()  previousChapter,required TResult Function()  nextPage,required TResult Function()  previousPage,required TResult Function( int pageIndex)  goToPage,required TResult Function( String title)  addBookmark,required TResult Function( int index)  removeBookmark,required TResult Function( int index)  goToBookmark,required TResult Function()  startReading,required TResult Function( int chapterIndex)  updateReadingProgress,required TResult Function( double offset)  updatePageOffset,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadEbook():
return loadEbook(_that.ebookId);case _NextChapter():
return nextChapter();case _PreviousChapter():
return previousChapter();case _NextPage():
return nextPage();case _PreviousPage():
return previousPage();case _GoToPage():
return goToPage(_that.pageIndex);case _AddBookmark():
return addBookmark(_that.title);case _RemoveBookmark():
return removeBookmark(_that.index);case _GoToBookmark():
return goToBookmark(_that.index);case _StartReading():
return startReading();case _UpdateReadingProgress():
return updateReadingProgress(_that.chapterIndex);case _UpdatePageOffset():
return updatePageOffset(_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String ebookId)?  loadEbook,TResult? Function()?  nextChapter,TResult? Function()?  previousChapter,TResult? Function()?  nextPage,TResult? Function()?  previousPage,TResult? Function( int pageIndex)?  goToPage,TResult? Function( String title)?  addBookmark,TResult? Function( int index)?  removeBookmark,TResult? Function( int index)?  goToBookmark,TResult? Function()?  startReading,TResult? Function( int chapterIndex)?  updateReadingProgress,TResult? Function( double offset)?  updatePageOffset,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadEbook() when loadEbook != null:
return loadEbook(_that.ebookId);case _NextChapter() when nextChapter != null:
return nextChapter();case _PreviousChapter() when previousChapter != null:
return previousChapter();case _NextPage() when nextPage != null:
return nextPage();case _PreviousPage() when previousPage != null:
return previousPage();case _GoToPage() when goToPage != null:
return goToPage(_that.pageIndex);case _AddBookmark() when addBookmark != null:
return addBookmark(_that.title);case _RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that.index);case _GoToBookmark() when goToBookmark != null:
return goToBookmark(_that.index);case _StartReading() when startReading != null:
return startReading();case _UpdateReadingProgress() when updateReadingProgress != null:
return updateReadingProgress(_that.chapterIndex);case _UpdatePageOffset() when updatePageOffset != null:
return updatePageOffset(_that.offset);case _:
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


class _NextPage implements ReaderEvent {
  const _NextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.nextPage()';
}


}




/// @nodoc


class _PreviousPage implements ReaderEvent {
  const _PreviousPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReaderEvent.previousPage()';
}


}




/// @nodoc


class _GoToPage implements ReaderEvent {
  const _GoToPage(this.pageIndex);
  

 final  int pageIndex;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoToPageCopyWith<_GoToPage> get copyWith => __$GoToPageCopyWithImpl<_GoToPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoToPage&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex);

@override
String toString() {
  return 'ReaderEvent.goToPage(pageIndex: $pageIndex)';
}


}

/// @nodoc
abstract mixin class _$GoToPageCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$GoToPageCopyWith(_GoToPage value, $Res Function(_GoToPage) _then) = __$GoToPageCopyWithImpl;
@useResult
$Res call({
 int pageIndex
});




}
/// @nodoc
class __$GoToPageCopyWithImpl<$Res>
    implements _$GoToPageCopyWith<$Res> {
  __$GoToPageCopyWithImpl(this._self, this._then);

  final _GoToPage _self;
  final $Res Function(_GoToPage) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,}) {
  return _then(_GoToPage(
null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddBookmark implements ReaderEvent {
  const _AddBookmark(this.title);
  

 final  String title;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddBookmarkCopyWith<_AddBookmark> get copyWith => __$AddBookmarkCopyWithImpl<_AddBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddBookmark&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'ReaderEvent.addBookmark(title: $title)';
}


}

/// @nodoc
abstract mixin class _$AddBookmarkCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$AddBookmarkCopyWith(_AddBookmark value, $Res Function(_AddBookmark) _then) = __$AddBookmarkCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$AddBookmarkCopyWithImpl<$Res>
    implements _$AddBookmarkCopyWith<$Res> {
  __$AddBookmarkCopyWithImpl(this._self, this._then);

  final _AddBookmark _self;
  final $Res Function(_AddBookmark) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_AddBookmark(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveBookmark implements ReaderEvent {
  const _RemoveBookmark(this.index);
  

 final  int index;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveBookmarkCopyWith<_RemoveBookmark> get copyWith => __$RemoveBookmarkCopyWithImpl<_RemoveBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveBookmark&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ReaderEvent.removeBookmark(index: $index)';
}


}

/// @nodoc
abstract mixin class _$RemoveBookmarkCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$RemoveBookmarkCopyWith(_RemoveBookmark value, $Res Function(_RemoveBookmark) _then) = __$RemoveBookmarkCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$RemoveBookmarkCopyWithImpl<$Res>
    implements _$RemoveBookmarkCopyWith<$Res> {
  __$RemoveBookmarkCopyWithImpl(this._self, this._then);

  final _RemoveBookmark _self;
  final $Res Function(_RemoveBookmark) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_RemoveBookmark(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GoToBookmark implements ReaderEvent {
  const _GoToBookmark(this.index);
  

 final  int index;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoToBookmarkCopyWith<_GoToBookmark> get copyWith => __$GoToBookmarkCopyWithImpl<_GoToBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoToBookmark&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ReaderEvent.goToBookmark(index: $index)';
}


}

/// @nodoc
abstract mixin class _$GoToBookmarkCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$GoToBookmarkCopyWith(_GoToBookmark value, $Res Function(_GoToBookmark) _then) = __$GoToBookmarkCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$GoToBookmarkCopyWithImpl<$Res>
    implements _$GoToBookmarkCopyWith<$Res> {
  __$GoToBookmarkCopyWithImpl(this._self, this._then);

  final _GoToBookmark _self;
  final $Res Function(_GoToBookmark) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_GoToBookmark(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
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


class _UpdatePageOffset implements ReaderEvent {
  const _UpdatePageOffset(this.offset);
  

 final  double offset;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePageOffsetCopyWith<_UpdatePageOffset> get copyWith => __$UpdatePageOffsetCopyWithImpl<_UpdatePageOffset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePageOffset&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'ReaderEvent.updatePageOffset(offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$UpdatePageOffsetCopyWith<$Res> implements $ReaderEventCopyWith<$Res> {
  factory _$UpdatePageOffsetCopyWith(_UpdatePageOffset value, $Res Function(_UpdatePageOffset) _then) = __$UpdatePageOffsetCopyWithImpl;
@useResult
$Res call({
 double offset
});




}
/// @nodoc
class __$UpdatePageOffsetCopyWithImpl<$Res>
    implements _$UpdatePageOffsetCopyWith<$Res> {
  __$UpdatePageOffsetCopyWithImpl(this._self, this._then);

  final _UpdatePageOffset _self;
  final $Res Function(_UpdatePageOffset) _then;

/// Create a copy of ReaderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(_UpdatePageOffset(
null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as double,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex,  double pageOffset,  List<Bookmark> bookmarks)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex,_that.pageOffset,_that.bookmarks);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex,  double pageOffset,  List<Bookmark> bookmarks)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loaded():
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex,_that.pageOffset,_that.bookmarks);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( EbookXController controller,  int currentChapterIndex,  int currentPageIndex,  double pageOffset,  List<Bookmark> bookmarks)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.controller,_that.currentChapterIndex,_that.currentPageIndex,_that.pageOffset,_that.bookmarks);case _Error() when error != null:
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
  const _Loaded(this.controller, this.currentChapterIndex, this.currentPageIndex, this.pageOffset, final  List<Bookmark> bookmarks): _bookmarks = bookmarks;
  

 final  EbookXController controller;
 final  int currentChapterIndex;
 final  int currentPageIndex;
 final  double pageOffset;
 final  List<Bookmark> _bookmarks;
 List<Bookmark> get bookmarks {
  if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarks);
}


/// Create a copy of ReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.currentChapterIndex, currentChapterIndex) || other.currentChapterIndex == currentChapterIndex)&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex)&&(identical(other.pageOffset, pageOffset) || other.pageOffset == pageOffset)&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks));
}


@override
int get hashCode => Object.hash(runtimeType,controller,currentChapterIndex,currentPageIndex,pageOffset,const DeepCollectionEquality().hash(_bookmarks));

@override
String toString() {
  return 'ReaderState.loaded(controller: $controller, currentChapterIndex: $currentChapterIndex, currentPageIndex: $currentPageIndex, pageOffset: $pageOffset, bookmarks: $bookmarks)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ReaderStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 EbookXController controller, int currentChapterIndex, int currentPageIndex, double pageOffset, List<Bookmark> bookmarks
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
@pragma('vm:prefer-inline') $Res call({Object? controller = null,Object? currentChapterIndex = null,Object? currentPageIndex = null,Object? pageOffset = null,Object? bookmarks = null,}) {
  return _then(_Loaded(
null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as EbookXController,null == currentChapterIndex ? _self.currentChapterIndex : currentChapterIndex // ignore: cast_nullable_to_non_nullable
as int,null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,null == pageOffset ? _self.pageOffset : pageOffset // ignore: cast_nullable_to_non_nullable
as double,null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as List<Bookmark>,
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
