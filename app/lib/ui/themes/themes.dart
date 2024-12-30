// providers related to app theme

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/utils/get.dart';
import 'data.dart';

part 'themes.g.dart';

@riverpod
ThemeMode themeMode(Ref ref) {
  final str = pref.getString('theme') ?? 'system';
  return ThemeMode.values.firstWhere(
    (e) => e.name == str,
    orElse: () => ThemeMode.system,
  );
}

final _defaultPrimary = () {
  const Color c = Color(0xFF3DB4F2);
  return [c.r, c.g, c.b, c.a].join(',');
}();

@riverpod
Color primaryColor(Ref ref) {
  final str = pref.getString('primary') ?? _defaultPrimary;
  return _colorFromStr(str);
}

@riverpod
(ThemeData, ThemeData) themeData(Ref ref) {
  final primary = ref.watch(primaryColorProvider);
  return (lightTheme(primary), darkTheme(primary));
}

Color _colorFromStr(String str) {
  final [red, green, blue, alpha] = str.split(',').map(double.parse).toList();
  return Color.from(red: red, green: green, blue: blue, alpha: alpha);
}

// Helper functions that update values to shared preferences and invalidates the providers

void updateTheme(ThemeMode mode, WidgetRef ref) {
  pref.setString('theme', mode.name);
  ref.invalidate(themeModeProvider);
}

void updatePrimary(Color color, WidgetRef ref) {
  pref.setString('primary', [color.r, color.g, color.b, color.a].join(','));
  ref.invalidate(primaryColorProvider);
}
