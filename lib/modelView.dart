import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

class ModelView extends StatefulWidget {
  final String src;

  const ModelView({Key key, this.src}) : super(key: key);

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
        title: Text('Model Viewer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura")),
        centerTitle: true,
      ),
      body: ModelViewer(
        src: widget.src,
        alt: 'displayed model',
        cameraControls: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
