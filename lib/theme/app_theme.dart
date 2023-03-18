import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    // primaryColor: AppColor.red,
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'poppin',
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    fontFamily: 'poppin',
  );
}
