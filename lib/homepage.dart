import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:relative_scale/relative_scale.dart';
import 'articlepage.dart';
import 'collection.dart';
import 'aboutus.dart';
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
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: SizeConfig.backroundCOLOR,
          body: _layoutDetails(),
        );
      },
    );
  }

  Widget _layoutDetails() {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _portraitSection(),
          ],
        ),
      );
    } else {
      return Row(
        children: <Widget>[
          _landscapeLogoSection(),
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

  Widget _portraitSection() {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          width: width,
          height: height,
          child: Container(
            padding: EdgeInsets.all(
              sy(SizeConfig.edgeINSETS),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: sy(180),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      sy(SizeConfig.borderRADIUS),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Logos/homelogo.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(
                      sy(SizeConfig.edgeINSETS),
                    ),
                    childAspectRatio: width / height / .65,
                    crossAxisSpacing: SizeConfig.axisSPACING,
                    mainAxisSpacing: SizeConfig.axisSPACING,
                    children: <Widget>[
                      gridItems(Icons.article,
                          "assets/images/Logos/homelogo.png", "Articles", 0),
                      gridItems(Icons.collections,
                          "assets/images/Logos/homelogo.png", "Collections", 1),
                      gridItems(Icons.tour, "assets/images/Logos/homelogo.png",
                          "Virtual Tour", 2),
                      gridItems(Icons.question_answer,
                          "assets/images/Logos/homelogo.png", "About Us!", 3),
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
          padding: EdgeInsets.all(
            sy(SizeConfig.edgeINSETS),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: sx(130),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    sy(SizeConfig.borderRADIUS),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Logos/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(
                    sy(SizeConfig.edgeINSETS),
                  ),
                  childAspectRatio: width / height * 1.3,
                  crossAxisSpacing: SizeConfig.axisSPACING,
                  mainAxisSpacing: SizeConfig.axisSPACING,
                  children: <Widget>[
                    gridItems(Icons.article, "assets/images/Logos/homelogo.png",
                        "Articles", 0),
                    gridItems(Icons.collections,
                        "assets/images/Logos/homelogo.png", "Collections", 1),
                    gridItems(Icons.tour, "assets/images/Logos/homelogo.png",
                        "Virtual Tours", 2),
                    gridItems(Icons.question_answer,
                        "assets/images/Logos/homelogo.png", "About Us!", 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
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
            width: sx(400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                sy(0),
              ), // 15 works and collections looks tidier
              color: Colors.transparent,
            ),
            child: Card(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      color: SizeConfig.backroundCOLOR,
                      size: SizeConfig.cardLogoSize,
                    ),
                  ),
                  Opacity(
                    opacity: 1.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          sy(SizeConfig.borderRADIUS),
                        ),
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
