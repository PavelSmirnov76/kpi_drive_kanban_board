// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskDataDto _$TaskDataDtoFromJson(Map<String, dynamic> json) => _TaskDataDto(
  page: (json['page'] as num).toInt(),
  pagesCount: (json['pages_count'] as num).toInt(),
  rowsCount: (json['rows_count'] as num).toInt(),
  rowsTotalCount: (json['rows_total_count'] as num).toInt(),
  rows: (json['rows'] as List<dynamic>)
      .map((e) => TaskRowDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TaskDataDtoToJson(_TaskDataDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pages_count': instance.pagesCount,
      'rows_count': instance.rowsCount,
      'rows_total_count': instance.rowsTotalCount,
      'rows': instance.rows,
    };
