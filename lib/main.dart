import 'package:flutter/material.dart';
import 'package:ui_v2_1_rich_soinc/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: const SplashScreen(),
    );
  }
}
