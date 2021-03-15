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
                      height: MediaQuery.of(context).size.height * 1.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            createText("About Us", 10.0, 32.0, FontWeight.bold),
                            createText(
                                "The purpose of the Jewish American Military " +
                                    "Historical Society is to preserve Jewish " +
                                    "American military history, interpret the " +
                                    "impact of Jews to military and civil " +
                                    "service, and educating the public to these " +
                                    "contributions.",
                                5.0,
                                18.0,
                                FontWeight.bold),
                            createImage(
                                "assets/images/exbibit.png",
                                25.0, // border's radius
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0)),
                            createText("Partners", 8.0, 32.0, FontWeight.bold),
                            createTriple(
                                'assets/images/calguard.png',
                                'assets/images/vshp.png',
                                'assets/images/siteline.png',
                                EdgeInsets.fromLTRB(50.0, 0, 50.0, 0)),
                            createText(
                                "We've partnered with the California State Military Museum, " +
                                    "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                                8.0,
                                16.0,
                                FontWeight.bold),
                            createText(
                                "Donate Now!", 8.0, 32.0, FontWeight.bold),
                            createText(
                                "to the Jewish American Military Historical Society!",
                                0.0,
                                16.0,
                                FontWeight.bold),
                            createImage("assets/images/paypal.png", 0.0,
                                EdgeInsets.fromLTRB(50, 10, 50, 5)),
                            createText(
                                "Social Media", 8.0, 32.0, FontWeight.bold),
                            createTriple(
                                "assets/images/facebook.png",
                                "assets/images/instagram.png",
                                "assets/images/twitter.png",
                                EdgeInsets.fromLTRB(50.0, 0, 50.0, 0)),
                            createText("Sophie", 8.0, 32.0, FontWeight.bold),
                          ])),
                )
              ],
            )));
  }

  // Creates a text element with padding
  createText(text, padding, fontSize, fontWeight) {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: fontSize, fontWeight: fontWeight),
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

  createTriple(pathOne, pathTwo, pathThree, padding) {
    return Container(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Image.asset(
                pathOne,
              ),
            ),
            Container(width: 30, color: Colors.transparent),
            Expanded(child: Image.asset(pathTwo)),
            Container(width: 30, color: Colors.transparent),
            Expanded(child: Image.asset(pathThree))
          ],
        ));
  }
}
