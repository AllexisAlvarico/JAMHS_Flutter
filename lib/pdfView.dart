import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class PDFView extends StatefulWidget {
  final String path;

  PDFView({Key key, this.path}) : super(key: key);
  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  bool isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243C6C),
      appBar: AppBar(
        title: Text(
          "Graphic Novel",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
        backgroundColor: Color(0xff243C6C),
      ),
      body: Center(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                backgroundColor: Color(0xff243C6C),
              ))
            : PDFViewer(
                document: document,
                pickerButtonColor: Color(0xff324e7d),
                navigationBuilder:
                    (context, page, totalPages, jumpToPage, animateToPage) {
                  return Container(
                    color: Color(0xff243C6C),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.first_page,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            animateToPage(page: 0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            animateToPage(page: page - 2);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward, color: Colors.white),
                          onPressed: () {
                            animateToPage(page: page);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.last_page, color: Colors.white),
                          onPressed: () {
                            animateToPage(page: totalPages - 1);
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset(widget.path);
    setState(() {
      isLoading = false;
    });
  }
}
