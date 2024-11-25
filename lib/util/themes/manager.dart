import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// TODO: store theme mode in hive
class ThemeManager with ChangeNotifier {
  late ThemeMode _mode;
  ThemeManager() {
    final theme = Hive.box<String>("db").get("theme");
    if (theme == null || theme == ThemeMode.light.toString()) {
      _mode = ThemeMode.light;
    } else {
      _mode = ThemeMode.dark;
    }
  }
  get themeMode => _mode;

  bool get isDark => _mode == ThemeMode.dark;
  bool get isLight => !isDark;

  void toggleTheme(bool toDark) {
    _mode = toDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    Hive.box<String>("db").put("theme", _mode.toString());
  }
}
