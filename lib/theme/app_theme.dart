import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    // primaryColor: AppColor.red,
    scaffoldBackgroundColor: Colors.white,

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
      ),
    ),

    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'poppin',
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    fontFamily: 'poppin',
  );
}
