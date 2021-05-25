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
  String mohText = "Jewish American recipients of awards for valor.  The Medal of Honor is" +
      "the highest award for valor but is not the only award for valor." +
      " Just beneath the Medal of Honor is the Distinguished Service Cross (Army)" +
      " for extreme gallantry and risk of life in combat, Navy Cross (Navy & Marines)" +
      " for valor in combat, and the Air Force Cross also for valor in combat." +
      " Hundreds of Jewish Americans have earned these awards. Below these awards" +
      " are the Silver Star for valor in combat and the Bronze Star for heroic achievement," +
      " heroic service, meritorious achievement, or meritorious service in a combat zone." +
      " Thousands of Jewish Americans have earned these awards.";

  List<DisplayData>? displayData;

  void setupList() {
    displayData = [
      DisplayData(
          displayPath: "assets/images/VirtualTours/collection.jpg",
          casePath: "assets/images/VirtualTours/collection_b.JPG",
          artifactPath: "assets/images/VirtualTours/collection_c.JPG",
          title: "Introduction",
          pos: CoordPos(latitude: 20, longitude: 16),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 1020, top: 350),
                title: "Army MOH Replica",
                desc: mohText,
                tag: 1),
            ArtifactButtonData(
                pos: Position(right: 350, top: 600),
                title: "Navy MOH Replica",
                desc: mohText,
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 350, top: 600),
                title: "Air Force MOH Replica",
                desc: mohText,
                tag: 3),
          ]),
      DisplayData(
        displayPath: "assets/images/VirtualTours/benjamin_title.jpg",
        casePath: "assets/images/VirtualTours/benjamin_b.jpg",
        artifactPath: "assets/images/VirtualTours/benjamin_c.jpg",
        title: "Benjamin",
        pos: CoordPos(latitude: 20, longitude: 51),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(left: 250, top: 250), desc: "Kepi", tag: 1),
          ArtifactButtonData(
              pos: Position(left: 1000, top: 250),
              desc: "Infantry NCO Trousers, Wool White strip",
              tag: 2),
          ArtifactButtonData(
              pos: Position(left: 1000, top: 650),
              desc: "California Issue Sword Belt",
              tag: 3),
          ArtifactButtonData(
              pos: Position(left: 450, top: 800),
              desc: "Musket Bayonet",
              tag: 4),
          ArtifactButtonData(
              pos: Position(left: 350, top: 600), desc: "Drumstick", tag: 5),
        ],
      ),
      DisplayData(
          displayPath: "assets/images/isaac_simon_title.jpg",
          casePath: "assets/images/isaac_simon_b.jpg",
          artifactPath: "assets/images/isaac_simon_c.jpg",
          title: "Isaac & Simon",
          pos: CoordPos(latitude: 20, longitude: 65),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 250, top: 200),
                desc: "Infantry Horn Insignia",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 250, top: 380), desc: "Kepi", tag: 2),
            ArtifactButtonData(
                pos: Position(left: 1300, top: 450),
                desc: "Post Cavalry",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 580, top: 530),
                desc: "Indian Campaign Medal",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 850, top: 200),
                desc: "Dress Blue Trousers",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 1250, top: 780),
                desc: "Infantry Seargents Stripes (1855-1871)",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 170, top: 730),
                desc: "Infantry Corporal Stripes (1855-1871)",
                tag: 7),
          ]),
      DisplayData(
          displayPath: "assets/images/david_title.jpg",
          casePath: "assets/images/david_b.jpg",
          artifactPath: "assets/images/david_c.jpg",
          title: "David",
          pos: CoordPos(latitude: 20, longitude: 80),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 310, top: 410),
                desc: "Hardee Hat national insignia",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 800, top: 360),
                desc: "Powder Horn",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 1150, top: 200),
                desc: "Coffee Boiler with lid",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 230, top: 600),
                desc: "Corporal Stripes, Infantry (1855-1871)",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 750, top: 800),
                desc: "Capper, Patterson Revolver",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 700, top: 500),
                desc: "Holster, Pistol",
                tag: 6),
            ArtifactButtonData(
                pos: Position(right: 100, top: 500), desc: "Kepi", tag: 7),
          ]),
      DisplayData(
          displayPath: "assets/images/leopold_title.jpg",
          casePath: "assets/images/leopold_b.jpg",
          artifactPath: "assets/images/leopold_c.jpg",
          title: "Leopold",
          pos: CoordPos(latitude: 20, longitude: 110),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 200, top: 200), desc: "Kepi", tag: 1),
            ArtifactButtonData(
                pos: Position(left: 550, top: 80),
                desc: "Calling Card",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 800, top: 160),
                desc: "Belt Buckle",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 800, top: 310),
                desc: "Infantry Seargeants Stripes (1855-1871)",
                tag: 4),
            ArtifactButtonData(
                pos: Position(right: 150, top: 180),
                desc: "Cartridge Box",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 170, top: 550),
                desc: "Hardee Hat national insignia",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 800, top: 500), desc: "GAR Medals", tag: 7),
            ArtifactButtonData(
                pos: Position(right: 110, botton: 200),
                desc: "Infantry Horn Insignia",
                tag: 8),
            ArtifactButtonData(
                pos: Position(left: 500, top: 200),
                desc: "40th Annual Campment GAR Badge",
                tag: 9),
          ]),
      DisplayData(
          displayPath: "assets/images/henry_title.jpg",
          casePath: "assets/images/henry_b.jpg",
          artifactPath: "assets/images/henry_c.jpg",
          title: "Henry",
          pos: CoordPos(latitude: 20, longitude: 140),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 10, top: 10), desc: "", tag: 1),
          ]),
      DisplayData(
          displayPath: "assets/images/samuel_benjamin_title.jpg",
          casePath: "assets/images/samuel_benjamin_b.jpg",
          artifactPath: "assets/images/samuel_benjamin_c.jpg",
          title: "Samuel & Benjamin",
          pos: CoordPos(latitude: 30, longitude: 172),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 300, top: 300),
                desc: "USMC Campaign Hat with EGA",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 10, botton: 200),
                desc: "Haitian Campaign Medal",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 600, botton: 200),
                desc: "Mills Belt",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 650, top: 300), desc: "Puttees", tag: 4),
          ]),
      DisplayData(
          displayPath: "assets/images/sydney_title.jpg",
          casePath: "assets/images/sydney_b.jpg",
          artifactPath: "assets/images/sydney_c.jpg",
          title: "Sydney",
          pos: CoordPos(latitude: 20, longitude: 219),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 600, top: 300),
                desc: "Helmet, M1917",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 850, top: 350),
                desc: "Ammunition Pouch",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 350, botton: 170), desc: "Whistle", tag: 3),
            ArtifactButtonData(
                pos: Position(left: 100, top: 400), desc: "Medal", tag: 4),
            ArtifactButtonData(
                pos: Position(left: 50, botton: 250),
                desc: "M1902 First Sergeant Stripes paper",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 300, botton: 300),
                desc: "Protective Mask",
                tag: 6),
            ArtifactButtonData(
                pos: Position(right: 300, top: 150),
                desc: "M1917 Bolo Knife",
                tag: 7),
          ]),
      DisplayData(
          displayPath: "assets/images/william_ben_title.jpg",
          casePath: "assets/images/william_ben_b.jpg",
          artifactPath: "assets/images/william_ben_c.jpg",
          title: "William & Ben",
          pos: CoordPos(latitude: 20, longitude: 248),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 730, top: 420),
                desc: "M1902 Sergeant Stripes",
                tag: 1),
            ArtifactButtonData(
                pos: Position(right: 300, top: 200),
                desc: "Japanese Gas Mask",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 700, top: 200),
                desc: "WWI Victory Medal",
                tag: 3),
            ArtifactButtonData(
                pos: Position(right: 100, botton: 200),
                desc: "Photograph, Japanese Soldiers",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 200, botton: 200),
                desc: "WWI overseas cap",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 820, top: 200),
                desc: "Asiatic Pacific Campaign Medal",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 850, botton: 200),
                desc: "WWI Thrench Knife",
                tag: 7),
            ArtifactButtonData(
                pos: Position(left: 200, top: 300),
                desc: "Canteen with Cover",
                tag: 8),
          ]),
      DisplayData(
          displayPath: "assets/images/raymond_isadore_title.jpg",
          casePath: "assets/images/raymond_isadore_b.jpg",
          artifactPath: "assets/images/raymond_isadore_c.jpg",
          title: "Ray & Isadore",
          pos: CoordPos(latitude: 20, longitude: 276),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 500, top: 120),
                desc: "M1936 Pistol Belt",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 750, top: 200),
                desc: "M1918 First Aid Pouch",
                tag: 2),
            ArtifactButtonData(
                pos: Position(right: 350, top: 150),
                desc: "Wool Cold Weather Cap (Jeep Cap)",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 150, top: 300),
                desc: "M1912 Leather Dismounted Holster, Brown",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 500, top: 400),
                desc: "Officers Service Hat",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 1100, top: 400),
                desc: "Parachute Badge",
                tag: 6),
            ArtifactButtonData(
                pos: Position(left: 1100, top: 480),
                desc: "Combat Infantry Badge",
                tag: 7),
            ArtifactButtonData(
                pos: Position(left: 1150, top: 650),
                desc:
                    "Europe-Africa-Middle East Campaign Medal with 2 service stars",
                tag: 8),
            ArtifactButtonData(
                pos: Position(right: 100, top: 200),
                desc: "2.35-inch rocket",
                tag: 9),
            ArtifactButtonData(
                pos: Position(left: 800, top: 500),
                desc: "Sergeant Stripes",
                tag: 10),
          ]),
      DisplayData(
          displayPath: "assets/images/rubin_title.jpg",
          casePath: "assets/images/rubin_b.jpg",
          artifactPath: "assets/images/rubin_c.jpg",
          title: "Tibor Rubin",
          pos: CoordPos(latitude: 20, longitude: 305),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(right: 300, top: 300),
                desc: "Map of Korea",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 500, top: 200),
                desc: "Shoulder Sleeve Insignia, 1st Cavalry Division",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 790, top: 320),
                desc: "Collar Insignia “U.S.”",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 600, top: 320),
                desc: "Collar Insignia “Infantry”",
                tag: 4),
          ]),
      DisplayData(
          displayPath: "assets/images/jack_title.jpg",
          casePath: "assets/images/jack_b.jpg",
          artifactPath: "assets/images/jack_c.jpg",
          title: "Jack",
          pos: CoordPos(latitude: 20, longitude: 327),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 700, top: 200),
                desc: "M1954 Belt with Magazine Pouches",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 700, botton: 110),
                desc: "Combat Infantry Badge",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 100, botton: 500),
                desc: "Hot Weather Cap",
                tag: 3),
            ArtifactButtonData(
                pos: Position(left: 400, botton: 200),
                desc: "Vietnam Service Medal",
                tag: 4),
            ArtifactButtonData(
                pos: Position(left: 980, botton: 200),
                desc: "Republic Cross Gallantry Medal",
                tag: 5),
            ArtifactButtonData(
                pos: Position(right: 100, top: 400),
                desc: "Grounds Troops Helmet M1",
                tag: 6),
          ]),
      DisplayData(
          displayPath: "assets/images/john_title.jpg",
          casePath: "assets/images/john_b.jpg",
          artifactPath: "assets/images/john_c.jpg",
          title: "John",
          pos: CoordPos(latitude: 20, longitude: 340),
          artifactButtonData: [
            ArtifactButtonData(
                pos: Position(left: 300, top: 300),
                desc: "USAF Field Hat",
                tag: 1),
            ArtifactButtonData(
                pos: Position(left: 350, botton: 190),
                desc: "Vietnam Service Medal",
                tag: 2),
            ArtifactButtonData(
                pos: Position(left: 100, botton: 200),
                desc: "National Defense Service Medal",
                tag: 3),
            ArtifactButtonData(
                pos: Position(right: 100, botton: 300),
                desc: "Canteen with Cover",
                tag: 4),
            ArtifactButtonData(
                pos: Position(right: 250, top: 200),
                desc: "USAF Enlisted Service Hat",
                tag: 5),
            ArtifactButtonData(
                pos: Position(left: 700, botton: 300),
                desc: "Vietnam Mess Kit, dated (1966)",
                tag: 6),
          ]),
    ];
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
    setupList();
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
                hotspots: displayData!
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
                                displayData: displayData!,
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
