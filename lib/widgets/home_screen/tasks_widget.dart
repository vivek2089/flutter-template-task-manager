import 'package:flutter/material.dart';
import 'package:task_manager/screens/tasks_screen.dart';

import '../../config.dart';
import 'task_thumbnails.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key key}) : super(key: key);

  Row _buildTimeline(BuildContext context) {
    List<String> times = ["Recently", "Today", "Upcoming", "Later"];
    List<Widget> widgets = List<Widget>();
    TextStyle style = Theme.of(context).textTheme.title;
    for (var i = 0; i < times.length; i++) {
      widgets.add(InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TasksScreen()));
        },
        child: Text(
          times[i],
          style: i == 0 ? style.copyWith(color: MyColors.mustard) : style,
        ),
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("My tasks", style: Theme.of(context).textTheme.headline),
        ),
        _buildTimeline(context),
        SizedBox(height: 20),
        TaskThumbnails(),
      ],
    );
  }
}
