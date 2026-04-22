import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_row_dto.freezed.dart';
part 'task_row_dto.g.dart';

@freezed
abstract class TaskRowDto with _$TaskRowDto {
  const factory TaskRowDto({
    required String name,
    @JsonKey(name: 'indicator_to_mo_id') required int indicatorToMoId,
    @JsonKey(name: 'parent_id') required int folderId,
    required int order,
    @JsonKey(name: 'parent_name') required String folderName,
  }) = _TaskRowDto;

  factory TaskRowDto.fromJson(Map<String, dynamic> json) =>
      _$TaskRowDtoFromJson(json);
}
