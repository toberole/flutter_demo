import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  String text;

  Page(this.text);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "$text",
      home: new Center(
        child: Text("$text"),
      ),
    );
  }
}
