import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boardview/board_item.dart';
import 'package:flutter_boardview/board_list.dart';
import 'package:flutter_boardview/boardview.dart';
import 'package:flutter_boardview/boardview_controller.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';

import '../cubit/board_cubit.dart';
import '../cubit/board_state.dart';
import '../models/board_column_state.dart';
import '../models/board_task_cell.dart';
import 'board_column_header.dart';
import 'board_task_name_card.dart';

class BoardPopulated extends StatefulWidget {
  const BoardPopulated({super.key});

  @override
  State<BoardPopulated> createState() => _BoardPopulatedState();
}

class _BoardPopulatedState extends State<BoardPopulated> {
  static const double _boardColumnWidth = 272;
  final BoardViewController _boardViewController = BoardViewController();

  List<BoardColumnState> _columnsFromLoaded(
    BuildContext context,
    BoardLoaded loaded,
  ) {
    return [
      for (final f in loaded.folders)
        BoardColumnState(
          folderId: f.folderId,
          name: f.folderName.trim().isEmpty
              ? context.l10n.boardWithoutFolder
              : f.folderName,
          tasks: [
            for (final t in [
              ...f.tasks,
            ]..sort((a, b) => a.order.compareTo(b.order)))
              BoardTaskCell(
                task: t,
                isSyncing: loaded.syncingTaskIds.contains(t.indicatorToMoId),
              ),
          ],
        ),
    ];
  }

  BoardList _createBoardList(
    BoardCubit cubit,
    List<BoardColumnState> columns,
    int listIndex,
  ) {
    final items = [
      for (var i = 0; i < columns[listIndex].tasks.length; i++)
        _buildBoardItem(cubit, columns, listIndex, i),
    ];

    return BoardList(
      key: ValueKey(
        'col_${columns[listIndex].folderId}_${columns[listIndex].tasks.length}',
      ),
      draggable: true,
      onDropList: cubit.onColumnDropped,
      backgroundColor: AppColors.black800,
      headerBackgroundColor: AppColors.black900,
      header: [
        BoardColumnHeader(
          title: columns[listIndex].name,
          taskCount: columns[listIndex].tasks.length,
        ),
      ],
      items: items,
    );
  }

  BoardItem _buildBoardItem(
    BoardCubit cubit,
    List<BoardColumnState> columns,
    int listIndex,
    int itemIndex,
  ) {
    final cell = columns[listIndex].tasks[itemIndex];
    return BoardItem(
      key: ValueKey(
        '${columns[listIndex].folderId}_${cell.task.indicatorToMoId}',
      ),
      draggable: true,
      onDropItem: (listIndex, itemIndex, oldListIndex, oldItemIndex, state) {
        cubit.onTaskDropped(
          listIndex: listIndex,
          itemIndex: itemIndex,
          oldListIndex: oldListIndex,
          oldItemIndex: oldItemIndex,
        );
      },
      item: BoardTaskNameCard(cell: cell),
    );
  }

  List<BoardList> _buildAllLists(
    BoardCubit cubit,
    List<BoardColumnState> columns,
  ) {
    return [
      for (var i = 0; i < columns.length; i++)
        _createBoardList(cubit, columns, i),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BoardCubit, BoardState>(
      listenWhen: (prev, curr) =>
          curr is BoardLoaded &&
          curr.moveErrorMessage != null &&
          (prev is! BoardLoaded ||
              prev.moveErrorMessage != curr.moveErrorMessage),
      listener: (context, state) {
        final loaded = state as BoardLoaded;
        final msg = loaded.moveErrorMessage;
        if (msg == null || msg.isEmpty) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(msg)));
        context.read<BoardCubit>().clearMoveError();
      },
      builder: (context, state) {
        final loaded = state as BoardLoaded;
        final cubit = context.read<BoardCubit>();
        final columns = _columnsFromLoaded(context, loaded);
        final lists = _buildAllLists(cubit, columns);

        return DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.purple800,
                AppColors.purple600,
                AppColors.pink500,
              ],
            ),
          ),
          child: SafeArea(
            top: true,
            child: BoardView(
              boardViewController: _boardViewController,
              width: _boardColumnWidth,
              lists: lists,
            ),
          ),
        );
      },
    );
  }
}
