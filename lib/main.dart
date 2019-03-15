import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new MaterialApp(
      title: "Login",
      theme: ThemeData(primaryColor: Colors.blue),
      // home: new LoginPage(),
      home: new STL_Widget(),
    ));

class STL_Widget extends StatefulWidget {
  @override
  _STL_WidgetState createState() => _STL_WidgetState();
}

/**
 * 调用setState 改变数据 会导致build方法调用 重新绘制界面
 */
class _STL_WidgetState extends State<STL_Widget> {
  @override
  /**
   * 初始化 一般情况下只会调用一次
   */
  void initState() {
    super.initState();

    print("_STL_WidgetState#initState");
  }

  @override
  /**
   * 在 initState之后调用 此时可以获取其他的state
   */
  void didChangeDependencies() {
    super.didChangeDependencies();

    print("_STL_WidgetState#didChangeDependencies");
  }

  @override
  /**
   * 销毁  只会调用一次
   */
  void dispose() {
    super.dispose();

    print("_STL_WidgetState#dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("_STL_WidgetState#build");

    return Container(
        color: Colors.white,
        child: new GestureDetector(
          onTap: _clicked,
          child: Text(
            "STF_Satate",
            style: new TextStyle(decoration: TextDecoration.none),
          ),
        ));
  }

  void _clicked() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
