// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LibraryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryEvent()';
}


}

/// @nodoc
class $LibraryEventCopyWith<$Res>  {
$LibraryEventCopyWith(LibraryEvent _, $Res Function(LibraryEvent) __);
}


/// Adds pattern-matching-related methods to [LibraryEvent].
extension LibraryEventPatterns on LibraryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _PickEbook value)?  pickEbook,TResult Function( _RemoveEbook value)?  removeEbook,TResult Function( _SearchEbooks value)?  searchEbooks,TResult Function( _UpdateEbook value)?  updateEbook,TResult Function( _EbooksChanged value)?  ebooksChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PickEbook() when pickEbook != null:
return pickEbook(_that);case _RemoveEbook() when removeEbook != null:
return removeEbook(_that);case _SearchEbooks() when searchEbooks != null:
return searchEbooks(_that);case _UpdateEbook() when updateEbook != null:
return updateEbook(_that);case _EbooksChanged() when ebooksChanged != null:
return ebooksChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _PickEbook value)  pickEbook,required TResult Function( _RemoveEbook value)  removeEbook,required TResult Function( _SearchEbooks value)  searchEbooks,required TResult Function( _UpdateEbook value)  updateEbook,required TResult Function( _EbooksChanged value)  ebooksChanged,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _PickEbook():
return pickEbook(_that);case _RemoveEbook():
return removeEbook(_that);case _SearchEbooks():
return searchEbooks(_that);case _UpdateEbook():
return updateEbook(_that);case _EbooksChanged():
return ebooksChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _PickEbook value)?  pickEbook,TResult? Function( _RemoveEbook value)?  removeEbook,TResult? Function( _SearchEbooks value)?  searchEbooks,TResult? Function( _UpdateEbook value)?  updateEbook,TResult? Function( _EbooksChanged value)?  ebooksChanged,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PickEbook() when pickEbook != null:
return pickEbook(_that);case _RemoveEbook() when removeEbook != null:
return removeEbook(_that);case _SearchEbooks() when searchEbooks != null:
return searchEbooks(_that);case _UpdateEbook() when updateEbook != null:
return updateEbook(_that);case _EbooksChanged() when ebooksChanged != null:
return ebooksChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  pickEbook,TResult Function( String id)?  removeEbook,TResult Function( String query)?  searchEbooks,TResult Function( EbookEntry entry)?  updateEbook,TResult Function( List<EbookEntry> ebooks)?  ebooksChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PickEbook() when pickEbook != null:
return pickEbook();case _RemoveEbook() when removeEbook != null:
return removeEbook(_that.id);case _SearchEbooks() when searchEbooks != null:
return searchEbooks(_that.query);case _UpdateEbook() when updateEbook != null:
return updateEbook(_that.entry);case _EbooksChanged() when ebooksChanged != null:
return ebooksChanged(_that.ebooks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  pickEbook,required TResult Function( String id)  removeEbook,required TResult Function( String query)  searchEbooks,required TResult Function( EbookEntry entry)  updateEbook,required TResult Function( List<EbookEntry> ebooks)  ebooksChanged,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _PickEbook():
return pickEbook();case _RemoveEbook():
return removeEbook(_that.id);case _SearchEbooks():
return searchEbooks(_that.query);case _UpdateEbook():
return updateEbook(_that.entry);case _EbooksChanged():
return ebooksChanged(_that.ebooks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  pickEbook,TResult? Function( String id)?  removeEbook,TResult? Function( String query)?  searchEbooks,TResult? Function( EbookEntry entry)?  updateEbook,TResult? Function( List<EbookEntry> ebooks)?  ebooksChanged,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PickEbook() when pickEbook != null:
return pickEbook();case _RemoveEbook() when removeEbook != null:
return removeEbook(_that.id);case _SearchEbooks() when searchEbooks != null:
return searchEbooks(_that.query);case _UpdateEbook() when updateEbook != null:
return updateEbook(_that.entry);case _EbooksChanged() when ebooksChanged != null:
return ebooksChanged(_that.ebooks);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements LibraryEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryEvent.started()';
}


}




