import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';
import 'package:jamhs_flutter/displayView.dart';

class FloorPlanView extends StatelessWidget {
  final List<DisplayData> displayData;
  late final List<Widget> postions;

  FloorPlanView({Key? key, required this.displayData}) : super(key: key) {
    postions = [
      Positioned(
        bottom: 33,
        left: 23,
        child: EmptyButton(
          data: displayData[1],
        ),
      ),
      Positioned(
        bottom: 67,
        left: 27,
        child: EmptyButton(
          data: displayData[2],
        ),
      ),
      Positioned(
        bottom: 100,
        left: 37,
        child: EmptyButton(
          data: displayData[2],
        ),
      ),
      Positioned(
        top: 87,
        left: 55,
        child: EmptyButton(
          data: displayData[3],
        ),
      ),
      Positioned(
        top: 63,
        left: 77,
        child: EmptyButton(
          data: displayData[4],
        ),
      ),
      Positioned(
        top: 42,
        left: 105,
        child: EmptyButton(
          data: displayData[5],
        ),
      ),
      Positioned(
        top: 28,
        left: 137,
        child: EmptyButton(
          data: displayData[6],
        ),
      ),
      Positioned(
        top: 21,
        left: 170,
        child: EmptyButton(
          data: displayData[6],
        ),
      ),
      Positioned(
        top: 21,
        right: 171,
        child: EmptyButton(
          data: displayData[7],
        ),
      ),
      Positioned(
        top: 28,
        right: 137,
        child: EmptyButton(
          data: displayData[8],
        ),
      ),
      Positioned(
        top: 42,
        right: 106,
        child: EmptyButton(
          data: displayData[8],
        ),
      ),
      Positioned(
        top: 63,
        right: 77,
        child: EmptyButton(
          data: displayData[9],
        ),
      ),
      Positioned(
        top: 87,
        right: 55,
        child: EmptyButton(
          data: displayData[9],
        ),
      ),
      Positioned(
        bottom: 100,
        right: 37,
        child: EmptyButton(
          data: displayData[10],
        ),
      ),
      Positioned(
        bottom: 67,
        right: 27,
        child: EmptyButton(
          data: displayData[11],
        ),
      ),
      Positioned(
        bottom: 33,
        right: 23,
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
      child: SizedBox(
        height: 18,
        width: 18,
        child: FloatingActionButton(
          backgroundColor: SizeConfig.backroundCOLOR,
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
        ),
      ),
    );
  }
}
