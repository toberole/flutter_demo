import 'package:flutter/material.dart';
/*
    多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。实际上，只有这样才能保证父限制与子限制不冲突
 */
class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var redBox = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.red
    ),);
    return Scaffold(
      body: ConstrainedBox(
        constraints:BoxConstraints(
          minWidth: double.infinity,
          minHeight: 40),
        child: Container(
          child: redBox,
        ),
      ),
    );
  }
}