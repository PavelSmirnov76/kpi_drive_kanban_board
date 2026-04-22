import 'board_task_cell.dart';

class BoardColumnState {
  BoardColumnState({
    required this.folderId,
    required this.name,
    required this.tasks,
  });

  final int folderId;
  final String name;
  final List<BoardTaskCell> tasks;
}
