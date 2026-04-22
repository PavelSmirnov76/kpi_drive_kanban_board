import '../../domain/entities/task.dart';

class BoardTaskCell {
  const BoardTaskCell({required this.task, this.isSyncing = false});

  final Task task;
  final bool isSyncing;
}
