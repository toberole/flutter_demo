import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 父widget管理子widget的state
// ParentWidget 为 TapboxB 管理状态.
class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool active = false;

  void handtap(bool newValue) {
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxB(
        active: active,
        onChange: handtap,
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  bool active;

  // 类似与回调的形式
  ValueChanged<bool> onChange;

  TapBoxB({Key key, this.active: false, this.onChange}) : super(key: key);

  void _handleTap() {
    onChange(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
