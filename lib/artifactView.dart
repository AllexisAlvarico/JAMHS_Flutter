import 'package:flutter/material.dart';
import 'size_config.dart';

class ArtifactView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String category;
  final String desc;

  ArtifactView({Key key, this.imagePath, this.title, this.category, this.desc})
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
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: SizeConfig.edgeINSETS),
                child: Image.asset(imagePath)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SizeConfig.edgeINSETS),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.edgeINSETS,
                  vertical: SizeConfig.edgeINSETS),
              child: Text(
                category,
                style: TextStyle(
                    fontSize: SizeConfig.fontHOMESIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.edgeINSETS,
                  vertical: SizeConfig.edgeINSETS),
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
  }

  Widget _landscape() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: SizeConfig.edgeINSETS),
                child: Image.asset(imagePath)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SizeConfig.edgeINSETS),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: SizeConfig.fontHEADERSIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.edgeINSETS,
                  vertical: SizeConfig.edgeINSETS),
              child: Text(
                category,
                style: TextStyle(
                    fontSize: SizeConfig.fontHOMESIZE,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.edgeINSETS,
                  vertical: SizeConfig.edgeINSETS),
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
  }
}
