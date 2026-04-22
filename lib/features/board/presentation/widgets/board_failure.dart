import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';
import '../cubit/board_cubit.dart';

class BoardFailureView extends StatelessWidget {
  const BoardFailureView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.purple800, AppColors.purple600, AppColors.pink500],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: AppColors.white100),
              const SizedBox(height: 16),
              Text(
                context.l10n.commonSomethingWentWrong,
                style: context.typography.labelMediumSemiBold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => context.read<BoardCubit>().loadTasks(),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.black700,
                  foregroundColor: AppColors.white100,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
                child: Text(
                  context.l10n.commonRetry,
                  style: context.typography.labelMediumSemiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
