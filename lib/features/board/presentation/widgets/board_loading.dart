import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';

class BoardLoadingView extends StatelessWidget {
  const BoardLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.purple800, AppColors.purple600, AppColors.pink500],
        ),
      ),
      child: Center(
        child: CircularProgressIndicator(color: AppColors.white100),
      ),
    );
  }
}
