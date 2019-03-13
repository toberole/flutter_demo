import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MainPage",
      theme: ThemeData(primaryColor: Colors.grey),
      home: new Scaffold(
        appBar: new AppBar(
            title: new Center(
          child: Text(
            "MainPage",
            style: new TextStyle(color: Colors.red),
          ),
        )),
        body: new Center(
          child: new Text('hello mainpage'),
        ),
      ),
    );
  }
}
