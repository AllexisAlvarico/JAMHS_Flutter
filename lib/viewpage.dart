import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String img, title, name, desc;
  const ViewPage(
      {Key? key,
      required this.img,
      required this.title,
      required this.name,
      required this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Align(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset(img)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 5, 50),
                    child: Text(
                      desc,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ])));
  }
}
