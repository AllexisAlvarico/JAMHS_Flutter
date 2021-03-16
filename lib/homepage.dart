import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'article.dart';
import 'collection.dart';
import 'aboutus.dart';
import 'size_config.dart';
import 'dart:async'; // unused as of now ask if needed

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SizeConfig.edgeInsets),
          child: Column(
            children: <Widget>[
              Container(
                height: SizeConfig.safeBlockVertical * 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(SizeConfig.borderRadius),
                  image: DecorationImage(
                      image: AssetImage("assets/images/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(SizeConfig.edgeInsets),
                  childAspectRatio:
                      SizeConfig.screenWidth / SizeConfig.screenHeight / .55,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: <Widget>[
                    gridItems(Icons.article, "assets/images/homelogo.png",
                        "Articles", 0),
                    gridItems(Icons.collections, "assets/images/homelogo.png",
                        "Collections", 1),
                    gridItems(Icons.credit_card, "assets/images/homelogo.png",
                        "Donate", 2),
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
              launchURLBrowser();
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
            borderRadius: BorderRadius.circular(SizeConfig
                .borderRadius), // 15 works and collections looks tidier
            color: Colors.white,
          ),
          child: Stack(children: [
            Align(
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: Color(0xff243C6C),
                  size: 120.0,
                )),
            Opacity(
              opacity: 1.0,
              child: Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(SizeConfig.borderRadius),
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
                            color: Color(0xff243C6C),
                            fontSize: 26,
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
