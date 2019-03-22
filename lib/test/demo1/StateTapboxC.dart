import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 混合管理
// 对于一些widget来说，混合管理的方式非常有用。在这种情况下，widget自身管理一些内部状态，而父widget管理一些其他外部状态。

/*

ParentWidgetStateC 对象:
    管理_active 状态。
    实现 _handleTapboxChanged() ，当盒子被点击时调用。
    当点击盒子并且_active状态改变时调用setState()更新UI。

_TapboxCState 对象:
    管理_highlight state。
    GestureDetector监听所有tap事件。当用户点下时，它添加高亮（深绿色边框）；当用户释放时，会移除高亮。
    当按下、抬起、或者取消点击时更新_highlight状态，调用setState()更新UI。
    当点击时，将状态的改变传递给父widget.

 */

class ParentWidgetC extends StatefulWidget {
  @override
  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void handleTap(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxC(_active, handleTap,
      ),
    );
  }
}

class TapboxC extends StatefulWidget {
  bool active = false;
  ValueChanged<bool> onChange;

  TapboxC(this.active, this.onChange);

  @override
  _TapboxCState createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChange(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // 在按下时添加绿色边框，当抬起时，取消高亮
    return new GestureDetector(
      onTapDown: _handleTapDown,
      // 处理按下事件
      onTapUp: _handleTapUp,
      // 处理抬起事件 触发调用父widget的方法
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? new Border.all(
            color: Colors.teal[700],
            width: 10.0,
          )
              : null,
        ),
      ),
    );
  }
}}
