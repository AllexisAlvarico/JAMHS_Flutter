import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';

class DisplayView extends StatefulWidget {
  final String displayImgPath;
  final String? caseImgPath;
  final String? title;
  final String? caseImgZoomPath;

  DisplayView(
      {Key? key,
      required this.displayImgPath,
      this.caseImgPath,
      this.caseImgZoomPath,
      required this.title})
      : super(key: key);

  @override
  _DisplayViewState createState() => _DisplayViewState();
}

class _DisplayViewState extends State<DisplayView> {
  String? currentImgPath = "";

  @override
  void initState() {
    super.initState();
    this.currentImgPath = widget.displayImgPath;
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
            child: Image.asset(
              currentImgPath!,
              scale: 3.5,
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
                      primary: Color(0xff2c4874).withOpacity(.8)),
                  onPressed: () {
                    if (currentImgPath != widget.displayImgPath) {
                      setState(() {
                        currentImgPath = widget.displayImgPath;
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
                      primary: Color(0xff2c4874).withOpacity(.8)),
                  onPressed: () {
                    if (currentImgPath != widget.caseImgPath &&
                        widget.caseImgPath != null) {
                      setState(() {
                        currentImgPath = widget.caseImgPath;
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
                      primary: Color(0xff2c4874).withOpacity(.8)),
                  onPressed: () {
                    if (currentImgPath != widget.caseImgZoomPath &&
                        widget.caseImgZoomPath != null) {
                      setState(() {
                        currentImgPath = widget.caseImgZoomPath;
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
        ],
      ),
    );
  }
}

class DisplayData {
  String displayPath;
  String? casePath;
  String? artifactPath;
  String title;
  CoordPos pos;

  DisplayData(
      {required this.displayPath,
      this.casePath,
      this.artifactPath,
      required this.title,
      required this.pos});
}

class CoordPos {
  double latitude = 0;
  double longitude = 0;

  CoordPos({required this.latitude, required this.longitude});
}

class ArtifactButton extends StatefulWidget {
  final String desc;

  ArtifactButton({Key? key, required this.desc}) : super(key: key);

  @override
  _ArtifactButtonState createState() => _ArtifactButtonState();
}

class _ArtifactButtonState extends State<ArtifactButton> {
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                showText ^= true;
                print(showText);
              });
            },
            backgroundColor: SizeConfig.backroundCOLOR.withOpacity(.7),
            child: Icon(Icons.zoom_in),
          ),
        ),
        AnimatedOpacity(
          opacity: showText ? 1.0 : 0.0,
          duration: Duration(milliseconds: 200),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.7),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              widget.desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Futura"),
            ),
          ),
        ),
      ],
    );
  }
}
