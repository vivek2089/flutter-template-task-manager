import 'package:flutter/material.dart';
import 'package:task_manager/screens/tasks_screen.dart';

import '../../config.dart';

class TimeTracker extends StatelessWidget {
  const TimeTracker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      padding: EdgeInsets.all(20).copyWith(right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: kElevationToShadow[2],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Project time tracker",
                style: Theme.of(context).textTheme.subhead,
              ),
              Text(
                "You can start tracking",
                style: Theme.of(context).textTheme.body1,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TasksScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: MyColors.mustard,
              ),
              height: 50,
              width: 50,
              child: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
