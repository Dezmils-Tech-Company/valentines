// navigation.dart
// Utility functions to simplify navigation across the app.
// This ensures clean, reusable navigation logic instead of repeating Navigator.push everywhere.

import 'package:flutter/material.dart';

class NavigationUtils {
  /// Pushes a new page onto the stack
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Replaces the current page with a new one
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Pops the current page
  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  /// Pops until the first route (home)
  static void popToRoot(BuildContext context) {
    Navigator.popUntil(context, (route) => route.isFirst);
  }
}
