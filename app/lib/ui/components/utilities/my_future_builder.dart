import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';

/// Custom future builder. If result of `future` is a Result, it handles the
/// result accordingly. In that case `T` should be `Result<V, dynamic>`, otherwise
/// `T` and `V` should be the same.
class MyFutureBuilder<T, V> extends StatelessWidget {
  final Future<T> future;
  final Widget Function(V) builder;
  final Widget Function(Object?) errorBuilder;
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
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as T;
            if (data is Result) {
              return switch (data) {
                Ok(value: final value) => builder(value as V),
                Err(value: final error) => errorBuilder(error),
              };
            }
            return builder(data as V);
          } else if (snapshot.hasError) {
            return errorBuilder(snapshot.error);
          } else {
            return loadingWidget;
          }
        });
  }
}

Widget _defaultErrorBuilder(Object? error) {
  return Center(child: Text('Error: $error'));
}
