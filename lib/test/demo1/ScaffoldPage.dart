import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Page"),
        actions: <Widget>[// 导航栏右侧菜单
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){},
            )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        onTap: _selected,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
        ],
      ) ,
    );
  }

  _selected(index){
    setState(() {
      _selectedIndex = index;
      print("selectedIndex: ${_selectedIndex}");
    });
  }
}