// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_indicator_instance_field_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveIndicatorInstanceFieldResponseDto {

@JsonKey(name: 'MESSAGES') MessagesDto get messages;@JsonKey(name: 'DATA') Object? get data;@JsonKey(name: 'STATUS') String get status;
/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveIndicatorInstanceFieldResponseDtoCopyWith<SaveIndicatorInstanceFieldResponseDto> get copyWith => _$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl<SaveIndicatorInstanceFieldResponseDto>(this as SaveIndicatorInstanceFieldResponseDto, _$identity);

  /// Serializes this SaveIndicatorInstanceFieldResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveIndicatorInstanceFieldResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,const DeepCollectionEquality().hash(data),status);

@override
String toString() {
  return 'SaveIndicatorInstanceFieldResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class $SaveIndicatorInstanceFieldResponseDtoCopyWith<$Res>  {
  factory $SaveIndicatorInstanceFieldResponseDtoCopyWith(SaveIndicatorInstanceFieldResponseDto value, $Res Function(SaveIndicatorInstanceFieldResponseDto) _then) = _$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MESSAGES') MessagesDto messages,@JsonKey(name: 'DATA') Object? data,@JsonKey(name: 'STATUS') String status
});


$MessagesDtoCopyWith<$Res> get messages;

}
/// @nodoc
class _$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl<$Res>
    implements $SaveIndicatorInstanceFieldResponseDtoCopyWith<$Res> {
  _$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl(this._self, this._then);

  final SaveIndicatorInstanceFieldResponseDto _self;
  final $Res Function(SaveIndicatorInstanceFieldResponseDto) _then;

/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? data = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as MessagesDto,data: freezed == data ? _self.data : data ,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagesDtoCopyWith<$Res> get messages {
  
  return $MessagesDtoCopyWith<$Res>(_self.messages, (value) {
    return _then(_self.copyWith(messages: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveIndicatorInstanceFieldResponseDto].
extension SaveIndicatorInstanceFieldResponseDtoPatterns on SaveIndicatorInstanceFieldResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveIndicatorInstanceFieldResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveIndicatorInstanceFieldResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveIndicatorInstanceFieldResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  Object? data, @JsonKey(name: 'STATUS')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  Object? data, @JsonKey(name: 'STATUS')  String status)  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MESSAGES')  MessagesDto messages, @JsonKey(name: 'DATA')  Object? data, @JsonKey(name: 'STATUS')  String status)?  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorInstanceFieldResponseDto() when $default != null:
return $default(_that.messages,_that.data,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveIndicatorInstanceFieldResponseDto implements SaveIndicatorInstanceFieldResponseDto {
  const _SaveIndicatorInstanceFieldResponseDto({@JsonKey(name: 'MESSAGES') required this.messages, @JsonKey(name: 'DATA') this.data, @JsonKey(name: 'STATUS') required this.status});
  factory _SaveIndicatorInstanceFieldResponseDto.fromJson(Map<String, dynamic> json) => _$SaveIndicatorInstanceFieldResponseDtoFromJson(json);

@override@JsonKey(name: 'MESSAGES') final  MessagesDto messages;
@override@JsonKey(name: 'DATA') final  Object? data;
@override@JsonKey(name: 'STATUS') final  String status;

/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveIndicatorInstanceFieldResponseDtoCopyWith<_SaveIndicatorInstanceFieldResponseDto> get copyWith => __$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl<_SaveIndicatorInstanceFieldResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveIndicatorInstanceFieldResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveIndicatorInstanceFieldResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,const DeepCollectionEquality().hash(data),status);

@override
String toString() {
  return 'SaveIndicatorInstanceFieldResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SaveIndicatorInstanceFieldResponseDtoCopyWith<$Res> implements $SaveIndicatorInstanceFieldResponseDtoCopyWith<$Res> {
  factory _$SaveIndicatorInstanceFieldResponseDtoCopyWith(_SaveIndicatorInstanceFieldResponseDto value, $Res Function(_SaveIndicatorInstanceFieldResponseDto) _then) = __$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MESSAGES') MessagesDto messages,@JsonKey(name: 'DATA') Object? data,@JsonKey(name: 'STATUS') String status
});


@override $MessagesDtoCopyWith<$Res> get messages;

}
/// @nodoc
class __$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl<$Res>
    implements _$SaveIndicatorInstanceFieldResponseDtoCopyWith<$Res> {
  __$SaveIndicatorInstanceFieldResponseDtoCopyWithImpl(this._self, this._then);

  final _SaveIndicatorInstanceFieldResponseDto _self;
  final $Res Function(_SaveIndicatorInstanceFieldResponseDto) _then;

/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? data = freezed,Object? status = null,}) {
  return _then(_SaveIndicatorInstanceFieldResponseDto(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as MessagesDto,data: freezed == data ? _self.data : data ,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SaveIndicatorInstanceFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessagesDtoCopyWith<$Res> get messages {
  
  return $MessagesDtoCopyWith<$Res>(_self.messages, (value) {
    return _then(_self.copyWith(messages: value));
  });
}
}

// dart format on
