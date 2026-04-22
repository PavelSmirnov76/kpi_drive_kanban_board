import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_dto.freezed.dart';
part 'messages_dto.g.dart';

@freezed
abstract class MessagesDto with _$MessagesDto {
  const factory MessagesDto({
    @JsonKey(name: 'error') List<String>? error,
    @JsonKey(name: 'warning') List<String>? warning,
    @JsonKey(name: 'info') List<String>? info,
  }) = _MessagesDto;

  factory MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$MessagesDtoFromJson(json);
}
