import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'size_config.dart';

class ArtifactView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String category;
  final String desc;

  ArtifactView(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.category,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      body: _layoutDetails(context),
    );
  }

  Widget _layoutDetails(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Container(
        child: _portrait(),
      );
    } else {
      return Container(
        child: _landscape(),
      );
    }
  }

  Widget _portrait() {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                child: Image.asset(imagePath),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(SizeConfig.edgeINSETS),
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                      fontSize: SizeConfig.fontHOMESIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(SizeConfig.edgeINSETS),
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      desc,
                      style: TextStyle(
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontFamily: "Futura"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _landscape() {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                child: Image.asset(imagePath),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(SizeConfig.edgeINSETS),
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                      fontSize: SizeConfig.fontHOMESIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(SizeConfig.edgeINSETS),
                  vertical: sy(SizeConfig.edgeINSETS),
                ),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      desc,
                      style: TextStyle(
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontFamily: "Futura"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
