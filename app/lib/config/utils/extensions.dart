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

// invalidateAfter disposes providers after duration has passed since its creation
// while cacheFor disposes the provider after duration has passed since its been last
// cancelled. For example, a media provider can be disposed after X duration after the user
// stops listening to it. We do not need to dispose and refetch it if the user did not stop
// listening to it. 

extension TimeRef on Ref {
  void invalidateAfter(Duration duration) {
    final timer = Timer(duration, invalidateSelf);
    onDispose(() {
      if (timer.isActive) {
        timer.cancel();
      }
    });
  }

  void cacheFor(Duration duration) {
    Timer? timer;

    // when the provider is cancelled, we create a new timer that disposes
    // the provider after the duration
    onCancel(() {
      timer = Timer(duration, invalidateSelf);
    });

    // when the provider is resumed, we cancel the timer
    onResume(() {
      timer?.cancel();
    });
  }
}
