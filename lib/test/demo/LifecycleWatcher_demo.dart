import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/*
    监听到的生命周期事
    resumed - 应用程序可见并响应用户输入。这是来自Android的onResume
    inactive - 应用程序处于非活动状态，并且未接收用户输入。此事件在Android上未使用，仅适用于iOS
    paused - 应用程序当前对用户不可见，不响应用户输入，并在后台运行。这是来自Android的暂停
    suspending - 该应用程序将暂时中止。
 */
class LifecycleWatcher_page extends StatefulWidget {
  @override
  _LifecycleWatcher_pageState createState() => _LifecycleWatcher_pageState();
}

class _LifecycleWatcher_pageState extends State<LifecycleWatcher_page>
    with WidgetsBindingObserver {
  AppLifecycleState appLifecycleState;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    setState(() {
      appLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (appLifecycleState == null)
      return new Text('This widget has not observed any lifecycle changes.',
          textDirection: TextDirection.ltr);
    return new Text(
        'The most recent lifecycle state this widget observed was: $appLifecycleState.',
        textDirection: TextDirection.ltr);
  }
}
