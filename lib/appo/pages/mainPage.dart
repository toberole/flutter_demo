import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/appo/widgets/slideView.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List imgs = new List();

  @override
  void initState() {
    super.initState();

    imgs.add(Image.asset("app_assets/images/main_1.jpg"));
    imgs.add(Image.asset("app_assets/images/main_2.jpg"));
    imgs.add(Image.asset("app_assets/images/main_3.jpg"));
    imgs.add(Image.asset("app_assets/images/main_4.jpg"));
  }

  @override
  Widget build(BuildContext context) {
    var title = getTitle();

    var content1 = getContent1(imgs);

    var content2 = getContent2();

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[title, content1, content2],
        ),
      ),
    );
  }

  getTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
              child: Text("MainPage",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.red,
                    fontSize: 15,
                  )),
            ),
          ),
        )
      ],
    );
  }

  getContent1(List imgs) {
    return SlideView(imgs);
  }

  getContent2() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("名字"),
            Expanded(
              child: Padding(
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius:
                                new BorderRadius.all(Radius.circular(5)))),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
            )
          ],
        ),
      ],
    );
  }
}
