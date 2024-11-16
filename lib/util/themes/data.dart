import 'package:flutter/material.dart';

final textTheme = const TextTheme(
  bodyLarge: TextStyle(color: Color(0xFF9DABA9)),
  bodyMedium: TextStyle(color: Color(0xFF9DABA9)),
  bodySmall: TextStyle(color: Color(0xFF9DABA9)),
).apply(
  bodyColor: Colors.white,
  displayColor: Colors.white,
  decoration: TextDecoration.none,
);

final ThemeData darkTheme = ThemeData(
  textTheme: textTheme,
  scaffoldBackgroundColor: const Color(0xFF0B1622),
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF152232), brightness: Brightness.dark),
);

final ThemeData lightTheme = ThemeData(
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFAFAFA), brightness: Brightness.light),
  scaffoldBackgroundColor: const Color(0xFFEDF1F5),
);
