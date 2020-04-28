import 'package:flutter/material.dart';

import '../config.dart';

class Attendees extends StatelessWidget {
  const Attendees({
    Key key,
    @required this.border,
    @required this.backgroudColor,
  }) : super(key: key);

  final Color backgroudColor;
  final Border border;

  @override
  Widget build(BuildContext context) {
    List<String> attendees =
        List<String>.generate(4, (image) => "assets/images/user.png");
    double index = 0;
    List<Widget> attendeesWidget = attendees.asMap().entries.map((entry) {
      Widget widget = Container(
        decoration: BoxDecoration(
            color: backgroudColor, //Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: border //Border.all(color: MyColors.mustard, width: 3),
            ),
        transform: Matrix4.translationValues(-5 * index, 0, 0),
        child: ClipOval(
            child: Image.asset(
          entry.value,
          width: 45,
        )),
      );
      index = index + 3;
      return widget;
    }).toList();
    return Container(
      child: Row(
        children: attendeesWidget,
      ),
    );
  }
}
