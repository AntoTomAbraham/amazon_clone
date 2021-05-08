import 'dart:async';

import 'package:amazon_app/views/Home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
      Duration(
        seconds: 4,
      ),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Home(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.network(
            "https://sguru.org/wp-content/uploads/2018/02/amazon_logo_RGB.jpg",
          ),
        ),
      ),
    );
  }
}
