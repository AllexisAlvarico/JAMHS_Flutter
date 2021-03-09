import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext t_context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff243C6C),
      ),
    );
  }
}
