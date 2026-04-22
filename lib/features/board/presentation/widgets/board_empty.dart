import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';

class BoardEmptyView extends StatelessWidget {
  const BoardEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.inbox_outlined, size: 48, color: AppColors.white100),
          const SizedBox(height: 16),
          Text(
            context.l10n.boardNoTasks,
            style: context.typography.labelMediumSemiBold,
          ),
        ],
      ),
    );
  }
}
