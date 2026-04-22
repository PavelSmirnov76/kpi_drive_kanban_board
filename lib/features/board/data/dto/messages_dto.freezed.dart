// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessagesDto {

@JsonKey(name: 'error') List<String>? get error;@JsonKey(name: 'warning') List<String>? get warning;@JsonKey(name: 'info') List<String>? get info;
/// Create a copy of MessagesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagesDtoCopyWith<MessagesDto> get copyWith => _$MessagesDtoCopyWithImpl<MessagesDto>(this as MessagesDto, _$identity);

  /// Serializes this MessagesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagesDto&&const DeepCollectionEquality().equals(other.error, error)&&const DeepCollectionEquality().equals(other.warning, warning)&&const DeepCollectionEquality().equals(other.info, info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),const DeepCollectionEquality().hash(warning),const DeepCollectionEquality().hash(info));

@override
String toString() {
  return 'MessagesDto(error: $error, warning: $warning, info: $info)';
}


}

/// @nodoc
abstract mixin class $MessagesDtoCopyWith<$Res>  {
  factory $MessagesDtoCopyWith(MessagesDto value, $Res Function(MessagesDto) _then) = _$MessagesDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') List<String>? error,@JsonKey(name: 'warning') List<String>? warning,@JsonKey(name: 'info') List<String>? info
});




}
/// @nodoc
class _$MessagesDtoCopyWithImpl<$Res>
    implements $MessagesDtoCopyWith<$Res> {
  _$MessagesDtoCopyWithImpl(this._self, this._then);

  final MessagesDto _self;
  final $Res Function(MessagesDto) _then;

/// Create a copy of MessagesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? warning = freezed,Object? info = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as List<String>?,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as List<String>?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessagesDto].
extension MessagesDtoPatterns on MessagesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagesDto value)  $default,){
final _that = this;
switch (_that) {
case _MessagesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagesDto value)?  $default,){
final _that = this;
switch (_that) {
case _MessagesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  List<String>? error, @JsonKey(name: 'warning')  List<String>? warning, @JsonKey(name: 'info')  List<String>? info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagesDto() when $default != null:
return $default(_that.error,_that.warning,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  List<String>? error, @JsonKey(name: 'warning')  List<String>? warning, @JsonKey(name: 'info')  List<String>? info)  $default,) {final _that = this;
switch (_that) {
case _MessagesDto():
return $default(_that.error,_that.warning,_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  List<String>? error, @JsonKey(name: 'warning')  List<String>? warning, @JsonKey(name: 'info')  List<String>? info)?  $default,) {final _that = this;
switch (_that) {
case _MessagesDto() when $default != null:
return $default(_that.error,_that.warning,_that.info);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagesDto implements MessagesDto {
  const _MessagesDto({@JsonKey(name: 'error') final  List<String>? error, @JsonKey(name: 'warning') final  List<String>? warning, @JsonKey(name: 'info') final  List<String>? info}): _error = error,_warning = warning,_info = info;
  factory _MessagesDto.fromJson(Map<String, dynamic> json) => _$MessagesDtoFromJson(json);

 final  List<String>? _error;
@override@JsonKey(name: 'error') List<String>? get error {
  final value = _error;
  if (value == null) return null;
  if (_error is EqualUnmodifiableListView) return _error;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _warning;
@override@JsonKey(name: 'warning') List<String>? get warning {
  final value = _warning;
  if (value == null) return null;
  if (_warning is EqualUnmodifiableListView) return _warning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _info;
@override@JsonKey(name: 'info') List<String>? get info {
  final value = _info;
  if (value == null) return null;
  if (_info is EqualUnmodifiableListView) return _info;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MessagesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesDtoCopyWith<_MessagesDto> get copyWith => __$MessagesDtoCopyWithImpl<_MessagesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesDto&&const DeepCollectionEquality().equals(other._error, _error)&&const DeepCollectionEquality().equals(other._warning, _warning)&&const DeepCollectionEquality().equals(other._info, _info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_error),const DeepCollectionEquality().hash(_warning),const DeepCollectionEquality().hash(_info));

@override
String toString() {
  return 'MessagesDto(error: $error, warning: $warning, info: $info)';
}


}

/// @nodoc
abstract mixin class _$MessagesDtoCopyWith<$Res> implements $MessagesDtoCopyWith<$Res> {
  factory _$MessagesDtoCopyWith(_MessagesDto value, $Res Function(_MessagesDto) _then) = __$MessagesDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') List<String>? error,@JsonKey(name: 'warning') List<String>? warning,@JsonKey(name: 'info') List<String>? info
});




}
/// @nodoc
class __$MessagesDtoCopyWithImpl<$Res>
    implements _$MessagesDtoCopyWith<$Res> {
  __$MessagesDtoCopyWithImpl(this._self, this._then);

  final _MessagesDto _self;
  final $Res Function(_MessagesDto) _then;

/// Create a copy of MessagesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? warning = freezed,Object? info = freezed,}) {
  return _then(_MessagesDto(
error: freezed == error ? _self._error : error // ignore: cast_nullable_to_non_nullable
as List<String>?,warning: freezed == warning ? _self._warning : warning // ignore: cast_nullable_to_non_nullable
as List<String>?,info: freezed == info ? _self._info : info // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
