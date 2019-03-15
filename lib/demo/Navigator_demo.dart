import 'package:flutter/material.dart';
import 'package:flutter_app/demo/Page.dart';

class Navigator_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Navigator",
      theme: ThemeData(primaryColor: Colors.white),
      home: new Center(
        child: new GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/a");
          },
          child: Text(
            "Navigator_Page",
            style: new TextStyle(color: Colors.red, fontSize: 15),
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{"/a": (BuildContext) => new Page("a")},
    );
  }
}
