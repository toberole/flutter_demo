/*

在Flutter中，widget是由其底层的RenderBox渲染，渲染边界的约束（Constraints）由父级给出，widget在这些约束下调整自身尺寸。约束包括最小最大宽高，尺寸则是具体的宽高。
在Android中，布局的宽高限定有三种:
match_parent、wrap_content以及具体尺寸。

在Flutter中也有这三种约束:
- 尽可能大的约束，例如Center、ListView等；
- 跟随内容大小的约束，例如Transform、Opacity等；
- 指定尺寸的约束，例如Image、Text等；

*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout_page extends StatelessWidget {
  @override
  StatelessElement createElement() {
    return super.createElement();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Layout Page",
        theme: ThemeData(primaryColor: Colors.white),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Layout Page"),
          ),
          body: Checkbox(value: true, onChanged: null),
        ));
  }
}
