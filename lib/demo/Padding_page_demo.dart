import 'package:flutter/material.dart';

class Padding_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 100, top: 50, right: 0, bottom: 0),
        child: Text(
          "hello",
          style: TextStyle(color: Colors.red, decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
