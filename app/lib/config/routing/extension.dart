import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _History {
  final String location;
  final Object? extra;

  _History(this.location, this.extra);
}

final List<_History> _history = [_History('/', null)];

extension Navigate on BuildContext {
  void to(String location, {Object? extra}) {
    _history.add(_History(location, extra));
    go(location, extra: extra);
  }

  void back() {
    if (!canGoBack()) {
      throw 'History is empty, cannot pop';
    }
    _history.removeLast();
    go(_history.last.location, extra: _history.last.extra);
  }

  bool canGoBack() {
    return _history.length > 1;
  }
}
