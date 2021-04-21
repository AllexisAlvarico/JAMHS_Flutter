import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';
import 'device.dart';
import 'sizeConstraints.dart';

class ModelView extends StatefulWidget {
  final String src;
  final String title;

  const ModelView({Key? key, required this.src, required this.title})
      : super(key: key);

  @override
  _ModelViewState createState() => _ModelViewState();
}

class _ModelViewState extends State<ModelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
        backgroundColor: Device.backroundCOLOR,
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConstraint.fontHEADERSIZE,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura")),
        centerTitle: true,
      ),
      body: ModelViewer(
        src: widget.src,
        alt: widget.title,
        cameraControls: true,
        backgroundColor: Device.backroundCOLOR,
      ),
    );
  }
}
