import 'package:flutter/material.dart';
import 'size_config.dart';

// specilised card widget to displays an artifact image and a title
class ArtifactCollectionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function action;

  const ArtifactCollectionCard(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return SizedBox(
        width: SizeConfig.safeBlockHorizontal * 40,
        height: SizeConfig.safeBlockVertical * 37,
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
                  height: SizeConfig.safeBlockVertical * 20,
                  width: SizeConfig.safeBlockHorizontal * 38,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 1,
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 1),
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
    } else {
      return SizedBox(
        width: SizeConfig.safeBlockHorizontal * 30,
        height: SizeConfig.safeBlockVertical * 50,
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
                  height: SizeConfig.blockSizeVertical * 27,
                  width: SizeConfig.blockSizeHorizontal * 29,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 1,
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 1),
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
}

// simple class that stores two strings, one for the path to the image
// and another for the dsecription of the artifact
class ArtifactCollectionData {
  String imagePath;
  String title;
  String name;
  String category;
  String desc;

  ArtifactCollectionData(
      this.imagePath, this.title, this.name, this.category, this.desc);
}

class ModelData extends ArtifactCollectionData {
  String modelPath;

  ModelData(String imagePath, String title, String name, String category,
      String desc, this.modelPath)
      : super(imagePath, title, name, category, desc);
}

class VideoData extends ArtifactCollectionData {
  String videoPath;

  VideoData(String imagePath, String title, String name, String category,
      String desc, this.videoPath)
      : super(imagePath, title, name, category, desc);
}
