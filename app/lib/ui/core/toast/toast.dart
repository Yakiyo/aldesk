import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

/// Displays a toast notification with an error message.
void displayError(String title, {String? message, BuildContext? context}) {
  toastification.show(
    context: context,
    title: Text(title),
    description: message != null ? Text(message) : null,
    type: ToastificationType.error,
    style: ToastificationStyle.minimal,
    alignment: Alignment.topRight,
    autoCloseDuration: const Duration(seconds: 5),
    icon: const Icon(Icons.error),
    showIcon: true,
    closeOnClick: true,
  );
}

/// Displays a toast notification with a success message.
void displaySuccess(String title, {String? message, BuildContext? context}) {
  toastification.show(
    context: context,
    title: Text(title),
    description: message != null ? Text(message) : null,
    type: ToastificationType.success,
    style: ToastificationStyle.minimal,
    alignment: Alignment.topRight,
    autoCloseDuration: const Duration(seconds: 5),
    icon: const Icon(Icons.check),
    showIcon: true,
    closeOnClick: true,
  );
}
