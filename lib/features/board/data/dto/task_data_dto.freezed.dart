// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskDataDto {

 int get page;@JsonKey(name: 'pages_count') int get pagesCount;@JsonKey(name: 'rows_count') int get rowsCount;@JsonKey(name: 'rows_total_count') int get rowsTotalCount; List<TaskRowDto> get rows;
/// Create a copy of TaskDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskDataDtoCopyWith<TaskDataDto> get copyWith => _$TaskDataDtoCopyWithImpl<TaskDataDto>(this as TaskDataDto, _$identity);

  /// Serializes this TaskDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskDataDto&&(identical(other.page, page) || other.page == page)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.rowsCount, rowsCount) || other.rowsCount == rowsCount)&&(identical(other.rowsTotalCount, rowsTotalCount) || other.rowsTotalCount == rowsTotalCount)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pagesCount,rowsCount,rowsTotalCount,const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'TaskDataDto(page: $page, pagesCount: $pagesCount, rowsCount: $rowsCount, rowsTotalCount: $rowsTotalCount, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $TaskDataDtoCopyWith<$Res>  {
  factory $TaskDataDtoCopyWith(TaskDataDto value, $Res Function(TaskDataDto) _then) = _$TaskDataDtoCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: 'pages_count') int pagesCount,@JsonKey(name: 'rows_count') int rowsCount,@JsonKey(name: 'rows_total_count') int rowsTotalCount, List<TaskRowDto> rows
});




}
/// @nodoc
class _$TaskDataDtoCopyWithImpl<$Res>
    implements $TaskDataDtoCopyWith<$Res> {
  _$TaskDataDtoCopyWithImpl(this._self, this._then);

  final TaskDataDto _self;
  final $Res Function(TaskDataDto) _then;

/// Create a copy of TaskDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pagesCount = null,Object? rowsCount = null,Object? rowsTotalCount = null,Object? rows = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pagesCount: null == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int,rowsCount: null == rowsCount ? _self.rowsCount : rowsCount // ignore: cast_nullable_to_non_nullable
as int,rowsTotalCount: null == rowsTotalCount ? _self.rowsTotalCount : rowsTotalCount // ignore: cast_nullable_to_non_nullable
as int,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<TaskRowDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskDataDto].
extension TaskDataDtoPatterns on TaskDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskDataDto value)  $default,){
final _that = this;
switch (_that) {
case _TaskDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _TaskDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'pages_count')  int pagesCount, @JsonKey(name: 'rows_count')  int rowsCount, @JsonKey(name: 'rows_total_count')  int rowsTotalCount,  List<TaskRowDto> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskDataDto() when $default != null:
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'pages_count')  int pagesCount, @JsonKey(name: 'rows_count')  int rowsCount, @JsonKey(name: 'rows_total_count')  int rowsTotalCount,  List<TaskRowDto> rows)  $default,) {final _that = this;
switch (_that) {
case _TaskDataDto():
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: 'pages_count')  int pagesCount, @JsonKey(name: 'rows_count')  int rowsCount, @JsonKey(name: 'rows_total_count')  int rowsTotalCount,  List<TaskRowDto> rows)?  $default,) {final _that = this;
switch (_that) {
case _TaskDataDto() when $default != null:
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskDataDto implements TaskDataDto {
  const _TaskDataDto({required this.page, @JsonKey(name: 'pages_count') required this.pagesCount, @JsonKey(name: 'rows_count') required this.rowsCount, @JsonKey(name: 'rows_total_count') required this.rowsTotalCount, required final  List<TaskRowDto> rows}): _rows = rows;
  factory _TaskDataDto.fromJson(Map<String, dynamic> json) => _$TaskDataDtoFromJson(json);

@override final  int page;
@override@JsonKey(name: 'pages_count') final  int pagesCount;
@override@JsonKey(name: 'rows_count') final  int rowsCount;
@override@JsonKey(name: 'rows_total_count') final  int rowsTotalCount;
 final  List<TaskRowDto> _rows;
@override List<TaskRowDto> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of TaskDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskDataDtoCopyWith<_TaskDataDto> get copyWith => __$TaskDataDtoCopyWithImpl<_TaskDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskDataDto&&(identical(other.page, page) || other.page == page)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.rowsCount, rowsCount) || other.rowsCount == rowsCount)&&(identical(other.rowsTotalCount, rowsTotalCount) || other.rowsTotalCount == rowsTotalCount)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pagesCount,rowsCount,rowsTotalCount,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'TaskDataDto(page: $page, pagesCount: $pagesCount, rowsCount: $rowsCount, rowsTotalCount: $rowsTotalCount, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$TaskDataDtoCopyWith<$Res> implements $TaskDataDtoCopyWith<$Res> {
  factory _$TaskDataDtoCopyWith(_TaskDataDto value, $Res Function(_TaskDataDto) _then) = __$TaskDataDtoCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: 'pages_count') int pagesCount,@JsonKey(name: 'rows_count') int rowsCount,@JsonKey(name: 'rows_total_count') int rowsTotalCount, List<TaskRowDto> rows
});




}
/// @nodoc
class __$TaskDataDtoCopyWithImpl<$Res>
    implements _$TaskDataDtoCopyWith<$Res> {
  __$TaskDataDtoCopyWithImpl(this._self, this._then);

  final _TaskDataDto _self;
  final $Res Function(_TaskDataDto) _then;

/// Create a copy of TaskDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pagesCount = null,Object? rowsCount = null,Object? rowsTotalCount = null,Object? rows = null,}) {
  return _then(_TaskDataDto(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pagesCount: null == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int,rowsCount: null == rowsCount ? _self.rowsCount : rowsCount // ignore: cast_nullable_to_non_nullable
as int,rowsTotalCount: null == rowsTotalCount ? _self.rowsTotalCount : rowsTotalCount // ignore: cast_nullable_to_non_nullable
as int,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<TaskRowDto>,
  ));
}


}

// dart format on
