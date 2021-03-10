import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    gridItems("Very nice Titles", "assets/images/homelogo.png"),
                    gridItems("Very nice Grid", "assets/images/homelogo.png"),
                    gridItems("Very nice Grid", "assets/images/homelogo.png"),
                    gridItems("Very nice Grid", "assets/images/homelogo.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridItems(String name, String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Stack(children: [
        Opacity(
          opacity: 1.0,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Text(
                    "Jobs",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                  SizedBox(width: 10.0),
                  Container(
                      child: Icon(
                    FontAwesomeIcons.compass,
                    color: Colors.white,
                  )),
                  SizedBox(width: 10.0),
                  Container(
                    child: Text(
                      "Guide",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}
