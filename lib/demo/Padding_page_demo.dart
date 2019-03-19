import 'package:flutter/material.dart';

class Padding_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.only(left: 100, top: 50, right: 50, bottom: 20),
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
            child: Text(
              "hellopadding",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}
