import 'package:flutter/material.dart';

/*

流式布局

Wrap({
    Key key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,// 主轴方向子widget的间距
    this.runAlignment = WrapAlignment.start,// 纵轴方向的对齐方式
    this.runSpacing = 0.0,// 纵轴方向的间距
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    List<Widget> children = const <Widget>[],
  }) 

 */

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var v =  Container(
      child: Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('Mulligan'),
            ),
            new Chip(
              backgroundColor: Colors.red,
              avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('Laurens'),
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.all(Radius.circular(0))
              ),
            ),
          ],
        ),
    );

    return Scaffold(body: v,);
  }
}