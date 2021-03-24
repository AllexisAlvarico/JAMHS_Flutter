import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';
import 'package:jamhs_flutter/displayView.dart';

class FloorPlanView extends StatelessWidget {
  final List<DisplayData> displayData;
  late final List<Widget> postions;

  FloorPlanView({Key? key, required this.displayData}) : super(key: key) {
    postions = [
      Positioned(
        bottom: 17,
        left: 8,
        child: EmptyButton(
          data: displayData[1],
        ),
      ),
      Positioned(
        bottom: 52,
        left: 12,
        child: EmptyButton(
          data: displayData[2],
        ),
      ),
      Positioned(
        bottom: 85,
        left: 22,
        child: EmptyButton(
          data: displayData[2],
        ),
      ),
      Positioned(
        top: 72,
        left: 40,
        child: EmptyButton(
          data: displayData[3],
        ),
      ),
      Positioned(
        top: 48,
        left: 62,
        child: EmptyButton(
          data: displayData[4],
        ),
      ),
      Positioned(
        top: 27,
        left: 90,
        child: EmptyButton(
          data: displayData[5],
        ),
      ),
      Positioned(
        top: 13,
        left: 122,
        child: EmptyButton(
          data: displayData[6],
        ),
      ),
      Positioned(
        top: 6,
        left: 155,
        child: EmptyButton(
          data: displayData[6],
        ),
      ),
      Positioned(
        top: 6,
        right: 157,
        child: EmptyButton(
          data: displayData[7],
        ),
      ),
      Positioned(
        top: 13,
        right: 122,
        child: EmptyButton(
          data: displayData[8],
        ),
      ),
      Positioned(
        top: 27,
        right: 91,
        child: EmptyButton(
          data: displayData[8],
        ),
      ),
      Positioned(
        top: 48,
        right: 62,
        child: EmptyButton(
          data: displayData[9],
        ),
      ),
      Positioned(
        top: 72,
        right: 40,
        child: EmptyButton(
          data: displayData[9],
        ),
      ),
      Positioned(
        bottom: 85,
        right: 22,
        child: EmptyButton(
          data: displayData[10],
        ),
      ),
      Positioned(
        bottom: 52,
        right: 12,
        child: EmptyButton(
          data: displayData[11],
        ),
      ),
      Positioned(
        bottom: 17,
        right: 8,
        child: EmptyButton(
          data: displayData[12],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      appBar: AppBar(
        backgroundColor: SizeConfig.backroundCOLOR,
        title: Text(
          "Virtual Tours",
          style: TextStyle(
              fontSize: SizeConfig.fontHEADERSIZE,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/floor_plan.PNG",
              ),
              for (var item in postions) item,
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyButton extends StatelessWidget {
  final DisplayData data;

  EmptyButton({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      maintainInteractivity: true,
      maintainSize: true,
      maintainAnimation: true,
      maintainSemantics: true,
      maintainState: true,
      child: RawMaterialButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => DisplayView(
                        displayImgPath: data.displayPath,
                        caseImgPath: data.casePath,
                        caseImgZoomPath: data.artifactPath,
                        title: data.title,
                      )));
        },
        fillColor: Colors.amber,
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(19, 19)),
      ),
    );
  }
}
