import 'package:flutter/material.dart';

class Animation_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Animation",
      theme: ThemeData(primarySwatch: Colors.red),
      home: new Animation_page(),
    );
  }
}

class Animation_page extends StatefulWidget {
  @override
  _Animation_pageState createState() => _Animation_pageState();
}

class _Animation_pageState extends State<Animation_page>
    with TickerProviderStateMixin {
  AnimationController animationController;

  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    curvedAnimation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: new FadeTransition(
          opacity: curvedAnimation,
          child: new FlutterLogo(
            size: 100,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          animationController.forward();
        },
        child: new Icon(Icons.brush),
      ),
    );
  }
}
