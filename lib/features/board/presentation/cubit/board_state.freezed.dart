// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BoardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BoardState()';
}


}

/// @nodoc
class $BoardStateCopyWith<$Res>  {
$BoardStateCopyWith(BoardState _, $Res Function(BoardState) __);
}


/// Adds pattern-matching-related methods to [BoardState].
extension BoardStatePatterns on BoardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BoardInitial value)?  initial,TResult Function( BoardLoading value)?  loading,TResult Function( BoardLoaded value)?  loaded,TResult Function( BoardError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BoardInitial() when initial != null:
return initial(_that);case BoardLoading() when loading != null:
return loading(_that);case BoardLoaded() when loaded != null:
return loaded(_that);case BoardError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BoardInitial value)  initial,required TResult Function( BoardLoading value)  loading,required TResult Function( BoardLoaded value)  loaded,required TResult Function( BoardError value)  error,}){
final _that = this;
switch (_that) {
case BoardInitial():
return initial(_that);case BoardLoading():
return loading(_that);case BoardLoaded():
return loaded(_that);case BoardError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BoardInitial value)?  initial,TResult? Function( BoardLoading value)?  loading,TResult? Function( BoardLoaded value)?  loaded,TResult? Function( BoardError value)?  error,}){
final _that = this;
switch (_that) {
case BoardInitial() when initial != null:
return initial(_that);case BoardLoading() when loading != null:
return loading(_that);case BoardLoaded() when loaded != null:
return loaded(_that);case BoardError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Folder> folders,  Set<int> syncingTaskIds,  String? moveErrorMessage)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BoardInitial() when initial != null:
return initial();case BoardLoading() when loading != null:
return loading();case BoardLoaded() when loaded != null:
return loaded(_that.folders,_that.syncingTaskIds,_that.moveErrorMessage);case BoardError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Folder> folders,  Set<int> syncingTaskIds,  String? moveErrorMessage)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case BoardInitial():
return initial();case BoardLoading():
return loading();case BoardLoaded():
return loaded(_that.folders,_that.syncingTaskIds,_that.moveErrorMessage);case BoardError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Folder> folders,  Set<int> syncingTaskIds,  String? moveErrorMessage)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case BoardInitial() when initial != null:
return initial();case BoardLoading() when loading != null:
return loading();case BoardLoaded() when loaded != null:
return loaded(_that.folders,_that.syncingTaskIds,_that.moveErrorMessage);case BoardError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BoardInitial implements BoardState {
  const BoardInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BoardState.initial()';
}


}




/// @nodoc


class BoardLoading implements BoardState {
  const BoardLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BoardState.loading()';
}


}




/// @nodoc


class BoardLoaded implements BoardState {
  const BoardLoaded({required final  List<Folder> folders, final  Set<int> syncingTaskIds = const <int>{}, this.moveErrorMessage}): _folders = folders,_syncingTaskIds = syncingTaskIds;
  

 final  List<Folder> _folders;
 List<Folder> get folders {
  if (_folders is EqualUnmodifiableListView) return _folders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_folders);
}

 final  Set<int> _syncingTaskIds;
@JsonKey() Set<int> get syncingTaskIds {
  if (_syncingTaskIds is EqualUnmodifiableSetView) return _syncingTaskIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_syncingTaskIds);
}

 final  String? moveErrorMessage;

/// Create a copy of BoardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardLoadedCopyWith<BoardLoaded> get copyWith => _$BoardLoadedCopyWithImpl<BoardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardLoaded&&const DeepCollectionEquality().equals(other._folders, _folders)&&const DeepCollectionEquality().equals(other._syncingTaskIds, _syncingTaskIds)&&(identical(other.moveErrorMessage, moveErrorMessage) || other.moveErrorMessage == moveErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_folders),const DeepCollectionEquality().hash(_syncingTaskIds),moveErrorMessage);

@override
String toString() {
  return 'BoardState.loaded(folders: $folders, syncingTaskIds: $syncingTaskIds, moveErrorMessage: $moveErrorMessage)';
}


}

/// @nodoc
abstract mixin class $BoardLoadedCopyWith<$Res> implements $BoardStateCopyWith<$Res> {
  factory $BoardLoadedCopyWith(BoardLoaded value, $Res Function(BoardLoaded) _then) = _$BoardLoadedCopyWithImpl;
@useResult
$Res call({
 List<Folder> folders, Set<int> syncingTaskIds, String? moveErrorMessage
});




}
/// @nodoc
class _$BoardLoadedCopyWithImpl<$Res>
    implements $BoardLoadedCopyWith<$Res> {
  _$BoardLoadedCopyWithImpl(this._self, this._then);

  final BoardLoaded _self;
  final $Res Function(BoardLoaded) _then;

/// Create a copy of BoardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? folders = null,Object? syncingTaskIds = null,Object? moveErrorMessage = freezed,}) {
  return _then(BoardLoaded(
folders: null == folders ? _self._folders : folders // ignore: cast_nullable_to_non_nullable
as List<Folder>,syncingTaskIds: null == syncingTaskIds ? _self._syncingTaskIds : syncingTaskIds // ignore: cast_nullable_to_non_nullable
as Set<int>,moveErrorMessage: freezed == moveErrorMessage ? _self.moveErrorMessage : moveErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BoardError implements BoardState {
  const BoardError(this.message);
  

 final  String message;

/// Create a copy of BoardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardErrorCopyWith<BoardError> get copyWith => _$BoardErrorCopyWithImpl<BoardError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BoardState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $BoardErrorCopyWith<$Res> implements $BoardStateCopyWith<$Res> {
  factory $BoardErrorCopyWith(BoardError value, $Res Function(BoardError) _then) = _$BoardErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BoardErrorCopyWithImpl<$Res>
    implements $BoardErrorCopyWith<$Res> {
  _$BoardErrorCopyWithImpl(this._self, this._then);

  final BoardError _self;
  final $Res Function(BoardError) _then;

/// Create a copy of BoardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BoardError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
