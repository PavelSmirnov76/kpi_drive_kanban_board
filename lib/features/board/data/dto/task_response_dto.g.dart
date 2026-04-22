// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskResponseDto _$TaskResponseDtoFromJson(Map<String, dynamic> json) =>
    _TaskResponseDto(
      messages: MessagesDto.fromJson(json['MESSAGES'] as Map<String, dynamic>),
      data: TaskDataDto.fromJson(json['DATA'] as Map<String, dynamic>),
      status: json['STATUS'] as String,
    );

Map<String, dynamic> _$TaskResponseDtoToJson(_TaskResponseDto instance) =>
    <String, dynamic>{
      'MESSAGES': instance.messages,
      'DATA': instance.data,
      'STATUS': instance.status,
    };