/// @nodoc


class _PickEbook implements LibraryEvent {
  const _PickEbook();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickEbook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryEvent.pickEbook()';
}


}




/// @nodoc


class _RemoveEbook implements LibraryEvent {
  const _RemoveEbook(this.id);
  

 final  String id;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveEbookCopyWith<_RemoveEbook> get copyWith => __$RemoveEbookCopyWithImpl<_RemoveEbook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveEbook&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LibraryEvent.removeEbook(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RemoveEbookCopyWith<$Res> implements $LibraryEventCopyWith<$Res> {
  factory _$RemoveEbookCopyWith(_RemoveEbook value, $Res Function(_RemoveEbook) _then) = __$RemoveEbookCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$RemoveEbookCopyWithImpl<$Res>
    implements _$RemoveEbookCopyWith<$Res> {
  __$RemoveEbookCopyWithImpl(this._self, this._then);

  final _RemoveEbook _self;
  final $Res Function(_RemoveEbook) _then;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RemoveEbook(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SearchEbooks implements LibraryEvent {
  const _SearchEbooks(this.query);
  

 final  String query;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchEbooksCopyWith<_SearchEbooks> get copyWith => __$SearchEbooksCopyWithImpl<_SearchEbooks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchEbooks&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'LibraryEvent.searchEbooks(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchEbooksCopyWith<$Res> implements $LibraryEventCopyWith<$Res> {
  factory _$SearchEbooksCopyWith(_SearchEbooks value, $Res Function(_SearchEbooks) _then) = __$SearchEbooksCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchEbooksCopyWithImpl<$Res>
    implements _$SearchEbooksCopyWith<$Res> {
  __$SearchEbooksCopyWithImpl(this._self, this._then);

  final _SearchEbooks _self;
  final $Res Function(_SearchEbooks) _then;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchEbooks(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateEbook implements LibraryEvent {
  const _UpdateEbook(this.entry);
  

 final  EbookEntry entry;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEbookCopyWith<_UpdateEbook> get copyWith => __$UpdateEbookCopyWithImpl<_UpdateEbook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEbook&&(identical(other.entry, entry) || other.entry == entry));
}


@override
int get hashCode => Object.hash(runtimeType,entry);

@override
String toString() {
  return 'LibraryEvent.updateEbook(entry: $entry)';
}


}

/// @nodoc
abstract mixin class _$UpdateEbookCopyWith<$Res> implements $LibraryEventCopyWith<$Res> {
  factory _$UpdateEbookCopyWith(_UpdateEbook value, $Res Function(_UpdateEbook) _then) = __$UpdateEbookCopyWithImpl;
@useResult
$Res call({
 EbookEntry entry
});


$EbookEntryCopyWith<$Res> get entry;

}
/// @nodoc
class __$UpdateEbookCopyWithImpl<$Res>
    implements _$UpdateEbookCopyWith<$Res> {
  __$UpdateEbookCopyWithImpl(this._self, this._then);

  final _UpdateEbook _self;
  final $Res Function(_UpdateEbook) _then;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entry = null,}) {
  return _then(_UpdateEbook(
null == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as EbookEntry,
  ));
}

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EbookEntryCopyWith<$Res> get entry {
  
  return $EbookEntryCopyWith<$Res>(_self.entry, (value) {
    return _then(_self.copyWith(entry: value));
  });
}
}

/// @nodoc


class _EbooksChanged implements LibraryEvent {
  const _EbooksChanged(final  List<EbookEntry> ebooks): _ebooks = ebooks;
  

 final  List<EbookEntry> _ebooks;
 List<EbookEntry> get ebooks {
  if (_ebooks is EqualUnmodifiableListView) return _ebooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebooks);
}


/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EbooksChangedCopyWith<_EbooksChanged> get copyWith => __$EbooksChangedCopyWithImpl<_EbooksChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EbooksChanged&&const DeepCollectionEquality().equals(other._ebooks, _ebooks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebooks));

@override
String toString() {
  return 'LibraryEvent.ebooksChanged(ebooks: $ebooks)';
}


}

/// @nodoc
abstract mixin class _$EbooksChangedCopyWith<$Res> implements $LibraryEventCopyWith<$Res> {
  factory _$EbooksChangedCopyWith(_EbooksChanged value, $Res Function(_EbooksChanged) _then) = __$EbooksChangedCopyWithImpl;
@useResult
$Res call({
 List<EbookEntry> ebooks
});




}
/// @nodoc
class __$EbooksChangedCopyWithImpl<$Res>
    implements _$EbooksChangedCopyWith<$Res> {
  __$EbooksChangedCopyWithImpl(this._self, this._then);

  final _EbooksChanged _self;
  final $Res Function(_EbooksChanged) _then;

/// Create a copy of LibraryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ebooks = null,}) {
  return _then(_EbooksChanged(
null == ebooks ? _self._ebooks : ebooks // ignore: cast_nullable_to_non_nullable
as List<EbookEntry>,
  ));
}


}

/// @nodoc
mixin _$LibraryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState()';
}


}

