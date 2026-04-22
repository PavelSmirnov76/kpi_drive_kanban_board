import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../cubit/board_cubit.dart';
import '../cubit/board_state.dart';
import 'board_empty.dart';
import 'board_failure.dart';
import 'board_loading.dart';
import 'board_populated.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BoardCubit>(
      create: (_) => inject()..loadTasks(),
      child: BlocBuilder<BoardCubit, BoardState>(
        builder: (context, state) => switch (state) {
          BoardInitial() => const BoardLoadingView(),
          BoardLoading() => const BoardLoadingView(),
          BoardLoaded(:final folders) when folders.isEmpty =>
            const BoardEmptyView(),
          BoardLoaded() => const BoardPopulated(),
          BoardError(:final message) => BoardFailureView(message: message),
        },
      ),
    );
  }
}
