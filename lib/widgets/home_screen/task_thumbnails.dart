import 'package:flutter/material.dart';
import 'package:task_manager/models/task_detail.dart';

import 'task_thumbnail.dart';

class TaskThumbnails extends StatelessWidget {
  TaskThumbnails({
    Key key,
  }) : super(key: key);

  final List<TaskDetail> tasks = TaskDetail.sample();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 260,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 30),
          scrollDirection: Axis.horizontal,
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskThumbnail(task: tasks[index]);
          }),
    );
  }
}
