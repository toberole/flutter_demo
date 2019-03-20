import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FittedBox_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: new FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.center,
        child: new Container(
          color: Colors.red,
          child: new Text("hello FittedBox"),
        ),
      ),
    );
  }
}
