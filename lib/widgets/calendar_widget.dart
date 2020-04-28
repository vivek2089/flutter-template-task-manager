import 'package:flutter/material.dart';
import 'package:task_manager/models/schedule.dart';

import '../config.dart';

class Calendar extends StatelessWidget {
  Calendar({Key key}) : super(key: key);

  final List<Schedule> schedules = Schedule.sample();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: schedules.length,
          itemBuilder: (context, index) {
            Schedule schedule = schedules[index];
            TextStyle style = schedule.isToday
                ? Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: MyColors.mustard)
                : Theme.of(context).textTheme.caption;
            return InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    child: Text(
                      schedule.day,
                      style: style,
                    ),
                  ),
                  Container(
                    width: 60,
                    alignment: Alignment.center,
                    child: Text(
                      schedule.date.toString(),
                      style: style.copyWith(height: 1.5),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
