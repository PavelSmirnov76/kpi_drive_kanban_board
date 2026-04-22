import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';
import '../cubit/board_cubit.dart';

class BoardFailureView extends StatelessWidget {
  const BoardFailureView({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, size: 48, color: AppColors.white100),
          const SizedBox(height: 16),
          Text(message, style: context.typography.labelMediumSemiBold),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () => context.read<BoardCubit>().loadTasks(),
            child: Text(
              context.l10n.commonRetry,
              style: context.typography.labelMediumSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
