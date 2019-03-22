import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Flutter_Call_java extends StatefulWidget {
  @override
  _Flutter_Call_javaState createState() => _Flutter_Call_javaState();
}

class _Flutter_Call_javaState extends State<Flutter_Call_java> {
  static const platform =
      const MethodChannel("flutter_call_java.flutter.io/test.demo");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new GestureDetector(
        onTap: () {
          call_java_toast();
        },
        child: new Center(
          child: new Text(
            "Flutter Call java",
            style: new TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ),
    );
  }

  void call_java_toast() async {
    try {
      Object ret = await platform.invokeMethod("toast_msg", "12345");
      print(ret);
    } on PlatformException catch (e) {
      print("***** PlatformException ***** " + e.toString());
    }
  }
}
