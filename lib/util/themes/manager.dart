import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _mode = ThemeMode.dark;

  get themeMode => _mode;

  void toggleTheme(bool isDark) {
    _mode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
