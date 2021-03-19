import 'package:flutter/material.dart';
import 'package:jamhs_flutter/displayView.dart';
import 'package:panorama/panorama.dart';
import 'size_config.dart';

class VirutalToursPage extends StatefulWidget {
  @override
  _VirutalToursPageState createState() => _VirutalToursPageState();
}

class _VirutalToursPageState extends State<VirutalToursPage> {
  double _lon = 0;
  double _lat = 0;
  double _tilt = 0;
  int _displayId = 0;
  bool _panoView = true;

  void onViewChanged(longitude, latitude, tilt) {
    setState(() {
      _lon = longitude;
      _lat = latitude;
      _tilt = tilt;
    });
  }

  Widget hotspotButton(
      {String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(
                SizeConfig.backroundCOLOR.withOpacity(.70)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: SizeConfig.backroundCOLOR.withOpacity(.70),
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Center(
                    child: Text(
                  text,
                  textScaleFactor: 0.2,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Futura"),
                )),
              )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panorama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Panorama(
        onViewChanged: onViewChanged,
        onTap: (longitude, latitude, tilt) =>
            print('onTap: $longitude, $latitude, $tilt, $_displayId'),
        child: Image.asset('assets/images/DisplayPanoramicOne.jpg'),
        minLatitude: -20.0,
        maxLatitude: 35.0,
        hotspots: [
          Hotspot(
            name: "Introduction",
            latitude: 20.0,
            longitude: 16.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Introduction",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/david_title.jpg",
                              caseImgPath: "assets/images/david_b.jpg",
                              caseImgZoomPath: "assets/images/david_c.jpg",
                              title: "Introduction")));
                }),
          ),
          Hotspot(
            name: "Benjamin Display",
            latitude: 20.0,
            longitude: 51.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Benjamin",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath:
                                  "assets/images/benjamin_title.jpg",
                              caseImgPath: "assets/images/benjamin_b.jpg",
                              caseImgZoomPath: "assets/images/benjamin_c.jpg",
                              title: "Benjamin")));
                }),
          ),
          Hotspot(
            name: "Isaac Simon",
            latitude: 20.0,
            longitude: 65.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Isaac & Simon",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath:
                                  "assets/images/isaac_simon_title.jpg",
                              caseImgPath: "assets/images/isaac_simon_b.jpg",
                              caseImgZoomPath:
                                  "assets/images/isaac_simon_c.jpg",
                              title: "Isaac & Simon")));
                }),
          ),
          Hotspot(
            name: "David Display",
            latitude: 20.0,
            longitude: 80.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "David",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/david_title.jpg",
                              caseImgPath: "assets/images/david_b.jpg",
                              caseImgZoomPath: "assets/images/david_c.jpg",
                              title: "David")));
                }),
          ),
          Hotspot(
            name: "Leopold Display",
            latitude: 20.0,
            longitude: 110.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Leopold Display",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/leopold_title.jpg",
                              caseImgPath: "assets/images/leopold_b.jpg",
                              caseImgZoomPath: "assets/images/leopold_c.jpg",
                              title: "Leopold")));
                }),
          ),
          Hotspot(
            name: "Henry Display",
            latitude: 20.0,
            longitude: 140.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Henry",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/henry_title.jpg",
                              caseImgPath: "assets/images/henry_b.jpg",
                              caseImgZoomPath: "assets/images/henry_c.jpg",
                              title: "Henry")));
                }),
          ),
          Hotspot(
            name: "Sam Ben Display",
            latitude: 30.0,
            longitude: 172.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Sam & Ben",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath:
                                  "assets/images/samuel_benjamin_title.jpg",
                              caseImgPath:
                                  "assets/images/samuel_benjamin_b.jpg",
                              caseImgZoomPath:
                                  "assets/images/samuel_benjamin_c.jpg",
                              title: "Samuel & Benjamin")));
                }),
          ),
          Hotspot(
            name: "Sydney Display",
            latitude: 20.0,
            longitude: 219.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Sydney",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/sydney_title.jpg",
                              caseImgPath: "assets/images/sydney_b.jpg",
                              caseImgZoomPath: "assets/images/sydney_c.jpg",
                              title: "Sydney")));
                }),
          ),
          Hotspot(
            name: "Bill Ben Display",
            latitude: 20.0,
            longitude: 248.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Will & Ben",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath:
                                  "assets/images/william_ben_title.jpg",
                              caseImgPath: "assets/images/william_ben_b.jpg",
                              caseImgZoomPath:
                                  "assets/images/william_ben_c.jpg",
                              title: "William & Ben")));
                }),
          ),
          Hotspot(
            name: "Ray Isadore Display",
            latitude: 20.0,
            longitude: 276.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Ray & Isadore",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath:
                                  "assets/images/raymond_isadore_title.jpg",
                              caseImgPath:
                                  "assets/images/raymond_isadore_b.jpg",
                              caseImgZoomPath:
                                  "assets/images/raymond_isadore_c.jpg",
                              title: "Raymond & Isadore")));
                }),
          ),
          Hotspot(
            name: "Tibor Rubin Display",
            latitude: 20.0,
            longitude: 305.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Tibor Rubin",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/rubin_title.jpg",
                              caseImgPath: "assets/images/rubin_b.jpg",
                              caseImgZoomPath: "assets/images/rubin_c.jpg",
                              title: "Rubin")));
                }),
          ),
          Hotspot(
            name: "Jack Display",
            latitude: 20.0,
            longitude: 327.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Jack",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/jack_title.jpg",
                              caseImgPath: "assets/images/jack_b.jpg",
                              caseImgZoomPath: "assets/images/jack_c.jpg",
                              title: "Jack")));
                }),
          ),
          Hotspot(
            name: "John Display",
            latitude: 20.0,
            longitude: 340.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "John",
                icon: Icons.zoom_in,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayView(
                              displayImgPath: "assets/images/john_title.jpg",
                              caseImgPath: "assets/images/john_b.jpg",
                              caseImgZoomPath: "assets/images/john_c.jpg",
                              title: "John")));
                }),
          ),
        ],
      ),
    );
  }
}
