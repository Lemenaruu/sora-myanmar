import 'package:flutter/material.dart';
import 'package:sora_myanmar/home/screens/home_screen.dart';
import 'package:sora_myanmar/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sora Myanmar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'poppin',
      ),
      home: const SignInScreen(),
    );
  }
}
