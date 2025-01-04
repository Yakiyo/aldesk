import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

T get<T extends Object>() => GetIt.I.get<T>();

Logger get logger => get<Logger>();

SharedPreferencesWithCache get pref => get<SharedPreferencesWithCache>();