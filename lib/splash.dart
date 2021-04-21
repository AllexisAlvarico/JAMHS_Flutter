// @dart=2.9
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'dart:async';
import 'device.dart';

void main() => runApp(MaterialApp(
      home: _SplashScreen(),
    ));

class _SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: Center(
        child: Image.asset('assets/logo/jamhs.jpg'),
      ),
    );
  }
}
