import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _mode = ThemeMode.light;

  get themeMode => _mode;

  void toggleTheme(bool isDark) {
    _mode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
