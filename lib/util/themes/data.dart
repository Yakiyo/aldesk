import 'package:flutter/material.dart';

const highlightColor = Color.fromRGBO(232, 93, 117, 1);

const textTheme = TextTheme(
  bodyLarge: TextStyle(color: Color(0xFF9DABA9)),
  bodyMedium: TextStyle(color: Color(0xFF9DABA9)),
  bodySmall: TextStyle(color: Color(0xFF9DABA9)),
);

final ThemeData darkTheme = ThemeData(
  textTheme: textTheme.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
    decoration: TextDecoration.none,
  ),
  scaffoldBackgroundColor: const Color(0xFF0B1622),
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF152232),
      secondary: const Color.fromARGB(255, 170, 164, 164),
      brightness: Brightness.dark),
);

final ThemeData lightTheme = ThemeData(
  textTheme: textTheme.apply(
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
