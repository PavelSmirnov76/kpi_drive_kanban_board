// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Моя доска';

  @override
  String get boardWithoutFolder => 'Без папки';

  @override
  String get boardNoTasks => 'Задач нет';

  @override
  String get commonRetry => 'Повторить';

  @override
  String get commonSomethingWentWrong => 'Что-то пошло не так';

  @override
  String get errorServer => 'Ошибка сервера';

  @override
  String get errorNoConnection => 'Нет соединения';

  @override
  String get errorSaveChangesFailed => 'Не удалось сохранить изменения';
}
