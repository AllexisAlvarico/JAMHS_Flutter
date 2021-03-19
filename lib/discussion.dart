import 'package:flutter/material.dart';

class CommentField extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsets padding;
  final Function onSubmitButton;

  CommentField({Key key, this.controller, this.padding, this.onSubmitButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter comment...",
          ),
          maxLines: 4,
          controller: controller,
        ),
        Padding(
          padding: padding != null ? padding : EdgeInsets.all(0),
          child: ElevatedButton(
            onPressed: onSubmitButton,
            child: Text("submit"),
          ),
        ),
      ],
    );
  }
}

class CommentsListView extends StatelessWidget {
  final int itemCount;
  final List<String> data;
  final Color color;
  final EdgeInsets padding;

  CommentsListView(
      {Key key, this.itemCount, this.data, this.color, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text("Comments",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura"))),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Padding(
              padding: padding,
              child: Card(
                color: color,
                child: ListTile(
                  title: Text(data[index]),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
