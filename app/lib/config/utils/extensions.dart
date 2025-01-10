import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension Capitalize on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension SetOpacity on Color {
  Color setOpacity(double opacity) {
    return withAlpha((opacity * 255).round());
  }
}

extension DiffString on DateTime {
  String diffBetweenString(DateTime other) {
    final diff = other.difference(this);
    if (diff.inDays > 0) {
      return "${diff.inDays} days ago";
    } else if (diff.inHours > 0) {
      return "${diff.inHours} hours ago";
    } else if (diff.inMinutes > 0) {
      return "${diff.inMinutes} minutes ago";
    } else {
      return "just now";
    }
  }

  String diffString() => diffBetweenString(DateTime.now());
}

extension TimeRef on Ref {
  void invalidateAfter(Duration duration) {
    final timer = Timer(duration, () => invalidateSelf());
    onDispose(() {
      if (timer.isActive) {
        timer.cancel();
      }
    });
  }
}
