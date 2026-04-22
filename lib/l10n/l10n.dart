import 'package:flutter/widgets.dart';
import 'app_localizations.dart';
export 'app_localizations.dart';

extension AppLocalizationsContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

AppLocalizations get appL10nRu => lookupAppLocalizations(const Locale('ru'));
