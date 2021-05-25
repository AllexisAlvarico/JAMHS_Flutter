import 'package:flutter/material.dart';
import 'size_config.dart';

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
      backgroundColor: SizeConfig.backroundCOLOR,
      appBar: AppBar(
        backgroundColor: SizeConfig.backroundCOLOR,
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.fontHEADERSIZE,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura")),
        centerTitle: true,
      ),
    );
  }
}
