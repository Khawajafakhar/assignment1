import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';
import './screens/signup_screen.dart';
import './screens/dashboard_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.txtFldBrdrClrGreen,
    ),
  );
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
      routes: {DashboardScreen.routeName :(context) =>  DashboardScreen()},
    );
  }
}
