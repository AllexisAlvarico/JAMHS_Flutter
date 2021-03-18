import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff243C6C),
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura")),
        centerTitle: true,
      ),
      body: ModelViewer(
        src: widget.src,
        alt: widget.title,
        cameraControls: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
