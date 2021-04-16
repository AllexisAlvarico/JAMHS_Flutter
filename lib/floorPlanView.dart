import 'package:flutter/material.dart';
import 'package:jamhs_flutter/size_config.dart';
import 'package:jamhs_flutter/displayView.dart';

class FloorPlanView extends StatefulWidget {
  final List<DisplayData> displayData;

  FloorPlanView({Key? key, required this.displayData}) : super(key: key);

  @override
  _FloorPlanViewState createState() => _FloorPlanViewState();
}

class _FloorPlanViewState extends State<FloorPlanView> {
  List<Widget>? postions;

  @override
  Widget build(BuildContext context) {
    void layoutDetails() {
      Orientation orientation = MediaQuery.of(context).orientation;
      if (orientation == Orientation.portrait) {
        postions = [
          Positioned(
            bottom: 33,
            left: 23,
            child: EmptyButton(
              data: widget.displayData[1],
              tag: 1,
            ),
          ),
          Positioned(
            bottom: 67,
            left: 27,
            child: EmptyButton(
              data: widget.displayData[2],
              tag: 2,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 37,
            child: EmptyButton(
              data: widget.displayData[2],
              tag: 3,
            ),
          ),
          Positioned(
            top: 87,
            left: 55,
            child: EmptyButton(
              data: widget.displayData[3],
              tag: 4,
            ),
          ),
          Positioned(
            top: 63,
            left: 77,
            child: EmptyButton(
              data: widget.displayData[4],
              tag: 5,
            ),
          ),
          Positioned(
            top: 42,
            left: 105,
            child: EmptyButton(
              data: widget.displayData[5],
              tag: 6,
            ),
          ),
          Positioned(
            top: 28,
            left: 137,
            child: EmptyButton(
              data: widget.displayData[6],
              tag: 7,
            ),
          ),
          Positioned(
            top: 21,
            left: 170,
            child: EmptyButton(
              data: widget.displayData[6],
              tag: 8,
            ),
          ),
          Positioned(
            top: 21,
            right: 171,
            child: EmptyButton(
              data: widget.displayData[7],
              tag: 9,
            ),
          ),
          Positioned(
            top: 28,
            right: 137,
            child: EmptyButton(
              data: widget.displayData[8],
              tag: 10,
            ),
          ),
          Positioned(
            top: 42,
            right: 106,
            child: EmptyButton(
              data: widget.displayData[8],
              tag: 11,
            ),
          ),
          Positioned(
            top: 63,
            right: 77,
            child: EmptyButton(
              data: widget.displayData[9],
              tag: 12,
            ),
          ),
          Positioned(
            top: 87,
            right: 55,
            child: EmptyButton(
              data: widget.displayData[9],
              tag: 13,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 37,
            child: EmptyButton(
              data: widget.displayData[10],
              tag: 14,
            ),
          ),
          Positioned(
            bottom: 67,
            right: 27,
            child: EmptyButton(
              data: widget.displayData[11],
              tag: 15,
            ),
          ),
          Positioned(
            bottom: 33,
            right: 23,
            child: EmptyButton(
              data: widget.displayData[12],
              tag: 16,
            ),
          ),
        ];
      } else {
        postions = [
          Positioned(
            bottom: 43,
            left: 31,
            child: EmptyButton(
              data: widget.displayData[1],
              size: 24,
              tag: 1,
            ),
          ),
          Positioned(
            bottom: 89,
            left: 36,
            child: EmptyButton(
              data: widget.displayData[2],
              size: 24,
              tag: 2,
            ),
          ),
          Positioned(
            bottom: 132,
            left: 50,
            child: EmptyButton(
              data: widget.displayData[2],
              size: 24,
              tag: 3,
            ),
          ),
          Positioned(
            top: 116,
            left: 74,
            child: EmptyButton(
              data: widget.displayData[3],
              size: 24,
              tag: 4,
            ),
          ),
          Positioned(
            top: 83,
            left: 102,
            child: EmptyButton(
              data: widget.displayData[4],
              size: 24,
              tag: 5,
            ),
          ),
          Positioned(
            top: 56,
            left: 139,
            child: EmptyButton(
              data: widget.displayData[5],
              size: 24,
              tag: 6,
            ),
          ),
          Positioned(
            top: 37,
            left: 181,
            child: EmptyButton(
              data: widget.displayData[6],
              size: 24,
              tag: 7,
            ),
          ),
          Positioned(
            top: 28,
            left: 225,
            child: EmptyButton(
              data: widget.displayData[6],
              size: 24,
              tag: 8,
            ),
          ),
          Positioned(
            top: 28,
            right: 227,
            child: EmptyButton(
              data: widget.displayData[7],
              size: 24,
              tag: 9,
            ),
          ),
          Positioned(
            top: 37,
            right: 182,
            child: EmptyButton(
              data: widget.displayData[8],
              size: 24,
              tag: 10,
            ),
          ),
          Positioned(
            top: 56,
            right: 141,
            child: EmptyButton(
              data: widget.displayData[8],
              size: 24,
              tag: 11,
            ),
          ),
          Positioned(
            top: 83,
            right: 102,
            child: EmptyButton(
              data: widget.displayData[9],
              size: 24,
              tag: 12,
            ),
          ),
          Positioned(
            top: 116,
            right: 74,
            child: EmptyButton(
              data: widget.displayData[9],
              size: 24,
              tag: 13,
            ),
          ),
          Positioned(
            bottom: 132,
            right: 50,
            child: EmptyButton(
              data: widget.displayData[10],
              size: 24,
              tag: 14,
            ),
          ),
          Positioned(
            bottom: 88,
            right: 35,
            child: EmptyButton(
              data: widget.displayData[11],
              size: 24,
              tag: 15,
            ),
          ),
          Positioned(
            bottom: 43,
            right: 31,
            child: EmptyButton(
              data: widget.displayData[12],
              size: 24,
              tag: 16,
            ),
          ),
        ];
      }
    }

    layoutDetails();

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
              for (var item in postions!) item,
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyButton extends StatelessWidget {
  final DisplayData data;
  late final double? size;
  final int tag;

  EmptyButton({Key? key, required this.data, this.size = 18, required this.tag})
      : super(key: key);

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
        height: size,
        width: size,
        child: FloatingActionButton(
          heroTag: tag.toString(),
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
                          artifactButtonData: data.artifactButtonData,
                        )));
          },
        ),
      ),
    );
  }
}
