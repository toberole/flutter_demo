import 'package:flutter/widgets.dart';

// 全局状态管理
/*
    当应用中包括一些跨widget（甚至跨路由）的状态需要同步时，
    比如，我们有一个设置页，里面可以设置应用语言，但是我们为了让设置实时生效，
    我们期望在语言状态发生改变时，我们的APP Widget能够重新build一下，
    但我们的APP Widget和设置页并不在一起。正确的做法是通过一个全局状态管理器来处理这种“相距较远”的widget之间的通信。
    目前主要有两种办法：
        1、实现一个全局的事件总线，将语言状态改变对应为一个事件，然后在APP Widget所在的父widgetinitState 方法中订阅语言改变的事件，当用户在设置页切换语言后，我们触发语言改变事件，然后APP Widget那边就会收到通知，然后重新build一下即可。
        2、使用redux这样的全局状态包，读者可以在pub上查看其详细信息。

 */
class GlobalStatePage extends StatefulWidget {
  @override
  _GlobalStatePageState createState() => _GlobalStatePageState();
}

class _GlobalStatePageState extends State<GlobalStatePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
