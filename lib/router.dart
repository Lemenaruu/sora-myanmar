


import 'package:flutter/material.dart';

extension Router on BuildContext {
 go(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }
  Color get blueColor => Theme.of(this).primaryColor; 
}
