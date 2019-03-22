import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 富文本
class TetxSpanPage extends StatefulWidget {
  @override
  _TetxSpanPageState createState() => _TetxSpanPageState();
}

class _TetxSpanPageState extends State<TetxSpanPage> {
  @override
  Widget build(BuildContext context) {
    var _TextSpan = Text.rich(TextSpan(children: [
      TextSpan(text: "home"),
      TextSpan(text: "www.sogou.com", style: TextStyle(color: Colors.red)),
    ]));
    return Container(
      color: Colors.white,
      child: Center(child: _TextSpan),
    );
  }
}
