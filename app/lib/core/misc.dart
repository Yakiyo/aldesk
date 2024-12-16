import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  late final SharedPreferencesWithCache pref;
  Storage(this.pref);

  static Future<Storage> create() async {
    final pref = await SharedPreferencesWithCache.create(
        cacheOptions: const SharedPreferencesWithCacheOptions());
    return Storage(pref);
  }

  ThemeMode get theme {
    final str = pref.getString("theme") ?? ThemeMode.system.toString();
    final index =
        ThemeMode.values.map((x) => x.toString()).toList().indexOf(str);
    return ThemeMode.values[index];
  }

  set theme(ThemeMode mode) {
    pref.setString("theme", mode.toString());
  }

  String? get token => pref.getString("token");

  set token(String? value) {
    if (value == null) {
      pref.remove("token");
      return;
    }
    pref.setString("token", value);
  }
}


T get<T extends Object>() => GetIt.I.get<T>();