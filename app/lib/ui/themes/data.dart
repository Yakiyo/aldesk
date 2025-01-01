import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final roboto = GoogleFonts.roboto();
final overpass = GoogleFonts.overpass();

final textTheme = TextTheme(
  displayLarge: overpass,
  displayMedium: overpass,
  displaySmall: overpass,
  headlineLarge: overpass,
  headlineMedium: overpass,
  headlineSmall: overpass,
  labelLarge: roboto,
  labelMedium: roboto,
  labelSmall: roboto,
  bodyLarge: roboto,
  bodyMedium: roboto,
  bodySmall: roboto,
);

ThemeData lightTheme(Color primary) {
  const secondary = Colors.white;
  const surface = Color.fromARGB(255, 237, 241, 245);
  return ThemeData(
    fontFamily: "Roboto",
    textTheme: textTheme.apply(
      displayColor: primary,
      bodyColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(primary),
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
    )),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: primary,
        surface: surface,
        secondary: secondary,
        error: Colors.red,
        onError: Colors.white),
  );
}

ThemeData darkTheme(Color primary) {
  const surface = Color.fromARGB(255, 11, 22, 34);
  const secondary = Color.fromARGB(255, 21, 31, 46);
  return ThemeData(
    fontFamily: "Roboto",
    textTheme: textTheme.apply(
      displayColor: primary,
      bodyColor: Colors.white70,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(primary),
      foregroundColor: const WidgetStatePropertyAll(Colors.white),
    )),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: primary,
        surface: surface,
        secondary: secondary,
        error: Colors.red,
        onError: Colors.white),
  );
}
