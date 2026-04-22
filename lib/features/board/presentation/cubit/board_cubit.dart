import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import 'board_state.dart';
import '../../domain/entities/folder.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/board_repository.dart';
import '../utils/board_folders_mutation.dart';
import '../utils/board_task_order_for_api.dart';

@injectable
class BoardCubit extends Cubit<BoardState> {
  BoardCubit(this._repository) : super(const BoardInitial());

  final BoardRepository _repository;

  void _emitMoveRollback(
    BoardLoaded currentState,
    List<Folder> foldersBeforeMove,
    String message,
  ) {
    emit(
      BoardLoaded(
        folders: foldersBeforeMove,
        syncingTaskIds: currentState.syncingTaskIds,
        moveErrorMessage: message,
      ),
    );
  }

  Future<void> loadTasks({
    String? periodStart,
    String? periodEnd,
    String? periodKey,
    String? requestedMoId,
  }) async {
    emit(const BoardLoading());
    try {
      final folders = await _repository.getTasks(
        periodStart: periodStart,
        periodEnd: periodEnd,
        periodKey: periodKey,
        requestedMoId: requestedMoId,
      );
      emit(BoardLoaded(folders: folders));
    } catch (e) {
      emit(BoardError(e.toString()));
    }
  }

  void clearMoveError() {
    final s = state;
    if (s is! BoardLoaded || s.moveErrorMessage == null) return;
    emit(BoardLoaded(folders: s.folders, syncingTaskIds: s.syncingTaskIds));
  }

  void onColumnDropped(int? newIndex, int? oldIndex) {
    final s = state;
    if (s is! BoardLoaded) return;
    if (newIndex == null || oldIndex == null) return;
    if (oldIndex < 0 || oldIndex >= s.folders.length) return;
    if (newIndex < 0 || newIndex >= s.folders.length) return;

    emit(
      BoardLoaded(
        folders: applyBoardColumnReorder(s.folders, oldIndex, newIndex),
        syncingTaskIds: s.syncingTaskIds,
      ),
    );
  }

  Future<void> onTaskDropped({
    required int? listIndex,
    required int? itemIndex,
    required int? oldListIndex,
    required int? oldItemIndex,
  }) async {
    final s = state;
    if (s is! BoardLoaded) return;

    if (listIndex == null ||
        itemIndex == null ||
        oldListIndex == null ||
        oldItemIndex == null) {
      return;
    }
    if (oldListIndex < 0 ||
        oldListIndex >= s.folders.length ||
        listIndex < 0 ||
        listIndex >= s.folders.length) {
      return;
    }

    final sortedSrc = [...s.folders[oldListIndex].tasks]
      ..sort((a, b) => a.order.compareTo(b.order));
    if (oldItemIndex < 0 || oldItemIndex >= sortedSrc.length) return;

    final taskId = sortedSrc[oldItemIndex].indicatorToMoId;
    final toFolderId = s.folders[listIndex].folderId;

    final sameColumn = oldListIndex == listIndex;
    final sortedDest = [...s.folders[listIndex].tasks]
      ..sort((a, b) => a.order.compareTo(b.order));

    final insertAfterRemoval = boardInsertIndexAfterRemoval(
      sameColumn: sameColumn,
      oldItemIndex: oldItemIndex,
      rawItemIndex: itemIndex,
      destColumnLengthWithDraggedIfSame: sortedDest.length,
    );

    final sortedDestWithoutMoved = sameColumn
        ? (List<Task>.from(sortedDest)..removeAt(oldItemIndex))
        : sortedDest;

    final apiOrder = apiOrderValueForInsert(
      sortedDestWithoutMoved,
      insertAfterRemoval,
    );

    final foldersBeforeMove = cloneFolderList(s.folders);
    final optimisticFolders = applyBoardTaskDrop(
      s.folders,
      oldListIndex,
      oldItemIndex,
      listIndex,
      insertAfterRemoval,
      apiOrder,
    );

    emit(
      BoardLoaded(
        folders: optimisticFolders,
        syncingTaskIds: {...s.syncingTaskIds, taskId},
      ),
    );

    try {
      await _repository.moveTask(
        indicatorToMoId: taskId,
        parentFolderId: toFolderId,
        order: apiOrder,
      );
    } on Failure catch (e) {
      if (state is! BoardLoaded) return;
      _emitMoveRollback(s, foldersBeforeMove, e.message);
      return;
    } catch (e) {
      if (state is! BoardLoaded) return;
      _emitMoveRollback(s, foldersBeforeMove, e.toString());
      return;
    }

    final cur = state;
    if (cur is! BoardLoaded) return;
    emit(
      BoardLoaded(
        folders: cur.folders,
        syncingTaskIds: cur.syncingTaskIds.difference({taskId}),
      ),
    );
  }
}
