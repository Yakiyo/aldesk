import 'package:flutter/material.dart';

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