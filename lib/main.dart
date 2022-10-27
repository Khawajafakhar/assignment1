import 'package:flutter/material.dart';
import './screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF00A651),
          secondary: const Color(0xFFF3D434),
        ),
        textTheme: const TextTheme().copyWith(
          bodyText1: const TextStyle(
            color: Color(0xFF2C2C2C),
          ),
        ),
      ),
      home:  SignupScreen(),
      routes: {},
    );
  }
}
