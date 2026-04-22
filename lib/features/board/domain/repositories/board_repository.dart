import '../entities/folder.dart';

abstract interface class BoardRepository {
  Future<List<Folder>> getTasks({
    String? periodStart,
    String? periodEnd,
    String? periodKey,
    String? requestedMoId,
  });

  Future<void> moveTask({
    required int indicatorToMoId,
    required int parentFolderId,
    required int order,
    String? periodStart,
    String? periodEnd,
    String? periodKey,
    String? authUserId,
  });
}
