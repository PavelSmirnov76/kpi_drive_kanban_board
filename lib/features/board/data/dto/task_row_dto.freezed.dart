// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_row_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskRowDto {

 String get name;@JsonKey(name: 'indicator_to_mo_id') int get indicatorToMoId;@JsonKey(name: 'parent_id') int get folderId; int get order;@JsonKey(name: 'parent_name') String get folderName;
/// Create a copy of TaskRowDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskRowDtoCopyWith<TaskRowDto> get copyWith => _$TaskRowDtoCopyWithImpl<TaskRowDto>(this as TaskRowDto, _$identity);

  /// Serializes this TaskRowDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskRowDto&&(identical(other.name, name) || other.name == name)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.order, order) || other.order == order)&&(identical(other.folderName, folderName) || other.folderName == folderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,indicatorToMoId,folderId,order,folderName);

@override
String toString() {
  return 'TaskRowDto(name: $name, indicatorToMoId: $indicatorToMoId, folderId: $folderId, order: $order, folderName: $folderName)';
}


}

/// @nodoc
abstract mixin class $TaskRowDtoCopyWith<$Res>  {
  factory $TaskRowDtoCopyWith(TaskRowDto value, $Res Function(TaskRowDto) _then) = _$TaskRowDtoCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,@JsonKey(name: 'parent_id') int folderId, int order,@JsonKey(name: 'parent_name') String folderName
});




}
/// @nodoc
class _$TaskRowDtoCopyWithImpl<$Res>
    implements $TaskRowDtoCopyWith<$Res> {
  _$TaskRowDtoCopyWithImpl(this._self, this._then);

  final TaskRowDto _self;
  final $Res Function(TaskRowDto) _then;

/// Create a copy of TaskRowDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? indicatorToMoId = null,Object? folderId = null,Object? order = null,Object? folderName = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,indicatorToMoId: null == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int,folderId: null == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,folderName: null == folderName ? _self.folderName : folderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskRowDto].
extension TaskRowDtoPatterns on TaskRowDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskRowDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskRowDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskRowDto value)  $default,){
final _that = this;
switch (_that) {
case _TaskRowDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskRowDto value)?  $default,){
final _that = this;
switch (_that) {
case _TaskRowDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'parent_id')  int folderId,  int order, @JsonKey(name: 'parent_name')  String folderName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskRowDto() when $default != null:
return $default(_that.name,_that.indicatorToMoId,_that.folderId,_that.order,_that.folderName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'parent_id')  int folderId,  int order, @JsonKey(name: 'parent_name')  String folderName)  $default,) {final _that = this;
switch (_that) {
case _TaskRowDto():
return $default(_that.name,_that.indicatorToMoId,_that.folderId,_that.order,_that.folderName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'parent_id')  int folderId,  int order, @JsonKey(name: 'parent_name')  String folderName)?  $default,) {final _that = this;
switch (_that) {
case _TaskRowDto() when $default != null:
return $default(_that.name,_that.indicatorToMoId,_that.folderId,_that.order,_that.folderName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskRowDto implements TaskRowDto {
  const _TaskRowDto({required this.name, @JsonKey(name: 'indicator_to_mo_id') required this.indicatorToMoId, @JsonKey(name: 'parent_id') required this.folderId, required this.order, @JsonKey(name: 'parent_name') required this.folderName});
  factory _TaskRowDto.fromJson(Map<String, dynamic> json) => _$TaskRowDtoFromJson(json);

@override final  String name;
@override@JsonKey(name: 'indicator_to_mo_id') final  int indicatorToMoId;
@override@JsonKey(name: 'parent_id') final  int folderId;
@override final  int order;
@override@JsonKey(name: 'parent_name') final  String folderName;

/// Create a copy of TaskRowDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskRowDtoCopyWith<_TaskRowDto> get copyWith => __$TaskRowDtoCopyWithImpl<_TaskRowDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskRowDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskRowDto&&(identical(other.name, name) || other.name == name)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.order, order) || other.order == order)&&(identical(other.folderName, folderName) || other.folderName == folderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,indicatorToMoId,folderId,order,folderName);

@override
String toString() {
  return 'TaskRowDto(name: $name, indicatorToMoId: $indicatorToMoId, folderId: $folderId, order: $order, folderName: $folderName)';
}


}

/// @nodoc
abstract mixin class _$TaskRowDtoCopyWith<$Res> implements $TaskRowDtoCopyWith<$Res> {
  factory _$TaskRowDtoCopyWith(_TaskRowDto value, $Res Function(_TaskRowDto) _then) = __$TaskRowDtoCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,@JsonKey(name: 'parent_id') int folderId, int order,@JsonKey(name: 'parent_name') String folderName
});




}
/// @nodoc
class __$TaskRowDtoCopyWithImpl<$Res>
    implements _$TaskRowDtoCopyWith<$Res> {
  __$TaskRowDtoCopyWithImpl(this._self, this._then);

  final _TaskRowDto _self;
  final $Res Function(_TaskRowDto) _then;

/// Create a copy of TaskRowDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? indicatorToMoId = null,Object? folderId = null,Object? order = null,Object? folderName = null,}) {
  return _then(_TaskRowDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,indicatorToMoId: null == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int,folderId: null == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,folderName: null == folderName ? _self.folderName : folderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
