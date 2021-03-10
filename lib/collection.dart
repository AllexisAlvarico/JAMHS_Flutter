import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        body: Align(
          alignment: Alignment.center,
          child: Text(
            "Collections Page",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
