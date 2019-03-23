import 'package:flutter/material.dart';
import 'dart:math';
/**
 * Transform可以在其子Widget绘制时对其应用一个矩阵变换（transformation），
 * Matrix4是一个4D矩阵，通过它可以实现各种矩阵操作
 * 
 * Transform的变换是应用在绘制阶段，而并不是应用在布局(layout)阶段，
 * 所以无论对子widget应用何种变化，其占用空间的大小和在屏幕上的位置都是固定不变的.
 */
class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ch0 =Padding(padding: EdgeInsets.all(30),);

    // 倾斜
    var ch1 = Container(
        color: Colors.black,
        child: new Transform(
          alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
          transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
          child: new Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.deepOrange,
            child: const Text('Apartment for rent!'),
          ),
        ),
      );

    // 平移
    var ch2 = DecoratedBox(
      decoration:BoxDecoration(color: Colors.red),
      //默认原点为左上角，左移20像素，向上平移5像素  
      child: Transform.translate(offset: Offset(-20.0, -5.0),
          child: Text("Hello world"),
      ),
    );

    // 旋转
    var ch3 = DecoratedBox(
      decoration:BoxDecoration(color: Colors.red),
      child: Transform.rotate(
        // 旋转 90 度
        angle: pi/2 ,
        child: Text("Hello world"),
      ),
    );

    // 缩放
    var ch4 = DecoratedBox(
      decoration:BoxDecoration(color: Colors.red),
      child: Transform.scale(
          scale: 1.5, //放大到1.5倍
          child: Text("Hello world")
      )
    );

    // RotatedBox
    // 由于RotatedBox是作用于layout阶段，所以widget会旋转90度（而不只是绘制的内容），
    // decoration会作用到widget所占用的实际空间上
    var ch5 = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      //将Transform.rotate换成RotatedBox  
      child: RotatedBox(
        quarterTurns: 1, //旋转90度(1/4圈)
        child: Text("Hello world"),
      ),
    );

    var v = Column(children: <Widget>[
          ch0,ch1,ch0,ch2,ch0,ch3,ch0,ch4,ch0,ch5
    ],);

    return Scaffold(body: v,);
  }
}