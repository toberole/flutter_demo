import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget {
  final String text;
  final GestureTapCallback onTap;

  ButtonView({@required this.text, @required this.onTap});

  @override
  State<StatefulWidget> createState() {
    return new ButtonViewState();
  }
}

class ButtonViewState extends State<ButtonView> {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
        onTap: () {
          this.widget.onTap();
        },
        child: new Container(
          child: new Center(
            child: Text(
              this.widget.text,
              style: TextStyle(color: Colors.green),
            ),
          ),
          height: 45,
          decoration: new BoxDecoration(
              color: Colors.grey,
              border: new Border.all(color: Colors.white),
              borderRadius: new BorderRadius.all(new Radius.circular(30))),
        ));
  }
}
