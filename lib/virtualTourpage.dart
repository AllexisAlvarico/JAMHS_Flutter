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
              pos: Position(left: 250, top: 200),
              desc: "Infantry Horn Insignia"),
          ArtifactButtonData(pos: Position(left: 250, top: 380), desc: "Kepi"),
          ArtifactButtonData(
              pos: Position(left: 1300, top: 450), desc: "Post Cavalry"),
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
          ArtifactButtonData(
              pos: Position(left: 310, top: 410),
              desc: "Hardee Hat national insignia"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 360), desc: "Powder Horn"),
          ArtifactButtonData(
              pos: Position(left: 1150, top: 200),
              desc: "Coffee Boiler with lid"),
          ArtifactButtonData(
              pos: Position(left: 230, top: 600),
              desc: "Corporal Stripes, Infantry (1855-1871)"),
          ArtifactButtonData(
              pos: Position(left: 750, top: 800),
              desc: "Capper, Patterson Revolver"),
          ArtifactButtonData(
              pos: Position(left: 700, top: 500), desc: "Holster, Pistol"),
          ArtifactButtonData(pos: Position(right: 100, top: 500), desc: "Kepi"),
        ]),
    DisplayData(
        displayPath: "assets/images/leopold_title.jpg",
        casePath: "assets/images/leopold_b.jpg",
        artifactPath: "assets/images/leopold_c.jpg",
        title: "Leopold",
        pos: CoordPos(latitude: 20, longitude: 110),
        artifactButtonData: [
          ArtifactButtonData(pos: Position(left: 200, top: 200), desc: "Kepi"),
          ArtifactButtonData(
              pos: Position(left: 550, top: 80), desc: "Calling Card"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 160), desc: "Belt Buckle"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 310),
              desc: "Infantry Seargeants Stripes (1855-1871)"),
          ArtifactButtonData(
              pos: Position(right: 150, top: 180), desc: "Cartridge Box"),
          ArtifactButtonData(
              pos: Position(right: 170, top: 550),
              desc: "Hardee Hat national insignia"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 500), desc: "GAR Medals"),
          ArtifactButtonData(
              pos: Position(right: 110, botton: 200),
              desc: "Infantry Horn Insignia"),
          ArtifactButtonData(
              pos: Position(left: 500, top: 200),
              desc: "40th Annual Campment GAR Badge"),
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
          ArtifactButtonData(
              pos: Position(left: 300, top: 300),
              desc: "USMC Campaign Hat with EGA"),
          ArtifactButtonData(
              pos: Position(left: 10, botton: 200),
              desc: "Haitian Campaign Medal"),
          ArtifactButtonData(
              pos: Position(left: 600, botton: 200), desc: "Mills Belt"),
          ArtifactButtonData(
              pos: Position(left: 650, top: 300), desc: "Puttees"),
        ]),
    DisplayData(
        displayPath: "assets/images/sydney_title.jpg",
        casePath: "assets/images/sydney_b.jpg",
        artifactPath: "assets/images/sydney_c.jpg",
        title: "Sydney",
        pos: CoordPos(latitude: 20, longitude: 219),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(left: 600, top: 300), desc: "Helmet, M1917"),
          ArtifactButtonData(
              pos: Position(left: 850, top: 350), desc: "Ammunition Pouch"),
          ArtifactButtonData(
              pos: Position(left: 350, botton: 170), desc: "Whistle"),
          ArtifactButtonData(pos: Position(left: 100, top: 400), desc: "Medal"),
          ArtifactButtonData(
              pos: Position(left: 50, botton: 250),
              desc: "M1902 First Sergeant Stripes paper"),
          ArtifactButtonData(
              pos: Position(right: 300, botton: 300), desc: "Protective Mask"),
          ArtifactButtonData(
              pos: Position(right: 300, top: 150), desc: "M1917 Bolo Knife"),
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
              desc: "M1902 Sergeant Stripes"),
          ArtifactButtonData(
              pos: Position(right: 300, top: 200), desc: "Japanese Gas Mask"),
          ArtifactButtonData(
              pos: Position(left: 700, top: 200), desc: "WWI Victory Medal"),
          ArtifactButtonData(
              pos: Position(right: 100, botton: 200),
              desc: "Photograph, Japanese Soldiers"),
          ArtifactButtonData(
              pos: Position(left: 200, botton: 200), desc: "WWI overseas cap"),
          ArtifactButtonData(
              pos: Position(left: 820, top: 200),
              desc: "Asiatic Pacific Campaign Medal"),
          ArtifactButtonData(
              pos: Position(left: 850, botton: 200), desc: "WWI Thrench Knife"),
          ArtifactButtonData(
              pos: Position(left: 200, top: 300), desc: "Canteen with Cover"),
        ]),
    DisplayData(
        displayPath: "assets/images/raymond_isadore_title.jpg",
        casePath: "assets/images/raymond_isadore_b.jpg",
        artifactPath: "assets/images/raymond_isadore_c.jpg",
        title: "Ray & Isadore",
        pos: CoordPos(latitude: 20, longitude: 276),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(left: 500, top: 120), desc: "M1936 Pistol Belt"),
          ArtifactButtonData(
              pos: Position(left: 750, top: 200),
              desc: "M1918 First Aid Pouch"),
          ArtifactButtonData(
              pos: Position(right: 350, top: 150),
              desc: "Wool Cold Weather Cap (Jeep Cap)"),
          ArtifactButtonData(
              pos: Position(left: 150, top: 300),
              desc: "M1912 Leather Dismounted Holster, Brown"),
          ArtifactButtonData(
              pos: Position(left: 500, top: 400), desc: "Officers Service Hat"),
          ArtifactButtonData(
              pos: Position(left: 1100, top: 400), desc: "Parachute Badge"),
          ArtifactButtonData(
              pos: Position(left: 1100, top: 480),
              desc: "Combat Infantry Badge"),
          ArtifactButtonData(
              pos: Position(left: 1150, top: 650),
              desc:
                  "Europe-Africa-Middle East Campaign Medal with 2 service stars"),
          ArtifactButtonData(
              pos: Position(right: 100, top: 200), desc: "2.35-inch rocket"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 500), desc: "Sergeant Stripes"),
        ]),
    DisplayData(
        displayPath: "assets/images/rubin_title.jpg",
        casePath: "assets/images/rubin_b.jpg",
        artifactPath: "assets/images/rubin_c.jpg",
        title: "Tibor Rubin",
        pos: CoordPos(latitude: 20, longitude: 305),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(right: 300, top: 300), desc: "Map of Korea"),
          ArtifactButtonData(
              pos: Position(left: 500, top: 200),
              desc: "Shoulder Sleeve Insignia, 1st Cavalry Division"),
          ArtifactButtonData(
              pos: Position(left: 890, top: 320),
              desc: "Collar Insignia “U.S.”"),
          ArtifactButtonData(
              pos: Position(left: 800, top: 320),
              desc: "Collar Insignia “Infantry”"),
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
              desc: "M1954 Belt with Magazine Pouches"),
          ArtifactButtonData(
              pos: Position(left: 700, botton: 110),
              desc: "Combat Infantry Badge"),
          ArtifactButtonData(
              pos: Position(left: 100, botton: 500), desc: "Hot Weather Cap"),
          ArtifactButtonData(
              pos: Position(left: 400, botton: 200),
              desc: "Vietnam Service Medal"),
          ArtifactButtonData(
              pos: Position(left: 980, botton: 200),
              desc: "Republic Cross Gallantry Medal"),
          ArtifactButtonData(
              pos: Position(right: 100, top: 400),
              desc: "Grounds Troops Helmet M1"),
        ]),
    DisplayData(
        displayPath: "assets/images/john_title.jpg",
        casePath: "assets/images/john_b.jpg",
        artifactPath: "assets/images/john_c.jpg",
        title: "John",
        pos: CoordPos(latitude: 20, longitude: 340),
        artifactButtonData: [
          ArtifactButtonData(
              pos: Position(left: 300, top: 300), desc: "USAF Field Hat"),
          ArtifactButtonData(
              pos: Position(left: 350, botton: 190),
              desc: "Vietnam Service Medal"),
          ArtifactButtonData(
              pos: Position(left: 100, botton: 200),
              desc: "National Defense Service Medal"),
          ArtifactButtonData(
              pos: Position(right: 100, botton: 300),
              desc: "Canteen with Cover"),
          ArtifactButtonData(
              pos: Position(right: 250, top: 200),
              desc: "USAF Enlisted Service Hat"),
          ArtifactButtonData(
              pos: Position(left: 700, botton: 300),
              desc: "Vietnam Mess Kit, dated (1966)"),
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
