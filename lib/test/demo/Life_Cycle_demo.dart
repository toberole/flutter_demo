import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LifeCycleDemo extends StatelessWidget {
  @override
  StatelessElement createElement() {
    // TODO: implement createElement
    print("LifeCycleDemo #createElement");

    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
