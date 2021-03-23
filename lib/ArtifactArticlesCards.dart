import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'size_config.dart';

// specilised card widget to displays an artifact image and a title
class ArtifactArticlesCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function action;

  const ArtifactArticlesCard(
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
      return RelativeBuilder(
        builder: (context, height, width, sy, sx) {
          return SizedBox(
            width: sx(220),
            height: sy(250),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(sy(SizeConfig.borderRADIUS))),
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
                      height: sy(100),
                      width: sx(400),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          sx(SizeConfig.blockSizeHorizontal * 2),
                          sy(SizeConfig.blockSizeVertical * 3),
                          sx(SizeConfig.blockSizeHorizontal * 2),
                          sy(SizeConfig.blockSizeVertical * 3)),
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
        },
      );
    } else {
      return RelativeBuilder(builder: (context, height, width, sy, sx) {
        return SizedBox(
          width: sx(150),
          height: sy(420),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(sy(SizeConfig.borderRADIUS))),
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
                    height: sy(220),
                    width: sx(150),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        sx(SizeConfig.blockSizeHorizontal * 2),
                        sy(SizeConfig.blockSizeVertical * 1),
                        sx(SizeConfig.blockSizeHorizontal * 2),
                        sy(SizeConfig.blockSizeVertical * 1)),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      softWrap: true,
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
      });
    }
  }
}

// simple class that stores two strings, one for the path to the image
// and another for the dsecription of the artifact
class ArtifactArticlesData {
  String imagePath;
  String title;
  String name;
  String category;
  String desc;

  ArtifactArticlesData(
      this.imagePath, this.title, this.name, this.category, this.desc);
}

class ModelData extends ArtifactArticlesData {
  String modelPath;

  ModelData(String imagePath, String title, String name, String category,
      String desc, this.modelPath)
      : super(imagePath, title, name, category, desc);
}

class VideoData extends ArtifactArticlesData {
  String videoPath;

  VideoData(String imagePath, String title, String name, String category,
      String desc, this.videoPath)
      : super(imagePath, title, name, category, desc);
}
