import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Widget管理自身状态
class BoxA extends StatefulWidget {
  BoxA({Key key}) : super(key: key);

  @override
  _BoxAState createState() => _BoxAState();
}

class _BoxAState extends State<BoxA> {
  bool active = false;

  void totgle() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: totgle,
      child: Container(
        decoration: BoxDecoration(color: active ? Colors.red : Colors.green),
        width: 200,
        height: 200,
        child: Text(
          active ? "Active" : "InActive",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
