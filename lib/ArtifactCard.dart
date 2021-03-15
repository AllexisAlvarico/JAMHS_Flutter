import 'package:flutter/material.dart';
import 'size_config.dart';

class ArtifactCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final Function action;

  const ArtifactCard({Key key, this.imagePath, this.description, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: SizeConfig.safeBlockVertical * 20,
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
                height: SizeConfig.safeBlockVertical * 15,
                width: SizeConfig.safeBlockHorizontal * 40,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
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
  String desc;

  ArtifactData(this.imagePath, this.desc);
}
