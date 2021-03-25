import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:relative_scale/relative_scale.dart';
import 'articlepage.dart';
import 'collection.dart';
import 'aboutus.dart';
import 'flutter_device_type.dart';
import 'size_config.dart';
import 'virtualTourpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    //Get the physical device size
    print(Device.size);
//Quick methods to access the physical device width and height
    print("Device Width: ${Device.width}, Device Height: ${Device.height}");

//To get the actual screen size (Which is same as what MediaQuery gives)
    print(Device.screenSize);
//Quick methods to access the screen width and height
    print(
        "Device Width: ${Device.screenWidth}, Device Height: ${Device.screenHeight}");

//Check if device is tablet
    if (Device.get().isTablet) {
      print("Tablet");
    }

//Check if device is at least an iphone x
// NOTE: This detects up to Iphone 12 pro max
    if (Device.get().isIphoneX) {
      print("IphoneX");
    }

// For a generic notch test use
    if (Device.get().hasNotch) {
      print("hasNotch");
    }

//Other utility methods
    print(Device.get().isPhone);
    print(Device.get().isAndroid);
    print(Device.get().isIos);

    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        body: _layoutDetails(),
      );
    });
  }

  Widget _layoutDetails() {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            if (Device.get().isAndroid) _portraitAndriodSection(),
            if (Device.get().isIos) _portraitIosSection()

            // logic here
          ],
        ),
      );
    } else {
      return Row(
        children: <Widget>[
          if (Device.get().isAndroid) _landscapeLogoSection(),

          //if (Device.get().isIos)

          // Logic here
        ],
      );
    }
  }

  launchURLBrowser() async {
    const url = 'https://www.paypal.com/uk/home/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _portraitAndriodSection() {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          width: width,
          height: height,
          child: Container(
            padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
            child: Column(
              children: <Widget>[
                Container(
                  height: sy(180),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(sy(SizeConfig.borderRADIUS)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/homelogo.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
                    childAspectRatio: width / height / .65,
                    crossAxisSpacing: SizeConfig.axisSPACING,
                    mainAxisSpacing: SizeConfig.axisSPACING,
                    children: <Widget>[
                      gridItems(Icons.article, "assets/images/homelogo.png",
                          "Articles", 0),
                      gridItems(Icons.collections, "assets/images/homelogo.png",
                          "Collections", 1),
                      gridItems(Icons.tour, "assets/images/homelogo.png",
                          "Virtual Tours", 2),
                      gridItems(Icons.question_answer,
                          "assets/images/homelogo.png", "About Us!", 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _landscapeLogoSection() {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Container(
        width: width,
        height: height,
        child: Container(
          padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
          child: Column(
            children: <Widget>[
              Container(
                height: sx(130),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(sy(SizeConfig.borderRADIUS)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
                  childAspectRatio: width / height * 1.2,
                  crossAxisSpacing: SizeConfig.axisSPACING,
                  mainAxisSpacing: SizeConfig.axisSPACING,
                  children: <Widget>[
                    gridItems(Icons.article, "assets/images/homelogo.png",
                        "Articles", 0),
                    gridItems(Icons.collections, "assets/images/homelogo.png",
                        "Collections", 1),
                    gridItems(Icons.tour, "assets/images/homelogo.png",
                        "Virtual Tours", 2),
                    gridItems(Icons.question_answer,
                        "assets/images/homelogo.png", "About Us!", 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _portraitIosSection() {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          width: width,
          height: height,
          child: Container(
            padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
            child: Column(
              children: <Widget>[
                Container(
                  height: sy(180),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(sy(SizeConfig.borderRADIUS)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/homelogo.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(sy(SizeConfig.edgeINSETS)),
                    childAspectRatio: width / height / .65,
                    crossAxisSpacing: SizeConfig.axisSPACING,
                    mainAxisSpacing: SizeConfig.axisSPACING,
                    children: <Widget>[
                      gridItems(Icons.article, "assets/images/homelogo.png",
                          "Articles", 0),
                      gridItems(Icons.collections, "assets/images/homelogo.png",
                          "Collections", 1),
                      gridItems(Icons.tour, "assets/images/homelogo.png",
                          "Virtual Tours", 2),
                      gridItems(Icons.question_answer,
                          "assets/images/homelogo.png", "About Us!", 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget gridItems(IconData icon, String image, String title, int state) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return GestureDetector(
          onTap: () {
            switch (state) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArticlePage()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CollectionPage()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VirutalToursPage()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
                break;
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(sy(SizeConfig
                  .borderRADIUS)), // 15 works and collections looks tidier
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      color: SizeConfig.backroundCOLOR,
                      size: SizeConfig.cardLogoSize,
                    )),
                Opacity(
                  opacity: 1.0,
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(sy(SizeConfig.borderRADIUS)),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              child: Text(
                            title,
                            style: TextStyle(
                                color: SizeConfig.backroundCOLOR,
                                fontSize: SizeConfig.fontHOMESIZE,
                                fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
