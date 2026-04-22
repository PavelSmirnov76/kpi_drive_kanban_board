import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import '../../../../core/error/failure.dart';
import '../dto/save_indicator_instance_field_response_dto.dart';
import '../dto/task_response_dto.dart';
import 'board_api_service.dart';

abstract interface class BoardRemoteDatasource {
  Future<TaskResponseDto> getTasks({
    String periodStart,
    String periodEnd,
    String periodKey,
    String requestedMoId,
    String behaviourKey,
    String withResult,
    String responseFields,
    String authUserId,
  });

  Future<void> moveTask({
    required int indicatorToMoId,
    required int parentFolderId,
    required int order,
    String periodStart = '2026-04-01',
    String periodEnd = '2026-04-30',
    String periodKey = 'month',
    String authUserId = '40',
  });
}

@LazySingleton(as: BoardRemoteDatasource)
class BoardRemoteDatasourceImpl implements BoardRemoteDatasource {
  const BoardRemoteDatasourceImpl(this._apiService);

  final BoardApiService _apiService;
  AppLocalizations get _l10n => appL10nRu;

  @override
  Future<TaskResponseDto> getTasks({
    String periodStart = '2026-04-01',
    String periodEnd = '2026-04-30',
    String periodKey = 'month',
    String requestedMoId = '42',
    String behaviourKey = 'task,kpi_task',
    String withResult = 'false',
    String responseFields =
        'name,indicator_to_mo_id,parent_id,order,parent_name',
    String authUserId = '40',
  }) async {
    try {
      return await _apiService.getTasks(
        periodStart: periodStart,
        periodEnd: periodEnd,
        periodKey: periodKey,
        requestedMoId: requestedMoId,
        behaviourKey: behaviourKey,
        withResult: withResult,
        responseFields: responseFields,
        authUserId: authUserId,
      );
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      if (statusCode != null && statusCode >= 500) {
        throw ServerFailure(_l10n.errorServer);
      }
      throw NetworkFailure(e.message ?? _l10n.errorNoConnection);
    }
  }

  @override
  Future<void> moveTask({
    required int indicatorToMoId,
    required int parentFolderId,
    required int order,
    String periodStart = '2026-04-01',
    String periodEnd = '2026-04-30',
    String periodKey = 'month',
    String authUserId = '40',
  }) async {
    try {
      final body = FormData.fromMap({
        'period_start': periodStart,
        'period_end': periodEnd,
        'period_key': periodKey,
        'indicator_to_mo_id': indicatorToMoId.toString(),
        'auth_user_id': authUserId,
        'field_name': <String>['parent_id', 'order'],
        'field_value': <String>[parentFolderId.toString(), order.toString()],
      });
      final res = await _apiService.saveIndicatorInstanceField(body);
      if (!res.isMoveAccepted) {
        final msg = res.combinedErrorMessage();
        throw ServerFailure(msg.isEmpty ? _l10n.errorSaveChangesFailed : msg);
      }
    } on Failure {
      rethrow;
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      if (statusCode != null && statusCode >= 500) {
        throw ServerFailure(_l10n.errorServer);
      }
      throw NetworkFailure(e.message ?? _l10n.errorNoConnection);
    }
  }
}
