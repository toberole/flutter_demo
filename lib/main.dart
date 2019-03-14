import 'package:flutter/material.dart';
import 'package:flutter_app/demo/Animation_demo.dart';
import 'package:flutter_app/demo/Column_Row_demo.dart';
import 'package:flutter_app/demo/Container_demo.dart';
import 'package:flutter_app/demo/Http_Json_page.dart';
import 'package:flutter_app/demo/ListView_demo.dart';

void main() => runApp(new MaterialApp(
      title: "Login",
      theme: ThemeData(primaryColor: Colors.blue),
      //home: new Container_Page(),
      home: new Http_Json_Page(),
    ));
