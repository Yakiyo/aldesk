import 'package:aldesk/core/utils/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'storage.dart';

part 'themes.g.dart';

@riverpod
class ThemeManager extends _$ThemeManager {
  @override
  ThemeMode build() {
    final str = pref.getString("theme")!;
    return ThemeMode.values.firstWhere(
      (e) => e.toString() == str,
      // safety net but it should never be needed
      orElse: () => ThemeMode.system,
    );
  }

  void toggle() {
    final newMode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    setThemeMode(newMode);
  }

  void setThemeMode(ThemeMode themeMode) {
    state = themeMode;
    pref.setString('theme', themeMode.toString());
  }
}

/// Provider that returns the dark and light mode theme datas
///
/// The theme datas change whenever the user color changes which is handled
/// by the user color provider
@riverpod
(ThemeData, ThemeData) themeData(Ref ref) {
  final c = ref.watch(userColorProvider);
  return (Themes.light(c), Themes.dark(c));
}

abstract class Themes {
  static ThemeData dark(Color color) {
    const textColor = Colors.white;
    const backgroundColor = Color(0xFF0b1723);
    const secondaryColor = Color(0xFF11161d);
    const secondaryFgColor = Color(0xFF89a3b8);

    final colorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: color,
      primary: color,
      secondary: secondaryColor,
      onSecondary: secondaryFgColor,
      surface: backgroundColor,
      onSurface: textColor,
      error: const Color(0xffF2B8B5),
      onError: const Color(0xff601410),
    );
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: color,
        textTheme: GoogleFonts.robotoTextTheme().apply(
          bodyColor: textColor,
          displayColor: textColor,
        ));
  }

  static ThemeData light(Color color) {
    const textColor = Color(0xFF050315);
    const backgroundColor = Color(0xFFfbfbfe);
    const secondaryColor = Color(0xFFdedcff);
    const secondaryFgColor = Color(0xFF050315);

    final colorScheme = ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: color,
      primary: color,
      secondary: secondaryColor,
      onSecondary: secondaryFgColor,
      surface: backgroundColor,
      onSurface: textColor,
      error: const Color(0xffB3261E),
      onError: const Color(0xffFFFFFF),
    );

    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: color,
        textTheme: GoogleFonts.robotoTextTheme().apply(
          bodyColor: textColor,
          displayColor: textColor,
        ));
  }
}

@riverpod
class UserColor extends _$UserColor {
  @override
  Color build() {
    final str = pref.getString('user_color')!;
    return colorFromStr(str);
  }

  void setColor(Color color) async {
    await pref.setString('user_color', color.toRgbaStr());
    state = color;
  }
}
