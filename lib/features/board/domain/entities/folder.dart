import 'package:freezed_annotation/freezed_annotation.dart';
import 'task.dart';

part 'folder.freezed.dart';

@freezed
abstract class Folder with _$Folder {
  const factory Folder({
    required int folderId,
    required String folderName,
    required List<Task> tasks,
  }) = _Folder;
}
