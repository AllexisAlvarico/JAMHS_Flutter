import 'package:flutter/material.dart';
import 'package:jamhs_flutter/quizPage.dart';
import 'package:relative_scale/relative_scale.dart';
import 'ArtifactCollectionCards.dart';
import 'artifactView.dart';
import 'size_config.dart';
import 'pdfView.dart';
import 'package:url_launcher/url_launcher.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<VideoData> videoData = [
    VideoData(
        "assets/images/thumb1.png",
        "Alpert Jewish Community Center Veterans Day Promo",
        "Promo",
        "Video",
        "Join Us November 11th for a special veterans day program in partnership with the Alpert JCC of Long Beach, California.",
        "https://www.youtube.com/watch?v=w36U__PrPKw"),
    VideoData(
        "assets/images/thumb2.png",
        "Gliding into The Netherlands, September 17th, 1944",
        "Gliding into The Netherlands",
        "Video",
        "Preview segment of LTC (R) Sam Sachs of his experience during operation market garden",
        "https://www.youtube.com/watch?v=ixrbJf2mYuU"),
    VideoData(
        "assets/images/thumb3.png",
        "LTC (R) Sam Sachs Early Life Trailer",
        "Sam Sachs Early Life",
        "Video",
        "Throughout the month of June 2020, The Jewish American Military Historical Society in partnership with World War 2 Veteran Memories' Project, interviewed Lieutenant Colonel (Retired) Sam Sachs.",
        "https://www.youtube.com/watch?v=Sfnfp8D8Zyk")
  ];

  Widget customcard(
      String battname, String image, String des, BuildContext context) {
    SizeConfig().init(context);
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return SizedBox(
          width: sx(210),
          height: sy(200),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                sy(SizeConfig.borderRADIUS),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: InkWell(
              splashColor: Colors.indigo[800]!.withOpacity(0.5),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  // in changelog 1 we will pass the battname name to ther other widget class
                  // this name will be used to open a particular JSON file
                  // for a particular battery
                  builder: (context) => GetJson(battname),
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: sy(100),
                    width: sx(200),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      sx(SizeConfig.blockSizeHorizontal * 2),
                      sy(SizeConfig.blockSizeVertical * 1),
                      sx(SizeConfig.blockSizeHorizontal * 2),
                      sy(SizeConfig.blockSizeVertical * 1),
                    ),
                    child: Text(
                      battname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  final List<EducateData> educationData = [
    EducateData(title: "Battery Osgood - Farley"),
  ];

  List<ArtifactCollectionData> artifactData = [
    ArtifactCollectionData(
        "assets/images/hewbrew_artifact.jpg",
        "1930s-1940s Jewish Soldiers prayer books",
        "Hewbrew Bible",
        "Artifacts",
        "Also known as the 'Tanakh' for Jews serving in the US Armed Forced in the Second World War. These examples include  President Roosevelt speech which praises studying the holy scripture. They  contain words of wisdom, advice and inspiration, and constitute a source of spiritual self-transcendence. At the end of the speech, praise is given to the army clergy, under the heading 'Do you know your Chaplain?'\n\nTanakh for Jews serving in the US Army. Includes the United States president's speech to the military, in praise of religious faith and studying the Holy Scriptures, which contain words of wisdom, advice and inspiration, and constitute a source of spiritual self-transcendence. At the end of the speech, praise is given to the army clergy, under the heading 'Do you know your Chaplain?'\n\nAccession Date:\nDescription: 512 pages. 13 cm. English.\nCondition: Fine. Stains, taped tears on the title page. Original binding."),
    ArtifactCollectionData(
        "assets/images/moh_book.jpg",
        "T. Rubin' Programme, MoH Recipent Ceremony",
        "Medal of Honour",
        "Artifacts",
        "Coming soon!"),
    ArtifactCollectionData(
        "assets/images/sydneyPic.JPG",
        "Sydney G. Gumpertz, MoH Picture",
        "Medal of Honour",
        "Artifacts",
        "Coming soon!"),
    ArtifactCollectionData(
        "assets/images/pamphlet.JPG",
        "Division emblems and Jewish welfare board post card",
        "Medal of Honour",
        "Artifacts",
        "Coming soon!")
  ];

  List<ArtifactCollectionData> rubinData = [
    ArtifactCollectionData(
        "assets/images/tibur_uniform.jpg",
        "Post War Khaki 1st cav. Shirt",
        "Uniform",
        "Tibor Collection",
        "Coming soon!"),
    ArtifactCollectionData("assets/images/tibur_hat.jpg",
        "Post War Calvary Stetson", "Hat", "Tibor Collection", "Coming soon!"),
    ArtifactCollectionData(
        "assets/images/tibur_pin.jpg",
        "Tibor Rubin's Challenge Coin",
        "Military Pin",
        "Tibor Collection",
        "Coming soon!")
  ];

  List<String> des = [
    "Do you feel you know about Tibor Rubin? Take the Quiz!!",
  ];

  List<String> images = [
    "assets/images/tibor_rubin.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        backgroundColor: SizeConfig.backroundCOLOR,
        appBar: AppBar(
          backgroundColor: SizeConfig.backroundCOLOR,
          title: Text(
            "Collections",
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.fontHEADERSIZE,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura"),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  "Graphic Novel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: ArtifactCollectionCard(
                  imagePath: "assets/images/tibor_novel.PNG",
                  title: "Tibor Rubin Graphic Novel",
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PDFView(
                          path: "assets/pdfs/tibor_rubin_graphic_novel.pdf",
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  "Oral Histories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: videoData.map((data) {
                      return ArtifactCollectionCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          launchURL(data.videoPath);
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  "Artifacts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: artifactData.map((data) {
                      return ArtifactCollectionCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArtifactView(
                                imagePath: data.imagePath,
                                title: data.name,
                                category: data.category,
                                desc: data.desc,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  "Tibor Rubin Grouping",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: rubinData.map((data) {
                      return ArtifactCollectionCard(
                        imagePath: data.imagePath,
                        title: data.title,
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtifactView(
                                        imagePath: data.imagePath,
                                        title: data.name,
                                        category: data.category,
                                        desc: data.desc,
                                      )));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Text(
                  "Quizes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.fontHEADERSIZE,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Futura"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  sy(SizeConfig.edgeINSETS),
                ),
                child: Column(
                  children: [
                    customcard("Tibor Ruben", images[0], des[0], context),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

void launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
