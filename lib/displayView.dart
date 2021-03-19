import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';

class DisplayView extends StatefulWidget {
  final String displayImgPath;
  final String caseImgPath;
  final String title;
  final String caseImgZoomPath;

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
  String buttonName = "View Case";
  bool showCase = false;
  String currentImgPath = "";

  @override
  void initState() {
    super.initState();
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
              fontSize: SizeConfig.fontDISCRIPTIONSIZE,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            widget.displayImgPath,
            fit: BoxFit.fitWidth,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color(0xff2c4874)),
            onPressed: () {},
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Futura"),
            ),
          ),
        ],
      ),
    );
  }
}
