import 'package:injectable/injectable.dart';
import '../../domain/entities/folder.dart';
import '../../domain/repositories/board_repository.dart';
import '../datasources/board_remote_datasource.dart';
import '../mappers/task_row_dto_mapper.dart';

@LazySingleton(as: BoardRepository)
class BoardRepositoryImpl implements BoardRepository {
  const BoardRepositoryImpl(this._datasource);

  final BoardRemoteDatasource _datasource;

  @override
  Future<List<Folder>> getTasks({
    String? periodStart,
    String? periodEnd,
    String? periodKey,
    String? requestedMoId,
  }) async {
    final response = await _datasource.getTasks(
      periodStart: periodStart ?? '2026-04-01',
      periodEnd: periodEnd ?? '2026-04-30',
      periodKey: periodKey ?? 'month',
      requestedMoId: requestedMoId ?? '42',
    );

    return response.data.rows.toFolders();
  }

  @override
  Future<void> moveTask({
    required int indicatorToMoId,
    required int parentFolderId,
    required int order,
    String? periodStart,
    String? periodEnd,
    String? periodKey,
    String? authUserId,
  }) {
    return _datasource.moveTask(
      indicatorToMoId: indicatorToMoId,
      parentFolderId: parentFolderId,
      order: order,
      periodStart: periodStart ?? '2026-04-01',
      periodEnd: periodEnd ?? '2026-04-30',
      periodKey: periodKey ?? 'month',
      authUserId: authUserId ?? '40',
    );
  }
}
