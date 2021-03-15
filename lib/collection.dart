import 'package:flutter/material.dart';
import 'ArtifactCard.dart';
import 'modelView.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ModelData> modelData = [
    ModelData("assets/images/m1911.png", "M1911 Pistol digital model",
        "assets/models/m1911.glb")
  ];

  List<ArtifactData> artifactData = [
    ArtifactData("assets/images/hewbrew_artifact.jpg",
        "1930s-1940s Jewish Soldiers prayer books"),
    ArtifactData("assets/images/moh_book.jpg",
        "T. Rubin' Programme, MoH Recipent Ceremony")
  ];

  List<ArtifactData> rubinData = [
    ArtifactData(
        "assets/images/tibur_uniform.jpg", "Post War Khaki 1st cav. Shirt"),
    ArtifactData("assets/images/tibur_hat.jpg", "Post War Calvary Stetson"),
    ArtifactData("assets/images/tibur_pin.jpg", "Tibor Rubin's Challenge Coin")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243C6C),
        appBar: AppBar(
          backgroundColor: Color(0xff243C6C),
          title: Text(
            "Collections",
            style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
          centerTitle: true,
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: modelData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ModelView(src: data.modelPath)));
                        },
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
