import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class VirutalToursPage extends StatefulWidget {
  @override
  _VirutalToursPageState createState() => _VirutalToursPageState();
}

class _VirutalToursPageState extends State<VirutalToursPage> {
  double _lon = 0;
  double _lat = 0;
  double _tilt = 0;
  int _panoId = 0;

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
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Center(
                    child: Text(
                  text,
                  textScaleFactor: 0.2,
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
            print('onTap: $longitude, $latitude, $tilt, $_panoId'),
        child: Image.asset('assets/images/DisplayPanoramicOne.jpg'),
        minLatitude: -20.0,
        maxLatitude: 35.0,
        hotspots: [
          Hotspot(
            name: "Display 1",
            latitude: 20.0,
            longitude: 16.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Benjamin Display",
            latitude: 20.0,
            longitude: 51.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Isaac Simon Display",
            latitude: 20.0,
            longitude: 65.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "David Display",
            latitude: 20.0,
            longitude: 80.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Leopold Display",
            latitude: 20.0,
            longitude: 110.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Henry Display",
            latitude: 20.0,
            longitude: 140.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Sam Ben Display",
            latitude: 30.0,
            longitude: 172.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Sydney Display",
            latitude: 20.0,
            longitude: 219.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Bill Ben Display",
            latitude: 20.0,
            longitude: 248.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Ray Isadore Display",
            latitude: 20.0,
            longitude: 276.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Tibor Ruben Display",
            latitude: 20.0,
            longitude: 305.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "Jack Display",
            latitude: 20.0,
            longitude: 327.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
          Hotspot(
            name: "John Display",
            latitude: 20.0,
            longitude: 340.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
                text: "Expand",
                icon: Icons.zoom_in,
                onPressed: () => setState(() => _panoId++)),
          ),
        ],
      ),
    );
  }
}
