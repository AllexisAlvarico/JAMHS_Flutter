import 'package:flutter/material.dart';
import 'package:jamhs_flutter/ArtifactCard.dart';
import 'modelView.dart';
import 'artifactView.dart';
import 'pdfView.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ModelData> modelData = [
    ModelData(
        imagePath: "assets/images/m1911.png",
        title: "M1911 Pistol digital model",
        name: "M1911",
        category: "3D Model",
        modelPath: "assets/models/m1911.glb")
  ];

  List<ArtifactData> artifactData = [
    ArtifactData(
        imagePath: "assets/images/hewbrew_artifact.jpg",
        title: "1930s-1940s Jewish Soldiers prayer books",
        name: "Hewbrew Bible",
        category: "Artifacts",
        desc: "insert text"),
    ArtifactData(
        imagePath: "assets/images/moh_book.jpg",
        title: "T. Rubin' Programme, MoH Recipent Ceremony",
        name: "Medal of Honour",
        category: "Artifacts",
        desc: "insert text")
  ];

  List<ArtifactData> rubinData = [
    ArtifactData(
        imagePath: "assets/images/tibur_uniform.jpg",
        title: "Post War Khaki 1st cav. Shirt",
        name: "Uniform",
        category: "Tibor Collection",
        desc: "insert text"),
    ArtifactData(
        imagePath: "assets/images/tibur_hat.jpg",
        title: "Post War Calvary Stetson",
        name: "Hat",
        category: "Tibor Collection",
        desc: "insert text"),
    ArtifactData(
        imagePath: "assets/images/tibur_pin.jpg",
        title: "Tibor Rubin's Challenge Coin",
        name: "Military Pin",
        category: "Tibor Collection",
        desc: "insert text")
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
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtifactView(
                                        imagePath: data.imagePath,
                                        title: data.name,
                                        category: data.category,
                                        desc: data.desc,
                                      )));
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
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtifactView(
                                        imagePath: data.imagePath,
                                        title: data.name,
                                        category: data.category,
                                        desc: data.desc,
                                      )));
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
                  "Graphic Novel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ArtifactCard(
                  imagePath: "assets/images/tibor_novel.PNG",
                  title: "Tibor Rubin Graphic Novel",
                  action: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFView(
                                  path:
                                      "assets/pdfs/tibor_rubin_graphic_novel.pdf",
                                )));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
