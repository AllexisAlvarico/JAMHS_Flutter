// @dart=2.9
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'dart:async';
import 'size_config.dart';

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
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: Center(
        child: Image.asset('assets/logo/jamhs.jpg'),
      ),
    );
  }
}
