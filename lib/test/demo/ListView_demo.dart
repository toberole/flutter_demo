import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List test.datas;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(
            "ListView Demo",
            style: new TextStyle(color: Colors.red, fontSize: 15),
          ),
        ),
        body: new ListView.builder(
          itemBuilder: (buildContext, position) {
            return getRow(position);
          },
          itemCount: datas.length,
        ));
  }

  Widget getRow(int position) {
    return new Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        datas[position],
        style: new TextStyle(color: Colors.blue, fontSize: 12),
      ),
    );
  }

  void loadData() async {
    // 模拟加载数据
    final d = await mockData();

    setState(() {
      datas = d;
    });
  }

  mockData() async {
    return [
      "111",
      "222",
      "333",
      "444",
      "555",
      "666",
      "111",
      "222",
      "333",
      "111",
      "222",
      "333",
      "111",
      "222",
      "333",
      "111",
      "222",
      "333",
      "111",
      "222",
      "333",
      "111",
      "222",
      "333"
    ];
  }
}
