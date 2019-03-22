import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateTestPage extends StatefulWidget {
  @override
  StatefulElement createElement() {
    print("StateTestPage #createElement");
    return super.createElement();
  }

  @override
  _StateTestPageState createState() => _StateTestPageState();
}

/*
    createElement ---> initState
    ---> didChangeDependencies ---> build
*/
class _StateTestPageState extends State<StateTestPage> {
  int count = 0;

  void inc() {
    count++;
    setState(() {
      print("count++");
    });
  }

  @override
  void initState() {
    super.initState();

    print("_StateTestPageState#initState");
  }

  @override
  void didUpdateWidget(StateTestPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("_StateTestPageState#didUpdateWidget");
  }

  @override
  void deactivate() {// 当State对象从树中被移除时，会调用此回调
    super.deactivate();
    print("_StateTestPageState#deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("_StateTestPageState#dispose");
  }

  @override
  void reassemble() {
    // 该方法只有在调式模式下才会被调用
    super.reassemble();
    print("_StateTestPageState#reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("_StateTestPageState#didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("_StateTestPageState#build");

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text("count = ${count}"),
          Divider(
            height: 20,
            color: Colors.red,
          ),
          GestureDetector(
            onTap: inc,
            child: Text("Button"),
          )
        ],
      ),
    );
  }
}

/*
  常见的状态管理方法：
    1、Widget管理自己的state
    2、父Widget管理子Widget状态
    3、混合管理
  如何决定使用哪种管理方法？以下原则可以帮助你决定：
    1、如果状态是用户数据，如复选框的选中状态、滑块的位置，则该状态最好由父widget管理。
    2、如果状态是有关界面外观效果的，例如颜色、动画，那么状态最好由widget本身来管理。
    3、如果某一个状态是不同widget共享的则最好由它们共同的父widget管理。

 */
