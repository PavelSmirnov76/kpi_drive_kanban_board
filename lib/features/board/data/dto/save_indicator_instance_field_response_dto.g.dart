// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_indicator_instance_field_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveIndicatorInstanceFieldResponseDto
_$SaveIndicatorInstanceFieldResponseDtoFromJson(Map<String, dynamic> json) =>
    _SaveIndicatorInstanceFieldResponseDto(
      messages: MessagesDto.fromJson(json['MESSAGES'] as Map<String, dynamic>),
      data: json['DATA'],
      status: json['STATUS'] as String,
    );

Map<String, dynamic> _$SaveIndicatorInstanceFieldResponseDtoToJson(
  _SaveIndicatorInstanceFieldResponseDto instance,
) => <String, dynamic>{
  'MESSAGES': instance.messages,
  'DATA': instance.data,
  'STATUS': instance.status,
};
