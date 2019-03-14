import 'package:flutter/material.dart';

class Column_Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Column(
        // 主轴居中 竖直方向居中
        mainAxisAlignment: MainAxisAlignment.center,
        // 副轴居中 水平方向居中
        crossAxisAlignment: CrossAxisAlignment.center,
        // 设置大小按最小显示 默认值是最大充满
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // flex 类似与android的weight
          // flex 默认值是1
          new Expanded(
            child: Text("1111"),
            flex: 1,
          ),

          // 设置一个间隔
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),

          new Expanded(
            child: Text("2222"),
          )
        ],
      ),
    );
  }
}
