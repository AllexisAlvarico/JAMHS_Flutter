import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String img, title;
  const ViewPage({Key key, this.img, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        body: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
