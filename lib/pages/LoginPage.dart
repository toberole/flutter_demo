import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MainPage.dart';
import 'package:flutter_app/widgets/ButtonView.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  TextStyle ts_red = new TextStyle(fontSize: 12, color: Colors.red);
  TextStyle ts_black = new TextStyle(fontSize: 12, color: Colors.black);

  TextEditingController nameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  var g_key = new GlobalKey<LoginPageState>();

  @override
  void initState() {
    super.initState();

    print("LoginPageState#initState");
  }

  @override
  void dispose() {
    super.dispose();

    print("LoginPageState#dispose");
  }
  @override
  Widget build(BuildContext context) {
    var v = new Container(
      height: 10,
    );

    var et_name = new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text("用户名: "),
        ),
        Expanded(
          child: TextField(
            controller: nameController,
            decoration: new InputDecoration(
                hintText: "请输入用户名",
                hintStyle: new TextStyle(color: Colors.grey),
                contentPadding: const EdgeInsets.all(10),
                border: new OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0)))),
          ),
        )
      ],
    );

    var et_pwd = new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text("密码:"),
        ),
        Expanded(
          child: new TextField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0))),
                hintText: "请输入密码",
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(10)),
            controller: pwdController,
          ),
        ),
      ],
    );

    var btn_login = new ButtonView(
      text: "登陆",
      onTap: () {
        _login(context);
      },
    );
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            "Login",
            style: ts_red,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: new Column(
        children: <Widget>[v, et_name, v, et_pwd, v, btn_login],
      ),
    );
  }

  void _login(ctx) {
    String name = nameController.text.trim();
    String pwd = pwdController.text.trim();

    print("name: " + name);
    print("pwd: " + pwd);

    // 类似与startActivity
    Navigator.push(ctx, new MaterialPageRoute(builder: (context) {
      return new MainPage(name, pwd);
    }));
  }
}
