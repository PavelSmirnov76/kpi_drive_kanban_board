import '../../domain/entities/folder.dart';
import '../../domain/entities/task.dart';
import '../dto/task_row_dto.dart';

extension TaskRowDtoMapper on TaskRowDto {
  Task toTask() => Task(
    indicatorToMoId: indicatorToMoId,
    name: name,
    folderId: folderId,
    order: order,
    folderName: folderName,
  );
}

extension TaskRowDtoListMapper on List<TaskRowDto> {
  List<Folder> toFolders() {
    final tasksByFolder = <int, List<TaskRowDto>>{};
    final folderNames = <int, String>{};

    for (final row in this) {
      tasksByFolder.putIfAbsent(row.folderId, () => []).add(row);
      if (row.folderId != 0) {
        folderNames[row.folderId] = row.folderName;
      }
    }

    return tasksByFolder.entries
        .map(
          (entry) => Folder(
            folderId: entry.key,
            folderName: folderNames[entry.key] ?? '',
            tasks:
                entry.value.map((dto) => dto.toTask()).toList(growable: false)
                  ..sort((a, b) => a.order.compareTo(b.order)),
          ),
        )
        .toList(growable: false);
  }
}
