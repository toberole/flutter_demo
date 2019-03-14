import 'package:flutter/material.dart';

class Container_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置margin
      margin: EdgeInsets.all(10.0),
      height: 100,
      width: 100,
      color: Colors.white,
      // 在Container上作装饰
      decoration: new BoxDecoration(
          // 设置弧度
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.black,
          border: new Border.all(color: Colors.red, width: 5)),
    );
  }
}
