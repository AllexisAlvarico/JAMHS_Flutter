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
      postions = [
        Positioned(
          bottom: 100,
          left: 71,
          child: EmptyButton(
            data: widget.displayData[1],
            tag: 1,
          ),
        ),
        Positioned(
          bottom: 206,
          left: 83,
          child: EmptyButton(
            data: widget.displayData[2],
            tag: 2,
          ),
        ),
        Positioned(
          bottom: 309,
          left: 114,
          child: EmptyButton(
            data: widget.displayData[2],
            tag: 3,
          ),
        ),
        Positioned(
          top: 271,
          left: 171,
          child: EmptyButton(
            data: widget.displayData[3],
            tag: 4,
          ),
        ),
        Positioned(
          top: 194,
          left: 237,
          child: EmptyButton(
            data: widget.displayData[4],
            tag: 5,
          ),
        ),
        Positioned(
          top: 131,
          left: 324,
          child: EmptyButton(
            data: widget.displayData[5],
            tag: 6,
          ),
        ),
        Positioned(
          top: 88,
          left: 424,
          child: EmptyButton(
            data: widget.displayData[6],
            tag: 7,
          ),
        ),
        Positioned(
          top: 66,
          left: 526,
          child: EmptyButton(
            data: widget.displayData[6],
            tag: 8,
          ),
        ),
        Positioned(
          top: 66,
          right: 531,
          child: EmptyButton(
            data: widget.displayData[7],
            tag: 9,
          ),
        ),
        Positioned(
          top: 88,
          right: 425,
          child: EmptyButton(
            data: widget.displayData[8],
            tag: 10,
          ),
        ),
        Positioned(
          top: 131,
          right: 329,
          child: EmptyButton(
            data: widget.displayData[8],
            tag: 11,
          ),
        ),
        Positioned(
          top: 194,
          right: 240,
          child: EmptyButton(
            data: widget.displayData[9],
            tag: 12,
          ),
        ),
        Positioned(
          top: 271,
          right: 171,
          child: EmptyButton(
            data: widget.displayData[9],
            tag: 13,
          ),
        ),
        Positioned(
          bottom: 309,
          right: 116,
          child: EmptyButton(
            data: widget.displayData[10],
            tag: 14,
          ),
        ),
        Positioned(
          bottom: 206,
          right: 83,
          child: EmptyButton(
            data: widget.displayData[11],
            tag: 15,
          ),
        ),
        Positioned(
          bottom: 100,
          right: 72,
          child: EmptyButton(
            data: widget.displayData[12],
            tag: 16,
          ),
        ),
      ];
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
          constrained: false,
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

  EmptyButton({Key? key, required this.data, this.size = 56, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
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
          backgroundColor: Colors.red,
          child: Text(
            tag.toString(),
            style: TextStyle(
              fontSize: 30,
            ),
          ),
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
