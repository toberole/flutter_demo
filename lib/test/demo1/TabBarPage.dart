import 'package:flutter/material.dart';

/*
    AppBar({
      Key key,
      this.leading, //导航栏最左侧Widget，常见为抽屉菜单按钮或返回按钮。
      this.automaticallyImplyLeading = true, //如果leading为null，是否自动实现默认的leading按钮
      this.title,// 页面标题
      this.actions, // 导航栏右侧菜单
      this.bottom, // 导航栏底部菜单，通常为Tab按钮组
      this.elevation = 4.0, // 导航栏阴影
      this.centerTitle, //标题是否居中 
      this.backgroundColor,
      ...   //其它属性见源码注释
    })

 */

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  TabController _controller;
  List<String> tab_titles = ["新闻","历史","图片"];
  
  @override
  void initState() {
    super.initState();

    _controller = new TabController(length: tab_titles.length,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabView Page"),
        bottom: TabBar(
          controller: _controller,
          tabs: tab_titles.map((e)=>Tab(text: e,)).toList()),
        ),
      );
  }
}