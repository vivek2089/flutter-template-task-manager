import 'package:flutter/material.dart';
import 'package:task_manager/models/task_detail.dart';

import '../config.dart';
import 'task_widget.dart';

class Tasks extends StatelessWidget {
  Tasks({Key key}) : super(key: key);

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
            margin: EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //height: 30,
                  transform: Matrix4.translationValues(-13.0, -1, 0),
                  child: Icon(
                    Icons.error,
                    color: MyColors.mustard,
                  ),
                ),
                Container(
                  //height: 150,
                  decoration: BoxDecoration(
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
