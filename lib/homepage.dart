import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext t_context) {
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          gridItems(
              "Very nice Titles",
              "https://hslb.org/wp-content/uploads/2012/01/11-11-1918-end-of-WWI.jpg",
              0xff8CFF19,
              0xffb765d3),
          gridItems(
              "Very nice Grid",
              "https://hslb.org/wp-content/uploads/2012/01/11-11-1918-end-of-WWI.jpg",
              0xff9999FF,
              0xff19D9FF)
        ],
      ),
    );
  }

  Widget gridItems(
      String t_name, String t_image, int t_primaryColour, int t_secondColour) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        gradient: new LinearGradient(
          colors: [Color(t_primaryColour), Color(t_secondColour)],
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 1.0),
        ),
      ),
      child: Stack(children: [
        Opacity(
          opacity: 0.3,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: NetworkImage(t_image),
                fit: BoxFit.fitHeight,
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
                t_name,
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
