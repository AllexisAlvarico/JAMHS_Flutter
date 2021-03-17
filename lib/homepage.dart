import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SizeConfig.edgeINSETS),
          child: Column(
            children: <Widget>[
              Container(
                height: SizeConfig.safeBlockVertical * 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
                  image: DecorationImage(
                      image: AssetImage("assets/images/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(SizeConfig.edgeINSETS),
                  childAspectRatio:
                      SizeConfig.screenWidth / SizeConfig.screenHeight / .55,
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
      ),
    );
  }

  launchURLBrowser() async {
    const url = 'https://www.paypal.com/uk/home/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget gridItems(IconData icon, String image, String title, int state) {
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
            borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
            color: Colors.white,
          ),
          child: Stack(children: [
            Align(
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: SizeConfig.backroundCOLOR,
                  size: SizeConfig.jamsLogoSize,
                )),
            Opacity(
              opacity: 1.0,
              child: Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS),
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
          ]),
        ));
  }
}
