import 'package:flutter/material.dart';
import 'package:task_manager/config.dart';
import 'package:task_manager/widgets/calendar_widget.dart';
import 'package:task_manager/widgets/tasks_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left,
              size: 32,
              color: MyColors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.filter_list,
                size: 32,
                color: MyColors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              _buildTitleBar(context),
              Calendar(),
              SizedBox(height: 20),
              Expanded(
                child: Tasks(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "April 10, 2020",
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              "Today",
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
        Builder(builder: (BuildContext context) {
          return InkWell(
            onTap: () {
              final snackBar = SnackBar(
                content: Text(
                    "Funcitonality not implemented. Feature is for demo :)"),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: MyColors.black,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                "+ Add task",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          );
        }),
      ],
    );
  }
}
