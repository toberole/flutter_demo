import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: "hello row",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  TextStyle ts_red = new TextStyle(color: Colors.red, fontSize: 15.0);
  TextStyle ts_black = new TextStyle(color: Colors.black, fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "hello home page",
          style: ts_red,
        ),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Text(
              "hello1",
              style: ts_black,
            ),
            Text(
              "hello2",
              style: ts_red,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "hello 3",
                style: ts_red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