/// @nodoc
class $LibraryStateCopyWith<$Res>  {
$LibraryStateCopyWith(LibraryState _, $Res Function(LibraryState) __);
}


/// Adds pattern-matching-related methods to [LibraryState].
extension LibraryStatePatterns on LibraryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<EbookEntry> ebooks,  bool isAdding)?  loaded,TResult Function( String message,  List<EbookEntry> ebooks)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.ebooks,_that.isAdding);case _Error() when error != null:
return error(_that.message,_that.ebooks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<EbookEntry> ebooks,  bool isAdding)  loaded,required TResult Function( String message,  List<EbookEntry> ebooks)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.ebooks,_that.isAdding);case _Error():
return error(_that.message,_that.ebooks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<EbookEntry> ebooks,  bool isAdding)?  loaded,TResult? Function( String message,  List<EbookEntry> ebooks)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.ebooks,_that.isAdding);case _Error() when error != null:
return error(_that.message,_that.ebooks);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LibraryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.initial()';
}


}




/// @nodoc


class _Loading implements LibraryState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.loading()';
}


}




/// @nodoc


class _Loaded implements LibraryState {
  const _Loaded(final  List<EbookEntry> ebooks, {this.isAdding = false}): _ebooks = ebooks;
  

 final  List<EbookEntry> _ebooks;
 List<EbookEntry> get ebooks {
  if (_ebooks is EqualUnmodifiableListView) return _ebooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebooks);
}

@JsonKey() final  bool isAdding;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._ebooks, _ebooks)&&(identical(other.isAdding, isAdding) || other.isAdding == isAdding));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebooks),isAdding);

@override
String toString() {
  return 'LibraryState.loaded(ebooks: $ebooks, isAdding: $isAdding)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<EbookEntry> ebooks, bool isAdding
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ebooks = null,Object? isAdding = null,}) {
  return _then(_Loaded(
null == ebooks ? _self._ebooks : ebooks // ignore: cast_nullable_to_non_nullable
as List<EbookEntry>,isAdding: null == isAdding ? _self.isAdding : isAdding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements LibraryState {
  const _Error(this.message, final  List<EbookEntry> ebooks): _ebooks = ebooks;
  

 final  String message;
 final  List<EbookEntry> _ebooks;
 List<EbookEntry> get ebooks {
  if (_ebooks is EqualUnmodifiableListView) return _ebooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebooks);
}


/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._ebooks, _ebooks));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_ebooks));

@override
String toString() {
  return 'LibraryState.error(message: $message, ebooks: $ebooks)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message, List<EbookEntry> ebooks
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? ebooks = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,null == ebooks ? _self._ebooks : ebooks // ignore: cast_nullable_to_non_nullable
as List<EbookEntry>,
  ));
}


}

// dart format on
