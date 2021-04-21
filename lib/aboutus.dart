import 'package:flutter/material.dart';
import 'device.dart';
import 'sizeConstraints.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:relative_scale/relative_scale.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      body: _layoutDetails(),
      appBar: AppBar(
        backgroundColor: Device.backroundCOLOR,
        title: Text(
          "About us",
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConstraint.fontHEADERSIZE,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
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
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConstraint.edgeInsets),
                ),
                child: Container(
                  height: sy(180),
                  width: sx(40),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/homelogo.png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConstraint.edgeInsets),
                ),
                child: Container(
                  height: sy(1300), // 195 isbottom limit
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      sy(SizeConstraint.borderRadius),
                    ),
                    color: Colors.white,
                  ),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      createText("About Us", sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                      createText(
                          "The purpose of the Jewish American Military " +
                              "Historical Society is to preserve Jewish " +
                              "American military history, interpret the " +
                              "impact of Jews to military and civil " +
                              "service, and educating the public to these " +
                              "contributions.",
                          sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontDISCRIPTIONSIZE,
                          FontWeight.bold),
                      createImage(
                          "assets/images/exbibit.png",
                          sy(SizeConstraint.edgeInsets), // border's radius
                          EdgeInsets.fromLTRB(
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 1),
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 3),
                          ),
                          null),
                      createText("Partners", sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                      createTriple(
                        'assets/images/calguard.png',
                        'assets/images/vshp.png',
                        'assets/images/siteline.png',
                        launchCalguard,
                        launchVSHP,
                        launchSiteline,
                        EdgeInsets.fromLTRB(
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 1),
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 3),
                        ),
                      ),
                      createText(
                          "We've partnered with the California State Military Museum, " +
                              "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                          sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontDISCRIPTIONSIZE,
                          FontWeight.bold),
                      createText("Donate Now!", sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                      createText(
                          "to the Jewish American Military Historical Society!",
                          sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontDISCRIPTIONSIZE,
                          FontWeight.bold),
                      createImage(
                          "assets/images/paypal.png",
                          sy(SizeConstraint.borderRadius),
                          EdgeInsets.fromLTRB(
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 1),
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 3),
                          ),
                          launchPaypal),
                      createText("Social Media", sy(SizeConstraint.edgeInsets),
                          SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                      createTriple(
                        "assets/images/facebook.png",
                        "assets/images/instagram.png",
                        "assets/images/twitter.png",
                        launchFacebook,
                        launchInsta,
                        launchTwitter,
                        EdgeInsets.fromLTRB(
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 1),
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 1),
                        ),
                      ),
                      createText("Visit our Website", SizeConstraint.edgeInsets,
                          SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                      createImage(
                          "assets/logo/jamhs.jpg",
                          SizeConstraint.edgeInsets, // border's radius
                          EdgeInsets.fromLTRB(Device.safeBlockHorizontal * 30,
                              0, Device.safeBlockHorizontal * 30, 0),
                          launchJAHMS),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

Widget _landscape() {
  return RelativeBuilder(
    builder: (context, height, width, sy, sx) {
      return Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(
                sy(SizeConstraint.edgeInsets),
              ),
              child: Container(
                height: sy(250),
                width: sx(50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                sy(SizeConstraint.edgeInsets),
              ),
              child: Container(
                height: sx(1300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    sy(SizeConstraint.borderRadius),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    createText("About Us", sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                    createText(
                        "The purpose of the Jewish American Military " +
                            "Historical Society is to preserve Jewish " +
                            "American military history, interpret the " +
                            "impact of Jews to military and civil " +
                            "service, and educating the public to these " +
                            "contributions.",
                        sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontDISCRIPTIONSIZE,
                        FontWeight.bold),
                    createImage(
                        "assets/images/exbibit.png",
                        sy(SizeConstraint.edgeInsets), // border's radius
                        EdgeInsets.fromLTRB(
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 3),
                          sx(Device.safeBlockHorizontal * 5),
                          sy(Device.safeBlockVertical * 3),
                        ),
                        null),
                    createText("Partners", sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                    createTriple(
                      'assets/images/calguard.png',
                      'assets/images/vshp.png',
                      'assets/images/siteline.png',
                      launchCalguard,
                      launchVSHP,
                      launchSiteline,
                      EdgeInsets.fromLTRB(
                        sx(Device.safeBlockHorizontal * 5),
                        sy(Device.safeBlockVertical * 3),
                        sx(Device.safeBlockHorizontal * 5),
                        sy(Device.safeBlockVertical * 3),
                      ),
                    ),
                    createText(
                        "We've partnered with the California State Military Museum, " +
                            "Virtual Socity Historical Preservation(VSHP) and Siteline Productions",
                        sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontDISCRIPTIONSIZE,
                        FontWeight.bold),
                    createText("Donate Now!", sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                    createText(
                        "to the Jewish American Military Historical Society!",
                        sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontDISCRIPTIONSIZE,
                        FontWeight.bold),
                    createImage(
                        "assets/images/paypal.png",
                        sy(SizeConstraint.borderRadius),
                        EdgeInsets.fromLTRB(
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 3),
                            sx(Device.safeBlockHorizontal * 5),
                            sy(Device.safeBlockVertical * 3)),
                        launchPaypal),
                    createText("Social Media", sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontHEADERSIZE, FontWeight.bold),
                    createTriple(
                      "assets/images/facebook.png",
                      "assets/images/instagram.png",
                      "assets/images/twitter.png",
                      launchFacebook,
                      launchInsta,
                      launchTwitter,
                      EdgeInsets.fromLTRB(
                        sx(Device.safeBlockHorizontal * 50),
                        sy(Device.safeBlockVertical * 30),
                        sx(Device.safeBlockHorizontal * 50),
                        sy(Device.safeBlockVertical * 30),
                      ),
                    ),
                    createText(
                        "Visit our Website",
                        sy(SizeConstraint.edgeInsets),
                        SizeConstraint.fontHEADERSIZE,
                        FontWeight.bold),
                    createImage(
                        "assets/logo/jamhs.jpg",
                        sy(SizeConstraint.edgeInsets), // border's radius
                        EdgeInsets.fromLTRB(sx(140), 0, sx(140), 0),
                        launchJAHMS),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
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
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Padding(
          padding: padding,
          // Using ClipRRect allows us to have Images with Rounded edges.
          child: GestureDetector(
              onTap: function,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  sy(SizeConstraint.borderRadius),
                ),
                child: Image.asset(path, fit: BoxFit.cover),
              )));
    });
  }

  // if the function is null, return a regular image instead
  return RelativeBuilder(
    builder: (context, height, width, sy, sx) {
      return Padding(
        padding: padding,
        // Using ClipRRect allows us to have Images with Rounded edges.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            sy(SizeConstraint.borderRadius),
          ),
          child: Image.asset(path, fit: BoxFit.cover),
        ),
      );
    },
  );
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
}

createTriple(pathOne, pathTwo, pathThree, functionOne, functionTwo,
    functionThree, padding) {
  return RelativeBuilder(builder: (context, height, width, sy, sx) {
    return Container(
        height: sy(100),
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createExpanded(pathOne, functionOne),
            Container(width: sy(30), color: Colors.transparent),
            createExpanded(pathTwo, functionTwo),
            Container(width: sy(30), color: Colors.transparent),
            createExpanded(pathThree, functionThree),
          ],
        ));
  });
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
