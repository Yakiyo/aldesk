import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../core/misc.dart';

/// Custom future builder. This works for Futures that return a Result
///
/// ```dart
/// final Future<Result<MyType, Error>> futureResult =  someFuture();
/// MyFutureBuilder(
///     future: futureResult,
///     builder: (MyType value) => MyWidget(value),
/// );
/// ```
class MyFutureBuilder<T> extends StatelessWidget {
  final Future<Result<T, Error>> future;
  final Widget Function(T) builder;
  final Widget Function(Error) errorBuilder;
  final Widget loadingWidget;

  const MyFutureBuilder({
    super.key,
    required this.future,
    required this.builder,
    this.errorBuilder = _defaultErrorBuilder,
    this.loadingWidget = const Center(child: CircularProgressIndicator()),
  });

  @override
  Widget build(BuildContext context) {
    final logger = get<Logger>();
    return FutureBuilder<Result<T, Error>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as Result<T, Error>;
            if (data.isErr()) {
              logger.e(data.unwrapErr());
            }
            return switch (data) {
              Ok(value: final value) => builder(value),
              Err(value: final error) => errorBuilder(error),
            };
          } else if (snapshot.hasError) {
            logger.e(snapshot.error);
            return errorBuilder(snapshot.error as Error);
          } else {
            return loadingWidget;
          }
        });
  }
}

Widget _defaultErrorBuilder(Object? error) {
  return Center(child: Text('Error: $error'));
}
