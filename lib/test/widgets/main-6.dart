import 'package:flutter/material.dart';
import 'package:flutter_app/demo/Align_demo.dart';
import 'package:flutter_app/demo/Animation_demo.dart';
import 'package:flutter_app/demo/Column_Row_demo.dart';
import 'package:flutter_app/demo/Container_demo.dart';
import 'package:flutter_app/demo/Flutter_call_java.dart';
import 'package:flutter_app/demo/Gestures_demo.dart';
import 'package:flutter_app/demo/Http_Json_page.dart';
import 'package:flutter_app/demo/LifecycleWatcher_demo.dart';
import 'package:flutter_app/demo/ListView_demo.dart';
import 'package:flutter_app/demo/Navigator_demo.dart';
import 'package:flutter_app/demo/Padding_page_demo.dart';

void main() => runApp(new MaterialApp(
    title: "Login",
    theme: ThemeData(primaryColor: Colors.blue),
    //home: new Container_Page(),
    // home: new Navigator_Page(),
    home: new Http_Json_Page()));
