import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final AppTheme _appTheme = AppTheme._();

  factory AppTheme() => _appTheme;

  ThemeData appThemeData = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      color: Colors.indigo,
      scrolledUnderElevation: 0,
    ),
  );
}
