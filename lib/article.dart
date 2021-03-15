import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'ArtifactCard.dart';
import 'viewpage.dart';

final List<String> imgList = [
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/levitow.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/jacobs.jpg/:/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/tibor1.jpg/:/rs=w:1280',
  'https://isteam.wsimg.com/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/kravitz.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://img1.wsimg.com/isteam/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/battle-of-the-alamo.webp/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280',
  'https://img1.wsimg.com/isteam/ip/340f64d4-61d4-4ba9-b784-ba4e64301bbf/Mendes%20Cohen.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280'
];
List<ArtifactData> data = [
  ArtifactData("assets/images/isadore.jpg",
      "Isadore S.Jachman\nMedal of Honor Recipient"),
  ArtifactData(
      "assets/images/jack.jpg", "Jack H.Jacobs\nMedal of Honor Recipient"),
  ArtifactData(
      "assets/images/john.png", "John Levitow\nMedal of Honor Recipient"),
  ArtifactData(
      "assets/images/raymond.png", "Raymond Zussman\nMedal of Honor Recipient"),
];

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff243C6C),
        appBar: AppBar(
          backgroundColor: Color(0xff2d4b87),
          title: Text(
            'Articles',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(child: carousel()),
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  Widget carousel() {
    return Container(
      child: Scaffold(
          backgroundColor: Color(0xff243C6C),
          body: Column(children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            cardView(),
          ])),
    );
  }

  //this wraps the cards
  Widget cardView() {
    return Wrap(
      children: data.map((data) {
        return ArtifactCard(
            imagePath: data.imagePath,
            description: data.desc,
            action: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewPage(
                            img: data.imagePath,
                            title: data.desc,
                          )));
            });
      }).toList(),
    );
  }
}
