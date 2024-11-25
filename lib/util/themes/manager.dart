import 'package:flutter/material.dart';

// TODO: store theme mode in hive 
class ThemeManager with ChangeNotifier {
  ThemeMode _mode = ThemeMode.light;

  get themeMode => _mode;

  bool get isDark => _mode == ThemeMode.dark;
  bool get isLight => !isDark;

  void toggleTheme(bool toDark) {
    _mode = toDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
