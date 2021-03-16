import 'package:flutter/material.dart';
import 'ArtifactCard.dart';
import 'modelView.dart';
import 'artifactView.dart';
import 'size_config.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ModelData> modelData = [
    ModelData("assets/images/m1911.png", "M1911 Pistol digital model", "M1911",
        "3D Model", "assets/models/m1911.glb")
  ];

  List<ArtifactData> artifactData = [
    ArtifactData(
        "assets/images/hewbrew_artifact.jpg",
        "1930s-1940s Jewish Soldiers prayer books",
        "Hewbrew Bible",
        "Artifacts"),
    ArtifactData(
        "assets/images/moh_book.jpg",
        "T. Rubin' Programme, MoH Recipent Ceremony",
        "Medal of Honour",
        "Artifacts")
  ];

  List<ArtifactData> rubinData = [
    ArtifactData("assets/images/tibur_uniform.jpg",
        "Post War Khaki 1st cav. Shirt", "Uniform", "Tibor Collection"),
    ArtifactData("assets/images/tibur_hat.jpg", "Post War Calvary Stetson",
        "Hat", "Tibor Collection"),
    ArtifactData("assets/images/tibur_pin.jpg", "Tibor Rubin's Challenge Coin",
        "Military Pin", "Tibor Collection")
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
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
                                  builder: (context) => ModelView(
                                        src: data.modelPath,
                                        title: data.name,
                                      )));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: artifactData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtifactView(
                                        imagePath: data.imagePath,
                                        title: data.name,
                                        category: data.category,
                                        desc: "insert text",
                                      )));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.horizontalPosition,
                    vertical: SizeConfig.verticalPosition),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: rubinData.map((data) {
                      return ArtifactCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtifactView(
                                        imagePath: data.imagePath,
                                        title: data.name,
                                        category: data.category,
                                        desc: "insert text",
                                      )));
                        },
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
