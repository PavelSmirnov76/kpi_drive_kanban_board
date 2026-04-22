import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/folder.dart';

part 'board_state.freezed.dart';

@freezed
sealed class BoardState with _$BoardState {
  const factory BoardState.initial() = BoardInitial;

  const factory BoardState.loading() = BoardLoading;

  const factory BoardState.loaded({
    required List<Folder> folders,
    @Default(<int>{}) Set<int> syncingTaskIds,
    String? moveErrorMessage,
  }) = BoardLoaded;

  const factory BoardState.error(String message) = BoardError;
}
