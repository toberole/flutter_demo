import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            "hello world",
            // textAlign相对与自身而言的，类似android的graviye
            textAlign: TextAlign.center,
          ),
          Text(
            "hello world , I am jack." * 4,
            maxLines: 1,
            // overflow 指定文字的截断方式
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "hello world",
            // 设置文字大小相对于当前文字大小的缩放倍数
            textScaleFactor: 1.5,
          )
        ],
      ),
    );
  }
}
