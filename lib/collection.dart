import 'package:flutter/material.dart';
import 'ArtifactCard.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ArtifactData> data = [
    ArtifactData("assets/images/m1911.png", "M1911 Pistol\nDigital Model")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        appBar: AppBar(
          backgroundColor: Color(0xff243C6C),
          title: Text("Collections"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3D Artifacts",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
              child: Row(
                children: data.map((data) {
                  return ArtifactCard(
                    imagePath: data.imagePath,
                    description: data.desc,
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}
