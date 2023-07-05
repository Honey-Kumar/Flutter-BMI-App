import 'dart:async';

import 'package:bmi_app/homepage.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _splash_screen();
}

class _splash_screen extends State<splash_screen> {
  @override
  void initState() {
    setState(() {
      Timer(Duration(seconds: 6), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => homepage()),
        );
      });
    });
  }

  var colour = Colors.white;
  bool flag = true;
  var wi = double.infinity - 400;
  var hi = 20.0;

  void real() {
    if (flag == true) {
      while (wi != 100) {
        setState(() {
          wi = wi - 20;
        });
      }
      flag = false;
    } else {
      while (wi != double.infinity - 400) {
        setState(() {
          wi = wi + 20;
        });
      }
      flag = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://www.shutterstock.com/image-vector/indikator-bmi-on-white-background-260nw-2100889945.jpg',
                width: 350,
                height: 350,
                scale: 2.5,
              ),
              SizedBox(
                height: 6,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 6),
                // width: wi,
                // height: hi,
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
