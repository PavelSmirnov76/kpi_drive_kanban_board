import 'package:freezed_annotation/freezed_annotation.dart';

import 'messages_dto.dart';

part 'save_indicator_instance_field_response_dto.freezed.dart';
part 'save_indicator_instance_field_response_dto.g.dart';

@freezed
abstract class SaveIndicatorInstanceFieldResponseDto
    with _$SaveIndicatorInstanceFieldResponseDto {
  const factory SaveIndicatorInstanceFieldResponseDto({
    @JsonKey(name: 'MESSAGES') required MessagesDto messages,
    @JsonKey(name: 'DATA') Object? data,
    @JsonKey(name: 'STATUS') required String status,
  }) = _SaveIndicatorInstanceFieldResponseDto;

  factory SaveIndicatorInstanceFieldResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$SaveIndicatorInstanceFieldResponseDtoFromJson(json);
}

extension SaveIndicatorInstanceFieldResponseDtoX
    on SaveIndicatorInstanceFieldResponseDto {
  bool get isMoveAccepted {
    final ok = status.toUpperCase() == 'OK';
    final errs = messages.error;
    return ok && (errs == null || errs.isEmpty);
  }

  String combinedErrorMessage() {
    final parts = <String>[...?messages.error, ...?messages.warning];
    return parts.join('\n');
  }
}
