import 'package:flutter/material.dart';
import 'package:task_manager/models/task_detail.dart';

import '../../config.dart';
import '../attendees_widget.dart';

class TaskThumbnail extends StatelessWidget {
  const TaskThumbnail({Key key, this.task}) : super(key: key);

  final TaskDetail task;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        border: Border.all(color: Colors.black12, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                task.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Icon(
                Icons.bubble_chart,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            task.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Attendees(
              border: Border.all(color: MyColors.mustard, width: 3),
              backgroudColor: Colors.white,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Progress",
                        style: Theme.of(context).textTheme.bodyMedium.copyWith(
                            fontWeight: FontWeight.w800, color: Colors.black54),
                      ),
                      Text(
                        "${task.progress.toString()}%",
                        style: Theme.of(context).textTheme.bodyMedium.copyWith(
                            color: MyColors.mustard,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const LinearProgressIndicator(
                    value: 0.35,
                    backgroundColor: MyColors.lightGray,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
