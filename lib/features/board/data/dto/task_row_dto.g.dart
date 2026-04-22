// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_row_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskRowDto _$TaskRowDtoFromJson(Map<String, dynamic> json) => _TaskRowDto(
  name: json['name'] as String,
  indicatorToMoId: (json['indicator_to_mo_id'] as num).toInt(),
  folderId: (json['parent_id'] as num).toInt(),
  order: (json['order'] as num).toInt(),
  folderName: json['parent_name'] as String,
);

Map<String, dynamic> _$TaskRowDtoToJson(_TaskRowDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'indicator_to_mo_id': instance.indicatorToMoId,
      'parent_id': instance.folderId,
      'order': instance.order,
      'parent_name': instance.folderName,
    };
