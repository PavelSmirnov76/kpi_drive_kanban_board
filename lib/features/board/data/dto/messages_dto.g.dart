// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessagesDto _$MessagesDtoFromJson(Map<String, dynamic> json) => _MessagesDto(
  error: (json['error'] as List<dynamic>?)?.map((e) => e as String).toList(),
  warning: (json['warning'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  info: (json['info'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$MessagesDtoToJson(_MessagesDto instance) =>
    <String, dynamic>{
      'error': instance.error,
      'warning': instance.warning,
      'info': instance.info,
    };
