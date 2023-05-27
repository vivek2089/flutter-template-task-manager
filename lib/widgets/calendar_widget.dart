import 'package:flutter/material.dart';
import '../config.dart';
import '../models/schedule.dart';

class Calendar extends StatelessWidget {
  Calendar({super.key});

  final List<Schedule> schedules = Schedule.sample();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: schedules.length,
          itemBuilder: (context, index) {
            Schedule schedule = schedules[index];
            TextStyle? style = schedule.isToday
                ? Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: MyColors.mustard)
                : Theme.of(context).textTheme.bodySmall;
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
                      style: style?.copyWith(height: 1.5),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
