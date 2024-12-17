import 'package:flutter/material.dart';

class MyFutureBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final Widget Function(T) builder;
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
            return builder(snapshot.data as T);
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
