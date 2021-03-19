import 'package:flutter/material.dart';
import 'package:jamhs_flutter/ArtifactCard.dart';
import 'package:jamhs_flutter/discussion.dart';

class ArtifactView extends StatefulWidget {
  final ArtifactData data;

  ArtifactView({Key key, this.data}) : super(key: key);

  @override
  _ArtifactViewState createState() => _ArtifactViewState();
}

class _ArtifactViewState extends State<ArtifactView> {
  List<String> discussionData = [];

  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.data.comments != null) {
      discussionData = widget.data.comments;
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, discussionData);
        return false;
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode current = FocusScope.of(context);

          if (!current.hasPrimaryFocus) {
            current.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: Color(0xff243C6C),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset(widget.data.imagePath)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.data.title,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      widget.data.category,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura"),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.data.desc,
                          style: TextStyle(fontSize: 20, fontFamily: "Futura"),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        CommentField(
                          controller: controller,
                          onSubmitButton: () {
                            setState(() {
                              if (controller.text.trim().length > 0) {
                                discussionData.add(controller.text);
                              }
                              controller.clear();
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  CommentsListView(
                    color: Colors.grey[200],
                    data: discussionData,
                    itemCount: discussionData.length,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
