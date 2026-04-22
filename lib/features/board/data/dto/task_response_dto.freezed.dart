// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskResponseDto {

@JsonKey(name: 'MESSAGES') MessagesDto get messages;@JsonKey(name: 'DATA') TaskDataDto get data;@JsonKey(name: 'STATUS') String get status;
/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskResponseDtoCopyWith<TaskResponseDto> get copyWith => _$TaskResponseDtoCopyWithImpl<TaskResponseDto>(this as TaskResponseDto, _$identity);

  /// Serializes this TaskResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.data, data) || other.data == data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,data,status);

@override
String toString() {
  return 'TaskResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class $TaskResponseDtoCopyWith<$Res>  {
  factory $TaskResponseDtoCopyWith(TaskResponseDto value, $Res Function(TaskResponseDto) _then) = _$TaskResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MESSAGES') MessagesDto messages,@JsonKey(name: 'DATA') TaskDataDto data,@JsonKey(name: 'STATUS') String status
});


$MessagesDtoCopyWith<$Res> get messages;$TaskDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$TaskResponseDtoCopyWithImpl<$Res>
    implements $TaskResponseDtoCopyWith<$Res> {
  _$TaskResponseDtoCopyWithImpl(this._self, this._then);

  final TaskResponseDto _self;
  final $Res Function(TaskResponseDto) _then;

/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? data = null,Object? status = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as MessagesDto,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TaskDataDto,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagesDtoCopyWith<$Res> get messages {
  
  return $MessagesDtoCopyWith<$Res>(_self.messages, (value) {
    return _then(_self.copyWith(messages: value));
  });
}/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskDataDtoCopyWith<$Res> get data {
  
  return $TaskDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TaskResponseDto].
extension TaskResponseDtoPatterns on TaskResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TaskResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TaskResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  TaskDataDto data, @JsonKey(name: 'STATUS')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskResponseDto() when $default != null:
return $default(_that.messages,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  TaskDataDto data, @JsonKey(name: 'STATUS')  String status)  $default,) {final _that = this;
switch (_that) {
case _TaskResponseDto():
return $default(_that.messages,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  TaskDataDto data, @JsonKey(name: 'STATUS')  String status)?  $default,) {final _that = this;
switch (_that) {
case _TaskResponseDto() when $default != null:
return $default(_that.messages,_that.data,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskResponseDto implements TaskResponseDto {
  const _TaskResponseDto({@JsonKey(name: 'MESSAGES') required this.messages, @JsonKey(name: 'DATA') required this.data, @JsonKey(name: 'STATUS') required this.status});
  factory _TaskResponseDto.fromJson(Map<String, dynamic> json) => _$TaskResponseDtoFromJson(json);

@override@JsonKey(name: 'MESSAGES') final  MessagesDto messages;
@override@JsonKey(name: 'DATA') final  TaskDataDto data;
@override@JsonKey(name: 'STATUS') final  String status;

/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskResponseDtoCopyWith<_TaskResponseDto> get copyWith => __$TaskResponseDtoCopyWithImpl<_TaskResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.data, data) || other.data == data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,data,status);

@override
String toString() {
  return 'TaskResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TaskResponseDtoCopyWith<$Res> implements $TaskResponseDtoCopyWith<$Res> {
  factory _$TaskResponseDtoCopyWith(_TaskResponseDto value, $Res Function(_TaskResponseDto) _then) = __$TaskResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MESSAGES') MessagesDto messages,@JsonKey(name: 'DATA') TaskDataDto data,@JsonKey(name: 'STATUS') String status
});


@override $MessagesDtoCopyWith<$Res> get messages;@override $TaskDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$TaskResponseDtoCopyWithImpl<$Res>
    implements _$TaskResponseDtoCopyWith<$Res> {
  __$TaskResponseDtoCopyWithImpl(this._self, this._then);

  final _TaskResponseDto _self;
  final $Res Function(_TaskResponseDto) _then;

/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? data = null,Object? status = null,}) {
  return _then(_TaskResponseDto(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as MessagesDto,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TaskDataDto,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagesDtoCopyWith<$Res> get messages {
  
  return $MessagesDtoCopyWith<$Res>(_self.messages, (value) {
    return _then(_self.copyWith(messages: value));
  });
}/// Create a copy of TaskResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskDataDtoCopyWith<$Res> get data {
  
  return $TaskDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
