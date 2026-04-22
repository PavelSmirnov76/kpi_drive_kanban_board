import 'package:freezed_annotation/freezed_annotation.dart';
import 'task_row_dto.dart';

part 'task_data_dto.freezed.dart';
part 'task_data_dto.g.dart';

@freezed
abstract class TaskDataDto with _$TaskDataDto {
  const factory TaskDataDto({
    required int page,
    @JsonKey(name: 'pages_count') required int pagesCount,
    @JsonKey(name: 'rows_count') required int rowsCount,
    @JsonKey(name: 'rows_total_count') required int rowsTotalCount,
    required List<TaskRowDto> rows,
  }) = _TaskDataDto;

  factory TaskDataDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDataDtoFromJson(json);
}
