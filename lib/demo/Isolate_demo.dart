import 'dart:isolate';

import 'package:flutter/material.dart';

class Isolate_page extends StatefulWidget {
  Isolate_page({Key key}) : super(key: key);

  @override
  _Isolate_pageState createState() => _Isolate_pageState();
}

class _Isolate_pageState extends State<Isolate_page> {
  List widgets;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Isolate demo"),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return getListView();
  }

  getListView() {
    return ListView.builder(
      itemBuilder: (buildContext, position) {
        return getRow();
      },
      itemCount: widgets.length,
    );
  }

  getRow(position) {
    return new Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        widgets[position],
        style: new TextStyle(color: Colors.blue, fontSize: 12),
      ),
    );
  }

  void loadData() async {
    ReceivePort receivePort = new ReceivePort();
    await Isolate.spawn(dataLoadter, receivePort.sendPort);
  }

  dataLoadter(SendPort sendPort) async {
    ReceivePort port = new ReceivePort();
    sendPort.send(port.sendPort);
    await for (var msg in port) {
      String data = msg[0];
      SendPort replyTo = msg[1];

      String dataURL = data;
  }
}
