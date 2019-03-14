import 'package:flutter/material.dart';
import 'package:flutter_app/datas/Datas.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Http_Json_Page extends StatefulWidget {
  @override
  _Http_Json_PageState createState() => _Http_Json_PageState();
}

class _Http_Json_PageState extends State<Http_Json_Page> {
  List datas;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }

  void loadData() async {
    String dataURL = Datas.users;
    http.Response response = await http.get(dataURL);

    List responseJson = json.decode(response.body);

    print("response.body = " + response.body);
    print("responseJson[0] = " + responseJson[0]["name"]);
  }
}