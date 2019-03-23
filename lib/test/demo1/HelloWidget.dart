import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/*
      Widget > RenderObjectWidget > (Leaf/SingleChild/MultiChild)RenderObjectWidget 
 */

class HelloWidget extends StatelessWidget {
  String txt;
  Color bg_color;

  // 构造函数采用命名参数
  // @required 表示必须的
  HelloWidget({Key key, @required this.txt, this.bg_color: Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg_color,
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: Colors.blue, decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class HelloWidgetStateFul extends StatefulWidget {
  /*
      createState() 用于创建和Stateful widget相关的状态
      它在Stateful widget的生命周期中可能会被多次调用。
      例如，当一个Stateful widget同时插入到widget树的多个位置时，
      Flutter framework就会调用该方法为每一个位置生成一个独立的State实例，
      其实，本质上就是一个StatefulElement对应一个State实例。
   */
  @override
  StatefulElement createElement() {
    return super.createElement();
  }

  @override
  _HelloWidgetStateFulState createState() => _HelloWidgetStateFulState();
}

/*
    state 有两个常用属性：
    1、widget
    2、BuildContext
 */
class _HelloWidgetStateFulState extends State<HelloWidgetStateFul> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
