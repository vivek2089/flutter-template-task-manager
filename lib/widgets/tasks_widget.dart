import 'package:flutter/material.dart';
import '../config.dart';
import '../models/task_detail.dart';
import 'task_widget.dart';

class Tasks extends StatelessWidget {
  Tasks({super.key});

  final List<TaskDetail> _details = TaskDetail.sample();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _details.length,
        itemBuilder: (context, index) {
          TaskDetail detail = _details[index];
          BoxDecoration decoration = const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: MyColors.mustard,
                width: 3,
              ),
            ),
          );
          return Container(
            decoration: index == _details.length - 1 ? null : decoration,
            margin: const EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //height: 30,
                  transform: Matrix4.translationValues(-13.0, -1, 0),
                  child: const Icon(
                    Icons.error,
                    color: MyColors.mustard,
                  ),
                ),
                Container(
                  //height: 150,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: MyColors.mustard, width: 3),
                    ),
                  ),
                ),
                Expanded(
                  child: Task(detail: detail),
                ),
              ],
            ),
          );
        });
  }
}
