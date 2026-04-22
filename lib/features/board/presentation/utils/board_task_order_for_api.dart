import '../../domain/entities/task.dart';

int boardInsertIndexAfterRemoval({
  required bool sameColumn,
  required int oldItemIndex,
  required int rawItemIndex,
  required int destColumnLengthWithDraggedIfSame,
}) {
  if (!sameColumn) {
    return rawItemIndex.clamp(0, destColumnLengthWithDraggedIfSame);
  }
  var pos = rawItemIndex.clamp(0, destColumnLengthWithDraggedIfSame);
  if (oldItemIndex < pos) {
    pos -= 1;
  }
  return pos.clamp(0, destColumnLengthWithDraggedIfSame - 1);
}

int apiOrderValueForInsert(List<Task> sortedWithoutMoved, int insertIndex) {
  if (sortedWithoutMoved.isEmpty) {
    return 0;
  }
  if (insertIndex <= 0) {
    final first = sortedWithoutMoved.first.order;
    return first > 0 ? first - 1 : 0;
  }
  if (insertIndex >= sortedWithoutMoved.length) {
    return sortedWithoutMoved.last.order + 1;
  }
  return sortedWithoutMoved[insertIndex - 1].order + 1;
}
