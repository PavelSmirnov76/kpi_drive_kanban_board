import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';
import '../widgets/board_view.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.black900.withValues(alpha: 0.3),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 16,
        title: Text(
          context.l10n.appTitle,
          style: context.typography.titleLargeSemiBold,
        ),
      ),
      body: const BoardView(),
    );
  }
}
