import 'package:flutter/material.dart';

class VirutalToursPage extends StatefulWidget {
  @override
  _VirutalToursPageState createState() => _VirutalToursPageState();
}

class _VirutalToursPageState extends State<VirutalToursPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        body: Align(
          alignment: Alignment.center,
          child: Text(
            "Virtual Page",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
