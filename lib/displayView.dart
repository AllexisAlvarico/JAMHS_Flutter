import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';
import 'package:jamhs_flutter/artifactView.dart';
import 'package:jamhs_flutter/viewpage.dart';
import 'ArtifactArticlesCards.dart';

class DisplayView extends StatefulWidget {
  final String displayImgPath;
  final String? caseImgPath;
  final String? title;
  final String? caseImgZoomPath;
  final ArtifactArticlesData? articleData;
  final ArtifactArticlesData? secondaryArticleData;
  final List<ArtifactButtonData> artifactButtonData;

  DisplayView(
      {Key? key,
      required this.displayImgPath,
      this.caseImgPath,
      this.caseImgZoomPath,
      this.articleData,
      this.secondaryArticleData,
      required this.title,
      required this.artifactButtonData})
      : super(key: key);

  @override
  _DisplayViewState createState() => _DisplayViewState();
}

class _DisplayViewState extends State<DisplayView> {
  String? currentImgPath = "";
  bool showArtifactButtons = false;
  bool showReadMoreButton = false;

  @override
  void initState() {
    super.initState();
    this.currentImgPath = widget.displayImgPath;
    if (widget.articleData != null) {
      showReadMoreButton = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      appBar: AppBar(
        backgroundColor: SizeConfig.backroundCOLOR,
        title: Text(
          widget.title!,
          style: TextStyle(
              fontSize: SizeConfig.fontHEADERSIZE,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InteractiveViewer(
            constrained: false,
            minScale: 0.1,
            maxScale: 4.0,
            child: Stack(
              children: [
                Image.asset(
                  currentImgPath!,
                  scale: 3.5,
                ),
                if (showArtifactButtons == true)
                  for (var data in widget.artifactButtonData)
                    Positioned(
                      top: data.pos.top,
                      left: data.pos.left,
                      bottom: data.pos.botton,
                      right: data.pos.right,
                      child: ArtifactButton(
                        desc: data.desc,
                        tag: data.tag,
                        title: data.title,
                      ),
                    ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2c4874).withOpacity(.8),
                  ),
                  onPressed: () {
                    if (currentImgPath != widget.displayImgPath) {
                      setState(() {
                        currentImgPath = widget.displayImgPath;
                        showArtifactButtons = false;
                        if (widget.articleData != null) {
                          showReadMoreButton = true;
                        }
                      });
                    }
                  },
                  child: Text(
                    "Background\nInformation",
                    style: TextStyle(
                        fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2c4874).withOpacity(.8),
                  ),
                  onPressed: () {
                    if (currentImgPath != widget.caseImgPath &&
                        widget.caseImgPath != null) {
                      setState(() {
                        currentImgPath = widget.caseImgPath;
                        showArtifactButtons = false;
                        showReadMoreButton = false;
                      });
                    }
                  },
                  child: Text(
                    "Display Case",
                    style: TextStyle(
                        fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2c4874).withOpacity(.8),
                  ),
                  onPressed: () {
                    if (currentImgPath != widget.caseImgZoomPath &&
                        widget.caseImgZoomPath != null) {
                      setState(() {
                        currentImgPath = widget.caseImgZoomPath;
                        showArtifactButtons = true;
                        showReadMoreButton = false;
                      });
                    }
                  },
                  child: Text(
                    "Artifacts",
                    style: TextStyle(
                        fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura"),
                  ),
                ),
              ],
            ),
          ),
          showReadMoreButton
              ? Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff2c4874).withOpacity(.8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewPage(
                                    img: widget.articleData!.imagePath,
                                    title: widget.articleData!.category,
                                    name: widget.articleData!.name,
                                    desc: widget.articleData!.desc,
                                  )));
                    },
                    child: Text(
                      "Read More",
                      style: TextStyle(
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura"),
                    ),
                  ),
                )
              : Container(),
          showReadMoreButton && widget.secondaryArticleData != null
              ? Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff2c4874).withOpacity(.8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewPage(
                                    img: widget.secondaryArticleData!.imagePath,
                                    title:
                                        widget.secondaryArticleData!.category,
                                    name: widget.secondaryArticleData!.name,
                                    desc: widget.secondaryArticleData!.desc,
                                  )));
                    },
                    child: Text(
                      "Read More",
                      style: TextStyle(
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura"),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class DisplayData {
  String displayPath;
  String? casePath;
  String? artifactPath;
  ArtifactArticlesData? articleData;
  ArtifactArticlesData? secondaryArticleData;
  String title;
  CoordPos pos;
  List<ArtifactButtonData> artifactButtonData;

  DisplayData(
      {required this.displayPath,
      this.casePath,
      this.artifactPath,
      this.articleData,
      this.secondaryArticleData,
      required this.title,
      required this.pos,
      required this.artifactButtonData});
}

class ArtifactButtonData {
  Position pos;
  String desc;
  String? title;
  int tag;

  ArtifactButtonData(
      {required this.pos, required this.desc, this.title, required this.tag});
}

class CoordPos {
  double latitude = 0;
  double longitude = 0;

  CoordPos({required this.latitude, required this.longitude});
}

class Position {
  double? left;
  double? top;
  double? right;
  double? botton;

  Position({this.left, this.top, this.right, this.botton});
}

class ArtifactButton extends StatefulWidget {
  final String desc;
  final int tag;
  final String? title;

  ArtifactButton({Key? key, required this.desc, required this.tag, this.title})
      : super(key: key);

  @override
  _ArtifactButtonState createState() => _ArtifactButtonState();
}

class _ArtifactButtonState extends State<ArtifactButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            heroTag: widget.tag.toString(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ArtifactView(
                            desc: widget.desc,
                            title: widget.title,
                          )));
            },
            backgroundColor: SizeConfig.backroundCOLOR.withOpacity(.7),
            child: Icon(
              Icons.zoom_in,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}
