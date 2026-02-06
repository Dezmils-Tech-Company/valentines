// app_theme.dart
// Defines global colors, fonts, and styles.

import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.pink[50], // ✅ just a fallback color
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Cursive',
        fontSize: 32,
        color: Colors.redAccent,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Sans',
        fontSize: 18,
        color: Colors.black87,
      ),
    ),
  );
}
