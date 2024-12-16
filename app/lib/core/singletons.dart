import 'package:aldesk/core/theme.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Get {
  static SharedPreferences prefs() => GetIt.I.get<SharedPreferences>();
  static ThemeManager themeManager() => GetIt.I.get<ThemeManager>();
  static Logger logger() => GetIt.I.get<Logger>();

  static setPrefs(SharedPreferences pref) => GetIt.I.registerSingleton(pref);
  static setThemeManager(ThemeManager manager) => GetIt.I.registerSingleton(manager);
  static setLogger(Logger log) => GetIt.I.registerSingleton(log);
}
