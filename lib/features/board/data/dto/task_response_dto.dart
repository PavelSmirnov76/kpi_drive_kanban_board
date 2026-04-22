import 'package:freezed_annotation/freezed_annotation.dart';
import 'messages_dto.dart';
import 'task_data_dto.dart';

part 'task_response_dto.freezed.dart';
part 'task_response_dto.g.dart';

@freezed
abstract class TaskResponseDto with _$TaskResponseDto {
  const factory TaskResponseDto({
    @JsonKey(name: 'MESSAGES') required MessagesDto messages,
    @JsonKey(name: 'DATA') required TaskDataDto data,
    @JsonKey(name: 'STATUS') required String status,
  }) = _TaskResponseDto;

  factory TaskResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseDtoFromJson(json);
}
