




import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
}

