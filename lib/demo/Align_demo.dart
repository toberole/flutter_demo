import 'package:flutter/material.dart';

class Align_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      color: Colors.red,
      child: Align(
        // heightFactor: 1, 设置Align与child的height的比
        // widthFactor: 2,设置Align与child的width的比
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(left: 0, top: 30, right: 10, bottom: 0),
          child: Text("helloe--"),
        ),
      ),
    );
  }
}
