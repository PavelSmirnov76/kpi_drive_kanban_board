import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../dto/save_indicator_instance_field_response_dto.dart';
import '../dto/task_response_dto.dart';

part 'board_api_service.g.dart';

@RestApi(baseUrl: 'https://api.dev.kpi-drive.ru')
abstract class BoardApiService {
  factory BoardApiService(Dio dio, {String baseUrl}) = _BoardApiService;

  @POST('/_api/indicators/save_indicator_instance_field')
  Future<SaveIndicatorInstanceFieldResponseDto> saveIndicatorInstanceField(
    @Body() FormData body,
  );

  @POST('/_api/indicators/get_mo_indicators')
  @MultiPart()
  Future<TaskResponseDto> getTasks({
    @Part(name: 'period_start') required String periodStart,
    @Part(name: 'period_end') required String periodEnd,
    @Part(name: 'period_key') required String periodKey,
    @Part(name: 'requested_mo_id') required String requestedMoId,
    @Part(name: 'behaviour_key') required String behaviourKey,
    @Part(name: 'with_result') required String withResult,
    @Part(name: 'response_fields') required String responseFields,
    @Part(name: 'auth_user_id') required String authUserId,
  });
}
