import 'package:curso_job_finder_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JobFinder",
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Color(0XFF5F5FFF),
        accentColor: Color(0xFF030047),
        highlightColor: Color(0xFFB7B7D2),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF030047),
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5F5FFF),
          ),
        ),
      ),
    );
  }
}
