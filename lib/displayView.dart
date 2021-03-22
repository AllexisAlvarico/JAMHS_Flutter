import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';

class DisplayView extends StatefulWidget {
  final String? displayImgPath;
  final String? caseImgPath;
  final String title;
  final String? caseImgZoomPath;

  DisplayView(
      {Key? key,
      required this.displayImgPath,
      required this.caseImgPath,
      required this.caseImgZoomPath,
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
          widget.title,
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
                  style: ElevatedButton.styleFrom(primary: Color(0xff2c4874)),
                  onPressed: () {
                    if (currentImgPath != widget.displayImgPath &&
                        widget.displayImgPath != null) {
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
                  style: ElevatedButton.styleFrom(primary: Color(0xff2c4874)),
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
                  style: ElevatedButton.styleFrom(primary: Color(0xff2c4874)),
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
