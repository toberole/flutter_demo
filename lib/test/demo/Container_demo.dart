import 'package:flutter/material.dart';

class Container_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      /**
       * Container的color属性和decoration 不能同时设置
       */
      // 设置margin
      margin: EdgeInsets.all(10.0),
      height: 100,
      width: 100,
      // 变换只是显示的视图 控件的本身的位置都没有变化
      transform: Matrix4.rotationZ(0.3),
      // color: Colors.white,
      // 在Container上作装饰
      decoration: new BoxDecoration(
          // 设置弧度
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.green,
          border: new Border.all(color: Colors.red, width: 5)),
    );
  }
}
