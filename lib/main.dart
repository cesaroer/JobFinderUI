import 'package:curso_job_finder_app/pages/main_screen.dart';
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
      initialRoute: SplashScreen.routeName,
      routes: {
        MainScreen.routeName: (BuildContext context) => MainScreen(),
        SplashScreen.routeName: (BuildContext context) => SplashScreen(),
      },
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
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF030047),
          ),
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFB7B7D2),
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5F5FFF),
          ),
          subtitle1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0XFFB7B7D2),
          ),
          subtitle2: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Color(0XFFB7B7D2),
          ),
        ),
      ),
    );
  }
}
