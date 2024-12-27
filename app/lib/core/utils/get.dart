import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

T get<T extends Object>() => GetIt.I.get<T>();

Logger get logger => GetIt.I.get<Logger>();