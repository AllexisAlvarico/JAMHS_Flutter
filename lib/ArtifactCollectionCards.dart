import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'device.dart';
import 'sizeConstraints.dart';

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
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return RelativeBuilder(builder: (context, height, width, sy, sx) {
        return SizedBox(
          width: sx(210),
          height: sy(200),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                sy(SizeConstraint.borderRadius),
              ),
            ),
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
                    width: sx(200),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      sx(Device.safeBlockHorizontal * 2),
                      sy(Device.safeBlockVertical * 1),
                      sx(Device.safeBlockHorizontal * 2),
                      sy(Device.safeBlockVertical * 1),
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: SizeConstraint.fontDISCRIPTIONSIZE,
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
    } else {
      return RelativeBuilder(builder: (context, height, width, sy, sx) {
        return SizedBox(
          width: sx(160),
          height: sy(270),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                sy(SizeConstraint.borderRadius),
              ),
            ),
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
                    height: sy(150),
                    width: sx(160),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      sx(Device.safeBlockHorizontal * 2),
                      sy(Device.safeBlockVertical * 1),
                      sx(Device.safeBlockHorizontal * 2),
                      sy(Device.safeBlockVertical * 1),
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: SizeConstraint.fontDISCRIPTIONSIZE,
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
