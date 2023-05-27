import 'package:flutter/material.dart';

import '../../config.dart';
import '../../screens/tasks_screen.dart';

class TimeTracker extends StatelessWidget {
  const TimeTracker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      padding: const EdgeInsets.all(20).copyWith(right: 30),
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
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "You can start tracking",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TasksScreen()));
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: MyColors.mustard,
              ),
              height: 50,
              width: 50,
              child: const Icon(
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
