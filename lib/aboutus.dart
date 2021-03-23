import 'package:flutter/material.dart';
import 'size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      body: _layoutDetails(),
    );
  }

  Widget _layoutDetails() {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Container(
        child: _portrait(),
      );
    } else {
      return Container(
        child: _landscape(),
      );
    }
  }

  Widget _portrait() {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(SizeConfig.edgeINSETS),
            child: Container(
              height: SizeConfig.safeBlockVertical * 35,
              width: SizeConfig.safeBlockHorizontal * 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homelogo.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.edgeINSETS,
            ),
            child: Container(
              height: SizeConfig.safeBlockVertical * 230, // 195 isbottom limit
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
                color: Colors.white,
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  createText("About Us", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createText(
                      "The purpose of the Jewish American Military " +
                          "Historical Society is to preserve Jewish " +
                          "American military history, interpret the " +
                          "impact of Jews to military and civil " +
                          "service, and educating the public to these " +
                          "contributions.",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createImage(
                      "assets/images/exbibit.png",
                      SizeConfig.edgeINSETS, // border's radius
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3),
                      null),
                  createText("Partners", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createTriple(
                      'assets/images/calguard.png',
                      'assets/images/vshp.png',
                      'assets/images/siteline.png',
                      launchCalguard,
                      launchVSHP,
                      launchSiteline,
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3)),
                  createText(
                      "We've partnered with the California State Military Museum, " +
                          "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createText("Donate Now!", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createText(
                      "to the Jewish American Military Historical Society!",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createImage(
                      "assets/images/paypal.png",
                      SizeConfig.borderRADIUS,
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3),
                      launchPaypal),
                  createText("Social Media", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createTriple(
                      "assets/images/facebook.png",
                      "assets/images/instagram.png",
                      "assets/images/twitter.png",
                      launchFacebook,
                      launchInsta,
                      launchTwitter,
                      EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 5, 0,
                          SizeConfig.blockSizeHorizontal * 5, 0)),
                  createText("Visit our Website", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createImage(
                      "assets/logo/jamhs.jpg",
                      SizeConfig.edgeINSETS, // border's radius
                      EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 30,
                          0, SizeConfig.blockSizeHorizontal * 30, 0),
                      launchJAHMS),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _landscape() {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(SizeConfig.edgeINSETS),
            child: Container(
              height: SizeConfig.safeBlockVertical * 50,
              width: SizeConfig.safeBlockHorizontal * 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homelogo.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.edgeINSETS,
            ),
            child: Container(
              height: SizeConfig.safeBlockVertical * 430, // 195 isbottom limit
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
                color: Colors.white,
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  createText("About Us", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createText(
                      "The purpose of the Jewish American Military " +
                          "Historical Society is to preserve Jewish " +
                          "American military history, interpret the " +
                          "impact of Jews to military and civil " +
                          "service, and educating the public to these " +
                          "contributions.",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createImage(
                      "assets/images/exbibit.png",
                      SizeConfig.edgeINSETS, // border's radius
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3),
                      null),
                  createText("Partners", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createTriple(
                      'assets/images/calguard.png',
                      'assets/images/vshp.png',
                      'assets/images/siteline.png',
                      launchCalguard,
                      launchVSHP,
                      launchSiteline,
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3)),
                  createText(
                      "We've partnered with the California State Military Museum, " +
                          "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createText("Donate Now!", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createText(
                      "to the Jewish American Military Historical Society!",
                      SizeConfig.edgeINSETS,
                      SizeConfig.fontDISCRIPTIONSIZE,
                      FontWeight.bold),
                  createImage(
                      "assets/images/paypal.png",
                      SizeConfig.borderRADIUS,
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3),
                      launchPaypal),
                  createText("Social Media", SizeConfig.edgeINSETS,
                      SizeConfig.fontHEADERSIZE, FontWeight.bold),
                  createTriple(
                      "assets/images/facebook.png",
                      "assets/images/instagram.png",
                      "assets/images/twitter.png",
                      launchFacebook,
                      launchInsta,
                      launchTwitter,
                      EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3,
                          SizeConfig.blockSizeHorizontal * 5,
                          SizeConfig.blockSizeHorizontal * 3)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
          borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
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
        height: SizeConfig.blockSizeVertical * 20,
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            createExpanded(pathOne, functionOne),
            Container(
                width: SizeConfig.blockSizeHorizontal * 5,
                color: Colors.transparent),
            createExpanded(pathTwo, functionTwo),
            Container(
                width: SizeConfig.blockSizeHorizontal * 5,
                color: Colors.transparent),
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

  void launchJAHMS() async {
    const url = 'https://jewishmilitary.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
