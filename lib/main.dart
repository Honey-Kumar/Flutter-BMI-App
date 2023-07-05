import 'package:bmi_app/splash.dart';
import 'package:flutter/material.dart';

main() => runApp(mybmi());

class mybmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Poppins'),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: splash_screen(),
    );
  }
}
