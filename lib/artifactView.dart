import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR, // maybe doing nothing
      body: SingleChildScrollView(
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
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.edgeINSETS),
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
      ),
    );
  }
}
