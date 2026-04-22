import 'package:go_router/go_router.dart';
import '../../features/board/presentation/pages/board_page.dart';

abstract final class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [GoRoute(path: '/', builder: (_, __) => const BoardPage())],
  );
}
