
import 'package:flutter/material.dart';

class SwitchCheckoutPage extends StatefulWidget {
  @override
  _SwitchCheckoutPageState createState() => _SwitchCheckoutPageState();
}

class _SwitchCheckoutPageState extends State<SwitchCheckoutPage> {
  bool sw = false;
  bool cb = false;

  _SwitchCheckoutPageState(){}

 
  change_sw(){
    setState(() {
      sw = !sw;
    });
  }
  change_cb(){
    setState(() {
      cb = !cb;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: sw,
              onChanged: (value){
                change_sw();
              },),
              Checkbox(
                value: cb,
                activeColor: Colors.red,
                onChanged: (v){
                  change_cb();
                },
              )
          ],
        ),
    )
    );
  }
}