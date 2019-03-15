import 'package:flutter/material.dart';

class Gestures_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      child: new GestureDetector(
        onTap: _ontap,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        onDoubleTap: _doubleTap,
        child: new Text("hello demo"),
      ),
    );
  }

  void _ontap() {
    print("_ontap");
  }

  void _onTapDown(TapDownDetails details) {
    print("_onTapDown");
  }

  void _doubleTap() {
    print("_doubleTap");
  }

  void _onTapUp(TapUpDetails details) {
    print("_onTapUp");
  }

  void _onTapCancel() {
    print("_onTapCancel");
  }
}
