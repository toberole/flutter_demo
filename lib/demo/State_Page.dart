import 'package:flutter/widgets.dart';

class State_Page extends StatefulWidget {
  @override
  _State_PageState createState() => _State_PageState();
}

class _State_PageState extends State<State_Page> {
  @override
  void initState() {
    super.initState();

    print("_State_PageState#initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print("_State_PageState#didChangeDependencies");
  }

  @override
  void didUpdateWidget(State_Page oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("_State_PageState#didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();

    print("_State_PageState#deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("_State_PageState#dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
