import 'package:flutter/material.dart';
import 'size_config.dart';

// specilised card widget to displays an artifact image and a title
class ArtifactCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function action;

  const ArtifactCard(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: SizeConfig.safeBlockVertical * 23,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.borderRADIUS)),
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: InkWell(
          splashColor:
              Colors.indigo[800]!.withOpacity(0.5), // what are you doing
          onTap: () {
            action();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.safeBlockVertical * 27,
                width: SizeConfig.safeBlockHorizontal * 64,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 2,
                    SizeConfig.blockSizeHorizontal * 3,
                    SizeConfig.blockSizeHorizontal * 2,
                    SizeConfig.blockSizeHorizontal * 3),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// simple class that stores two strings, one for the path to the image
// and another for the dsecription of the artifact
class ArtifactData {
  String imagePath;
  String title;
  String name;
  String category;
  String desc;

  ArtifactData(this.imagePath, this.title, this.name, this.category, this.desc);
}

class ModelData extends ArtifactData {
  String modelPath;

  ModelData(String imagePath, String title, String name, String category,
      String desc, this.modelPath)
      : super(imagePath, title, name, category, desc);
}
