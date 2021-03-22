import 'package:flutter/material.dart';
import 'package:jamhs_flutter/videoView.dart';
import 'ArtifactCollectionCards.dart';
import 'modelView.dart';
import 'artifactView.dart';
import 'size_config.dart';
import 'pdfView.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<ModelData> modelData = [
    ModelData("assets/images/m1911.png", "M1911 Pistol digital model", "M1911",
        "3D Model", "", "assets/models/m1911.glb")
  ];

  List<VideoData> videoData = [
    VideoData(
        "assets/videos/thumb1.png",
        "Alpert Jewish Community Center Veterans Day Promo",
        "Promo",
        "Video",
        "Join Us November 11th for a special veterans day program in partnership with the Alpert JCC of Long Beach, California.",
        "assets/videos/vid1.mp4"),
    VideoData(
        "assets/videos/thumb2.png",
        "Gliding into The Netherlands, September 17th, 1944",
        "Gliding into The Netherlands",
        "Video",
        "Preview segment of LTC (R) Sam Sachs of his experience during operation market garden",
        "assets/videos/vid2.mp4"),
    VideoData(
        "assets/videos/thumb3.png",
        "LTC (R) Sam Sachs Early Life Trailer",
        "Sam Sachs Early Life",
        "Video",
        "Throughout the month of June 2020, The Jewish American Military Historical Society in partnership with World War 2 Veteran Memories' Project, interviewed Lieutenant Colonel (Retired) Sam Sachs.",
        "assets/videos/vid3.mp4")
  ];
  List<ArtifactCollectionData> artifactData = [
    ArtifactCollectionData(
        "assets/images/hewbrew_artifact.jpg",
        "1930s-1940s Jewish Soldiers prayer books",
        "Hewbrew Bible",
        "Artifacts",
        "insert text"),
    ArtifactCollectionData(
        "assets/images/moh_book.jpg",
        "T. Rubin' Programme, MoH Recipent Ceremony",
        "Medal of Honour",
        "Artifacts",
        "insert text")
  ];

  List<ArtifactCollectionData> rubinData = [
    ArtifactCollectionData(
        "assets/images/tibur_uniform.jpg",
        "Post War Khaki 1st cav. Shirt",
        "Uniform",
        "Tibor Collection",
        "insert text"),
    ArtifactCollectionData("assets/images/tibur_hat.jpg",
        "Post War Calvary Stetson", "Hat", "Tibor Collection", "insert text"),
    ArtifactCollectionData(
        "assets/images/tibur_pin.jpg",
        "Tibor Rubin's Challenge Coin",
        "Military Pin",
        "Tibor Collection",
        "insert text")
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
              fontSize: SizeConfig.fontHEADERSIZE,
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
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: Text(
                "3D Artifacts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: modelData.map((data) {
                    return ArtifactCollectionCard(
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
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: Text(
                "Oral Histories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: videoData.map((data) {
                    return ArtifactCollectionCard(
                      imagePath: data.imagePath,
                      title: data.title,
                      action: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoView(
                                      src: data.videoPath,
                                      title: data.name,
                                      desc: data.desc,
                                    )));
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: Text(
                "Artifacts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: artifactData.map((data) {
                    return ArtifactCollectionCard(
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
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: Text(
                "Tibor Rubin Grouping",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: rubinData.map((data) {
                    return ArtifactCollectionCard(
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
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: Text(
                "Graphic Novel",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.edgeINSETS),
              child: ArtifactCollectionCard(
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
            ),
          ],
        ),
      ),
    );
  }
}
