import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kpi_kanban_app/l10n/l10n.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme.dart';
import 'package:kpi_kanban_app/shared/theme/app_theme_data.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: AppThemeData.light(),
      builder: (context, theme) => MaterialApp.router(
        onGenerateTitle: (context) => context.l10n.appTitle,
        theme: theme.materialThemeData,
        routerConfig: AppRouter.router,
        locale: const Locale('ru'),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
