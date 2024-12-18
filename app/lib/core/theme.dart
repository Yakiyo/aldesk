import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc.dart';

class ThemeManager {
  late final ValueNotifier<ThemeMode> _mode;
  ValueNotifier<ThemeMode> get modeNotifier => _mode;
  ThemeMode get mode => _mode.value;

  ThemeManager() {
    final pref = get<Storage>();
    final theme = pref.theme;
    _mode = ValueNotifier(theme);
  }

  bool get isDark => mode == ThemeMode.dark;

  void toggleTheme() {
    final newMode = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _mode.value = newMode;
    get<Storage>().theme = newMode;
  }
}

// Theme data

const highlightColor = Color.fromRGBO(232, 93, 117, 1);

final font = GoogleFonts.robotoTextTheme();

abstract class Themes {
  static ThemeData dark = ThemeData(
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: font.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
      decoration: TextDecoration.none,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF152232),
    ),
    scaffoldBackgroundColor: const Color(0xFF0B1622),
    primaryColor: const Color.fromARGB(255, 21, 31, 46),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF152232),
      // main color, the one used in containers and app bar and etc
      primary: const Color.fromARGB(255, 21, 31, 46),
      // same as scaffold background color
      secondary: const Color(0xFF0B1622),
      tertiary: const Color.fromARGB(255, 170, 164, 164),
      brightness: Brightness.dark,
    ),
    iconButtonTheme: const IconButtonThemeData(
        style:
            ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.white))),
  );

  static ThemeData light = ThemeData(
      fontFamily: GoogleFonts.roboto().fontFamily,
      textTheme: font.apply(
        bodyColor: Colors.grey.shade700,
        displayColor: Colors.grey.shade700,
        decoration: TextDecoration.none,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 43, 45, 66),
      ),
      scaffoldBackgroundColor: const Color(0xFFEDF1F5),
      primaryColor: const Color(0xFFFAFAFA),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFFAFAFA),
        primary: const Color(0xFFFAFAFA),
        secondary: const Color(0xFFEDF1F5),
        tertiary: const Color.fromARGB(255, 3, 95, 244),
        brightness: Brightness.light,
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(Colors.grey.shade700))));
}
