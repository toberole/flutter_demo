import 'package:flutter/material.dart';
import 'package:flutter_app/datas/Datas.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Http_Json_Page extends StatefulWidget {
  @override
  _Http_Json_PageState createState() => _Http_Json_PageState();
}

class _Http_Json_PageState extends State<Http_Json_Page> {
  List datas = [];

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("http json demo"),
      ),
      body: getBody(),
    );
  }

  void loadData() async {
    String dataURL = Datas.users;
    http.Response response = await http.get(dataURL);

    datas = json.decode(response.body);

    setState(() {

    });

    print("response.body = " + response.body);
    print("responseData[0] = " + datas[0]["name"]);
  }

  getBody() {
    if (datas.length == 0) {
      return getProgressDialog();
    }

    return getListView();
  }

  getProgressDialog() {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  getListView() {
    return new ListView.builder(
      itemBuilder: (buildContext, position) {
        return new Center(
          child: new Column(
            children: <Widget>[
              Text(datas[position]["name"]),
              new Divider(),
              Text(datas[position]["age"].toString())
            ],
          ),
        );
      },
      itemCount: datas.length,
    );
  }
}
