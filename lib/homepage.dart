import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'article.dart';
import 'collection.dart';
import 'aboutus.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/homelogo.png"),
                      fit: BoxFit.contain),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20.0),
                  childAspectRatio: 0.9,
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
              print(title);
              WebView(
                initialUrl: "https://www.paypal.com/uk/home",
                javascriptMode: JavascriptMode.unrestricted,
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
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
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
                  borderRadius: BorderRadius.circular(24.0),
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
