import 'package:flutter/material.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme_data.dart';

part 'app_colors.dart';
part 'app_typography.dart';

abstract class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue600,
      onPrimary: AppColors.white100,
      surface: AppColors.white100,
      outlineVariant: AppColors.black700,
      scrim: AppColors.overlayDark40,
    ),
  );
}

typedef AppThemeBuilder =
    Widget Function(BuildContext context, AppThemeData theme);

class AppTheme extends StatelessWidget {
  final AppThemeData theme;
  final AppThemeBuilder builder;

  const AppTheme({super.key, required this.theme, required this.builder});

  static AppThemeData of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_InheritedAppTheme>()!
        .theme;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAppTheme(theme: theme, child: builder(context, theme));
  }
}

class _InheritedAppTheme extends InheritedWidget {
  const _InheritedAppTheme({required this.theme, required super.child});

  final AppThemeData theme;

  @override
  bool updateShouldNotify(_InheritedAppTheme old) => theme != old.theme;
}

extension BuildContextThemeExtension on BuildContext {
  AppThemeData get theme => AppTheme.of(this);
  AppTypography get typography => theme.typography;
}
