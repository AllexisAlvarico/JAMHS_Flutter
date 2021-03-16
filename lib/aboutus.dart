import 'package:flutter/material.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

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
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0),
                                null),
                            createText("Partners", 8.0, 32.0, FontWeight.bold),
                            createTriple(
                                'assets/images/calguard.png',
                                'assets/images/vshp.png',
                                'assets/images/siteline.png',
                                launchCalguard,
                                launchVSHP,
                                launchSiteline,
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
                            createImage(
                                "assets/images/paypal.png",
                                0.0,
                                EdgeInsets.fromLTRB(50, 10, 50, 5),
                                launchPaypal),
                            createText(
                                "Social Media", 8.0, 32.0, FontWeight.bold),
                            createTriple(
                                "assets/images/facebook.png",
                                "assets/images/instagram.png",
                                "assets/images/twitter.png",
                                launchFacebook,
                                launchInsta,
                                launchTwitter,
                                EdgeInsets.fromLTRB(50.0, 0, 50.0, 0)),
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
  createImage(path, borderRadius, padding, function) {
    if (null != function) {
      return Padding(
          padding: padding,
          // Using ClipRRect allows us to have Images with Rounded edges.
          child: GestureDetector(
              onTap: function,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(path, fit: BoxFit.cover),
              )));
    }

    // if the function is null, return a regular image instead
    return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(path, fit: BoxFit.cover),
        ));
  }

  createExpanded(path, function) {
    // if the function exists, return a gesture detector with it
    if (null != function) {
      return Expanded(
          child: GestureDetector(
        onTap: function,
        child: Image.asset(path),
      ));
    }

// otherwise return a normal image
    return Expanded(child: Image.asset(path));
  }

  createTriple(pathOne, pathTwo, pathThree, functionOne, functionTwo,
      functionThree, padding) {
    return Container(
        height: 125,
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            createExpanded(pathOne, functionOne),
            Container(width: 30, color: Colors.transparent),
            createExpanded(pathTwo, functionTwo),
            Container(width: 30, color: Colors.transparent),
            createExpanded(pathThree, functionThree),
          ],
        ));
  }

  void launchCalguard() async {
    const url = 'https://calguard.ca.gov/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchVSHP() async {
    const url =
        'https://www.facebook.com/Virtual-Society-for-Historical-Preservation-104715344669153';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchSiteline() async {
    const url = 'https://sitelineproductions.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchPaypal() async {
    const url = 'https://www.paypal.com/uk/home/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchFacebook() async {
    const url = 'https://www.facebook.com/jewishmilitary';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchInsta() async {
    const url = 'https://www.instagram.com/jewish_american_military_H.S/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchTwitter() async {
    const url = 'https://twitter.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
