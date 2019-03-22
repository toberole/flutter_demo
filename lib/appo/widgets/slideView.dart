import 'package:flutter/widgets.dart';

class SlideView extends StatefulWidget {
  List data;

  SlideView(this.data);

  @override
  _SlideViewState createState() => _SlideViewState();
}

class _SlideViewState extends State<SlideView> {
  List slide_data;

  PageController _pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    slide_data = this.widget.data;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200,
      child: PageView.builder(
          controller: _pageController,
          itemCount: slide_data.length,
          itemBuilder: (BuildContext context, int index) {
            return slide_data[index];
          }),
    );
  }
}
