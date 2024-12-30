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
  return ThemeData(
    fontFamily: "Roboto",
    textTheme: textTheme.apply(
      displayColor: primary,
      bodyColor: Colors.black,
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: primary,
      surface: const Color.fromARGB(255, 237,241,245),
      onSurface: Colors.white
    ),
  );
}

ThemeData darkTheme(Color primary) {
  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: primary,
        surface: const Color(0xff101417)),
  );
}