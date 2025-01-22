import 'package:async_builder/async_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/utils/utils.dart';
import '../toast/toast.dart';
import 'kaomoji.dart';

/// A widget that builds itself based on the latest snapshot of a future.
///
/// This is basically a wrapper around [AsyncBuilder] that provides some defaults
class AsyncWidget<T> extends StatelessWidget {
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
      builder: (context, value) => builder(context, value as T),
      error: error,
      waiting: loading,
      silent: !kDebugMode,
    );
  }
}

/// Async widget but for an AsyncData instance rather than a future
class AsyncWidgetConsumer<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(BuildContext context, T value) builder;
  final WidgetBuilder loading;
  final Widget Function(BuildContext, Object, StackTrace?) error;

  const AsyncWidgetConsumer(
      {super.key,
      required this.value,
      required this.builder,
      this.loading = _defaultLoading,
      this.error = _defaultError});

  @override
  Widget build(BuildContext context) {
    return value.maybeWhen(
      error: (error, stackTrace) => this.error(context, error, stackTrace),
      data: (data) => builder(context, data),
      loading: () => loading(context),
      orElse: () => loading(context),
    );
  }
}

Widget _defaultLoading(BuildContext context) {
  return const SizedBox(width: double.infinity, child: KaomojiLoader());
}

Widget _defaultError(
    BuildContext context, Object error, StackTrace? stackTrace) {
  logger.e(
    "Error when fetching data from API",
    error: error,
    stackTrace: stackTrace,
  );
  displayError("Error when fetching data from API",
      message: error.toString(), context: context);
  return const Icon(Icons.error);
}
