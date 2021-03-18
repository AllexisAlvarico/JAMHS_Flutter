import 'package:flutter/material.dart';

class ArtifactView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String category;
  final String desc;

  ArtifactView(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.category,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(imagePath)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  category,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      desc,
                      style: TextStyle(fontSize: 20, fontFamily: "Futura"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
