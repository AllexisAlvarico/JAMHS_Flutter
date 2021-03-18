import 'package:flutter/material.dart';

// specilised card widget to displays an artifact image and a title
class ArtifactCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function action;

  const ArtifactCard({Key key, this.imagePath, this.title, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: InkWell(
          splashColor: Colors.indigo[800].withOpacity(0.5),
          onTap: () {
            action();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: 200,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
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
  List<String> comments;

  ArtifactData(
      {this.imagePath,
      this.title,
      this.name,
      this.category,
      this.desc,
      this.comments});
}

class ModelData extends ArtifactData {
  String modelPath;

  ModelData(
      {String imagePath,
      String title,
      String name,
      String category,
      String desc,
      List<String> comments,
      this.modelPath})
      : super();
}
