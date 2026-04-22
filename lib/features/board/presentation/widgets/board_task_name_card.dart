import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';

import '../models/board_task_cell.dart';

class BoardTaskNameCard extends StatelessWidget {
  const BoardTaskNameCard({super.key, required this.cell});

  final BoardTaskCell cell;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(8);
    Widget core = Material(
      color: AppColors.black700,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            cell.task.name,
            style: context.typography.bodyRegular.copyWith(
              color: AppColors.white100,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );

    if (cell.isSyncing) {
      core = Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Opacity(opacity: 0.4, child: core),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.overlayDark40,
                borderRadius: radius,
              ),
              child: Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: AppColors.white100,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: core,
    );
  }
}
