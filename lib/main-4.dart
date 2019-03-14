import 'package:flutter/material.dart';
import 'package:flutter_app/pages/LoginPage.dart';

void main() => runApp(new MaterialApp(
      title: "Login",
      theme: ThemeData(primaryColor: Colors.blue),
      // home: new LoginPage(),
      home: new STL("hello stl"),
    ));

class STL extends StatelessWidget {
  String text;

  STL(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            text,
            // 去掉文字下面的默认的下划线
            style: TextStyle(decoration: TextDecoration.none),
          ),
        ));
  }
}
