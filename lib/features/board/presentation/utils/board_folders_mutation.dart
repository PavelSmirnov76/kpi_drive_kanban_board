import '../../domain/entities/folder.dart';
import '../../domain/entities/task.dart';

List<Folder> cloneFolderList(List<Folder> folders) => [
  for (final f in folders) f.copyWith(tasks: List<Task>.from(f.tasks)),
];

List<Task> _sortedTasks(Folder f) =>
    [...f.tasks]..sort((a, b) => a.order.compareTo(b.order));

List<Folder> applyBoardTaskDrop(
  List<Folder> folders,
  int oldListIndex,
  int oldItemIndex,
  int newListIndex,
  int insertIndexAfterRemoval,
  int newOrderForMovedTask,
) {
  final cols = [for (final f in folders) List<Task>.from(_sortedTasks(f))];

  final task = cols[oldListIndex].removeAt(oldItemIndex);
  final insertAt = insertIndexAfterRemoval.clamp(0, cols[newListIndex].length);
  final targetFolder = folders[newListIndex];
  final moved = task.copyWith(
    order: newOrderForMovedTask,
    folderId: targetFolder.folderId,
    folderName: targetFolder.folderName,
  );
  cols[newListIndex].insert(insertAt, moved);

  return [
    for (var i = 0; i < folders.length; i++)
      folders[i].copyWith(tasks: cols[i]),
  ];
}

List<Folder> applyBoardColumnReorder(
  List<Folder> folders,
  int oldIndex,
  int newIndex,
) {
  final list = List<Folder>.from(folders);
  final col = list.removeAt(oldIndex);
  list.insert(newIndex, col);
  return list;
}
