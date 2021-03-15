import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        body: Align(
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/homelogo.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width / 30.0,
                  ),
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "About Us",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                            Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "The purpose of the Jewish American Military " +
                                      "Historical Society is to preserve Jewish " +
                                      "American military history, interpret the " +
                                      "impact of Jews to military and civil " +
                                      "service, and educating the public to these " +
                                      "contributions.",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                            Padding(
                                padding: EdgeInsets.all(25.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                      "assets/images/exbibit.png",
                                      fit: BoxFit.cover),
                                ))
                          ])),
                )
              ],
            )));
  }
}
