import 'package:flutter/material.dart';
import 'ArtifactCard.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ArtifactData> modelData = [
    ArtifactData("assets/images/m1911.png", "M1911 Pistol\nDigital Model")
  ];

  List<ArtifactData> artifactData = [
    ArtifactData("assets/images/hewbrew_artifact.jpg", "test"),
    ArtifactData("assets/images/moh_book.jpg", "test")
  ];

  List<ArtifactData> rubinData = [
    ArtifactData("assets/images/tibur_uniform.jpg", "test"),
    ArtifactData("assets/images/tibur_hat.jpg", "test"),
    ArtifactData("assets/images/tibur_pin.jpg", "test")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        appBar: AppBar(
          backgroundColor: Color(0xff243C6C),
          title: Text("Collections"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "3D Artifacts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: modelData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {},
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "Artifacts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: artifactData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {},
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "Tibor Rubin Grouping",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: rubinData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {},
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
