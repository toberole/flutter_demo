import 'package:flutter/material.dart';
// 类似android的Scrollview
class SingleChildScrollViewPage extends StatelessWidget {
  String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: 
              s.split("") 
               .map((c) => Text(c, textScaleFactor: 2.0,)) 
               .toList(),
            ),
          ),
        ),
      ),
    );
  }
}