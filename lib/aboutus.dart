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
                      height: MediaQuery.of(context).size.height * 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            createText("About Us", 10.0, 32.0),
                            createText(
                                "The purpose of the Jewish American Military " +
                                    "Historical Society is to preserve Jewish " +
                                    "American military history, interpret the " +
                                    "impact of Jews to military and civil " +
                                    "service, and educating the public to these " +
                                    "contributions.",
                                5.0,
                                18.0),
                            createImage(
                                "assets/images/exbibit.png",
                                25.0, // border's radius
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0)),
                            createText("Partners", 8.0, 32.0),
                            Container(
                                padding: EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        'assets/images/calguard.png',
                                      ),
                                    ),
                                    Container(
                                        width: 30, color: Colors.transparent),
                                    Expanded(
                                        child: Image.asset(
                                            'assets/images/vshp.png')),
                                    Container(
                                        width: 30, color: Colors.transparent),
                                    Expanded(
                                        child: Image.asset(
                                            'assets/images/siteline.png'))
                                  ],
                                )),
                            createText(
                                "We've partnered with the California State Military Museum, " +
                                    "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                                8.0,
                                16.0),
                            createText("Donate Now!", 8.0, 32.0),
                            createText(
                                "to the Jewish American Military Historical Society!",
                                0.0,
                                16.0),
                            createImage("assets/images/paypal.png", 0.0,
                                EdgeInsets.fromLTRB(50, 10, 50, 5)),
                          ])),
                )
              ],
            )));
  }

  // Creates a text element with padding
  createText(text, padding, fontSize) {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }

  // Creates an image with an optional circular borderRadius
  createImage(path, borderRadius, padding) {
    return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(path, fit: BoxFit.cover),
        ));
  }
}
