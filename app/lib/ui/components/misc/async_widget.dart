import 'package:async_builder/async_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../../core/utils/get.dart';
import 'kaomoji.dart';

/// A widget that builds itself based on the latest snapshot of a future.
///
/// This is basically a wrapper around [AsyncBuilder] that provides some defaults
class AsyncWidget<T extends Object> extends StatelessWidget {
  final Future<T> future;
  final Widget Function(BuildContext context, T value) builder;
  final WidgetBuilder loading;
  final Widget Function(BuildContext, Object, StackTrace?) error;

  const AsyncWidget(
      {super.key,
      required this.future,
      required this.builder,
      this.loading = _defaultLoading,
      this.error = _defaultError});

  @override
  Widget build(BuildContext context) {
    return AsyncBuilder<T>(
      future: future,
      builder: (context, value) => builder(context, value!),
      error: error,
      waiting: loading,
      silent: !kDebugMode,
    );
  }
}

Widget _defaultLoading(BuildContext context) {
  return const KaomojiLoader();
}

Widget _defaultError(
    BuildContext context, Object error, StackTrace? stackTrace) {
  toastification.show(
    context: context,
    type: ToastificationType.error,
    style: ToastificationStyle.flat,
    title: const Text("Error when fetching data from API"),
  );
  logger.e(
    "Error when fetching data from API",
    error: error,
    stackTrace: stackTrace,
  );
  return const Icon(Icons.error);
}
