import 'package:flutter/material.dart';
import 'size_config.dart';

class ViewPage extends StatelessWidget {
  final String img, title, name, desc;
  const ViewPage(
      {Key? key,
      required this.img,
      required this.title,
      required this.name,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: SizeConfig.backroundCOLOR,
          title: Text(
            this.name,
            style: TextStyle(
              fontSize: SizeConfig.fontHEADERSIZE,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Align(
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              Container(
                  height: SizeConfig.blockSizeVertical * 45,
                  width: SizeConfig.blockSizeHorizontal * 45,
                  child: Image.asset(img)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 0,
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 3),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.fontHEADERSIZE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 0,
                      SizeConfig.blockSizeHorizontal * 2,
                      SizeConfig.blockSizeVertical * 3),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.fontHOMESIZE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 2,
                        SizeConfig.blockSizeVertical * 0,
                        SizeConfig.blockSizeHorizontal * 2,
                        SizeConfig.blockSizeVertical * 2),
                    child: Text(
                      desc,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ])));
  }
}
