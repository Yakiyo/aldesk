import 'package:aldesk/utils/singletons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A theme manager that controls the app's theme state (light/dark) and persists
/// it using shared preferences
class ThemeManager with ChangeNotifier {
  late ThemeMode _mode;
  ThemeManager() {
    _init();
  }

  void _init() {
    final pref = Get.prefs();
    final theme = (pref.getString("theme")) ?? ThemeMode.light.toString();
    _mode =
        theme == ThemeMode.dark.toString() ? ThemeMode.dark : ThemeMode.light;
  }

  void _updateStore() async {
    final pref = Get.prefs();
    await pref.setString("theme", _mode.toString());
  }

  get themeMode => _mode;

  bool get isDark => _mode == ThemeMode.dark;
  bool get isLight => !isDark;

  void toggleTheme(bool toDark) {
    _mode = toDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    _updateStore();
  }
}

// Theme data

const highlightColor = Color.fromRGBO(232, 93, 117, 1);

final font = GoogleFonts.overpassTextTheme();

const darkModePrimary = Color(0xFF152232);

/// Dark mode themes
final darkTheme = ThemeData(
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: font.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
    decoration: TextDecoration.none,
  ),
  scaffoldBackgroundColor: const Color(0xFF0B1622),
  colorScheme: ColorScheme.fromSeed(
      seedColor: darkModePrimary,
      primary: darkModePrimary,
      secondary: const Color.fromARGB(255, 170, 164, 164),
      brightness: Brightness.dark),
);

/// Light mode themes
final lightTheme = ThemeData(
  textTheme: font.apply(
    bodyColor: Colors.grey,
    displayColor: Colors.grey,
    decoration: TextDecoration.none,
  ),
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFAFAFA),
      primary: const Color(0xFFFAFAFA),
      secondary: const Color.fromARGB(255, 3, 95, 244),
      brightness: Brightness.light),
  scaffoldBackgroundColor: const Color(0xFFEDF1F5),
);
