import 'package:flutter/material.dart';
import 'package:jamhs_flutter/displayView.dart';
import 'package:panorama/panorama.dart';
import 'package:jamhs_flutter/floorPlanView.dart';
import 'size_config.dart';

class VirutalToursPage extends StatefulWidget {
  @override
  _VirutalToursPageState createState() => _VirutalToursPageState();
}

class _VirutalToursPageState extends State<VirutalToursPage> {
  int _displayId = 0;

  List<DisplayData> displayData = [
    DisplayData(
        displayPath: "assets/images/collection.jpg",
        casePath: "assets/images/collection_b.JPG",
        artifactPath: "assets/images/collection_c.JPG",
        title: "Introduction",
        pos: CoordPos(latitude: 20, longitude: 16),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/benjamin_title.jpg",
        casePath: "assets/images/benjamin_b.jpg",
        artifactPath: "assets/images/benjamin_c.jpg",
        title: "Benjamin",
        pos: CoordPos(latitude: 20, longitude: 51),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 250, top: 250), desc: "Kepi"),
          ArtifactButtonData(
              pos: Position(left: 1000, top: 250),
              desc: "Infantry NCO Trousers, Wool White strip"),
          ArtifactButtonData(
              pos: Position(left: 1000, top: 650),
              desc: "California Issue Sword Belt"),
          ArtifactButtonData(
              pos: Position(left: 450, top: 800), desc: "Musket Bayonet"),
          ArtifactButtonData(
              pos: Position(left: 350, top: 600), desc: "Drumstick"),
        ]),
    DisplayData(
        displayPath: "assets/images/isaac_simon_title.jpg",
        casePath: "assets/images/isaac_simon_b.jpg",
        artifactPath: "assets/images/isaac_simon_c.jpg",
        title: "Isaac & Simon",
        pos: CoordPos(latitude: 20, longitude: 65),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(left: 250, top: 250),
              desc: "Infanrty Horn Insignia"),
          ArtifactButtonData(pos: Position(left: 250, top: 480), desc: "Kepi"),
          ArtifactButtonData(
              pos: Position(left: 1300, top: 450), desc: "Post Cavalry"),
          ArtifactButtonData(
              pos: Position(left: 10, top: 10), desc: "8th Cavalry Insignia"),
          ArtifactButtonData(
              pos: Position(left: 580, top: 530),
              desc: "Indian Campaign Medal"),
          ArtifactButtonData(
              pos: Position(left: 850, top: 200), desc: "Dress Blue Trousers"),
          ArtifactButtonData(
              pos: Position(left: 1250, top: 780),
              desc: "Infantry Seargents Stripes (1855-1871)"),
          ArtifactButtonData(
              pos: Position(left: 170, top: 730),
              desc: "Infantry Corporal Stripes (1855-1871)"),
        ]),
    DisplayData(
        displayPath: "assets/images/david_title.jpg",
        casePath: "assets/images/david_b.jpg",
        artifactPath: "assets/images/david_c.jpg",
        title: "David",
        pos: CoordPos(latitude: 20, longitude: 80),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/leopold_title.jpg",
        casePath: "assets/images/leopold_b.jpg",
        artifactPath: "assets/images/leopold_c.jpg",
        title: "Leopold",
        pos: CoordPos(latitude: 20, longitude: 110),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/henry_title.jpg",
        casePath: "assets/images/henry_b.jpg",
        artifactPath: "assets/images/henry_c.jpg",
        title: "Henry",
        pos: CoordPos(latitude: 20, longitude: 140),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/samuel_benjamin_title.jpg",
        casePath: "assets/images/samuel_benjamin_b.jpg",
        artifactPath: "assets/images/samuel_benjamin_c.jpg",
        title: "Samuel & Benjamin",
        pos: CoordPos(latitude: 30, longitude: 172),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/sydney_title.jpg",
        casePath: "assets/images/sydney_b.jpg",
        artifactPath: "assets/images/sydney_c.jpg",
        title: "Sydney",
        pos: CoordPos(latitude: 20, longitude: 219),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/william_ben_title.jpg",
        casePath: "assets/images/william_ben_b.jpg",
        artifactPath: "assets/images/william_ben_c.jpg",
        title: "William & Ben",
        pos: CoordPos(latitude: 20, longitude: 248),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/raymond_isadore_title.jpg",
        casePath: "assets/images/raymond_isadore_b.jpg",
        artifactPath: "assets/images/raymond_isadore_c.jpg",
        title: "Ray & Isadore",
        pos: CoordPos(latitude: 20, longitude: 276),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/rubin_title.jpg",
        casePath: "assets/images/rubin_b.jpg",
        artifactPath: "assets/images/rubin_c.jpg",
        title: "Tibor Rubin",
        pos: CoordPos(latitude: 20, longitude: 305),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/jack_title.jpg",
        casePath: "assets/images/jack_b.jpg",
        artifactPath: "assets/images/jack_c.jpg",
        title: "Jack",
        pos: CoordPos(latitude: 20, longitude: 327),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
    DisplayData(
        displayPath: "assets/images/john_title.jpg",
        casePath: "assets/images/john_b.jpg",
        artifactPath: "assets/images/john_c.jpg",
        title: "John",
        pos: CoordPos(latitude: 20, longitude: 340),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
          ArtifactButtonData(pos: Position(left: 10, top: 10), desc: ""),
        ]),
  ];

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
                  textScaleFactor: .7,
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
      home: Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: SizeConfig.backroundCOLOR,
          title: Text(
            "Exhibits",
            style: TextStyle(
                fontSize: SizeConfig.fontHEADERSIZE,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
        ),
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            Panorama(
                onViewChanged: (longitude, latitude, tilt) {
                  setState(() {});
                },
                onTap: (longitude, latitude, tilt) =>
                    print('onTap: $longitude, $latitude, $tilt, $_displayId'),
                child: Image.asset('assets/images/DisplayPanoramicOne.jpg'),
                minLatitude: -20.0,
                maxLatitude: 35.0,
                hotspots: displayData
                    .map((data) => Hotspot(
                        name: data.title,
                        latitude: data.pos.latitude,
                        longitude: data.pos.longitude,
                        width: 90,
                        height: 75,
                        widget: hotspotButton(
                            text: data.title,
                            icon: Icons.zoom_in,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DisplayView(
                                            displayImgPath: data.displayPath,
                                            caseImgPath: data.casePath,
                                            caseImgZoomPath: data.artifactPath,
                                            title: data.title,
                                            artifactButtonData:
                                                data.artifactButtonData,
                                          )));
                            })))
                    .toList()),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FloorPlanView(
                                displayData: displayData,
                              )));
                },
                icon: Icon(Icons.map_outlined),
                label: Text(
                  "floor plan",
                  style: TextStyle(
                      fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
                style: ElevatedButton.styleFrom(
                  primary: SizeConfig.backroundCOLOR.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
