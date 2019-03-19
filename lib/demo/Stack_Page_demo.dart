import 'package:flutter/widgets.dart';

/**
 * 类似android的RelativeLayout
 * 采用的是绝对定位
 */
class Stack_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 10,
          top: 20,
          child: Text("hello1"),
        ),
        Positioned(
          left: 20,
          top: 50,
          child: Text("hello2"),
        ),
      ],
    );
  }
}
