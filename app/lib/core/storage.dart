import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/get.dart';

final _defaults = {
  // app theme to use
  'theme': 'system',
  // dev mode enabled or not (enables verbose logging on dev mode in prod)
  'dev': false,
  // a accent color to use (store it as `r,g,b,a`)
  'user_color':
      [Colors.blue.r, Colors.blue.g, Colors.blue.b, Colors.blue.a].join(','),
};

Future<SharedPreferencesWithCache> initStorage() async {
  final pref = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions());

  for (final MapEntry(key: key, value: value) in _defaults.entries) {
    assert(value is bool || value is String,
        'Invalid default value for key $key, received $value of type ${value.runtimeType}');
    if (!pref.containsKey(key)) {
      if (value is bool) {
        pref.setBool(key, value);
      } else if (value is String) {
        pref.setString(key, value);
      }
    }
  }
  return pref;
}

SharedPreferencesWithCache getPref() => get<SharedPreferencesWithCache>();

extension ToRGBAStr on Color {
  String toRgbaStr() => [r, g, b, a].join(',');
}

Color colorFromStr(String str) {
  final [red, green, blue, alpha] = str.split(',').map(double.parse).toList();
  return Color.from(red: red, green: green, blue: blue, alpha: alpha);
}
