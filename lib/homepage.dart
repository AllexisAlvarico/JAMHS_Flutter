import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext t_context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        appBar: AppBar(
          title: Text("Scene"),
          backgroundColor: Colors.blueGrey[900],
        ),
      ),
    );
  }
}
