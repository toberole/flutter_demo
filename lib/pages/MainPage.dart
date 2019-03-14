import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  String name;
  String pwd;
// 构造方法的两种写法
//  MainPage(String name, String pwd) {
//    this.name = name;
//    this.pwd = pwd;
//  }

  MainPage(this.name, this.pwd) {
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MainPage",
      theme: ThemeData(primaryColor: Colors.grey),
      home: new Scaffold(
        appBar: new AppBar(
            title: new Center(
          child: Text(
            "MainPage $name",
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
