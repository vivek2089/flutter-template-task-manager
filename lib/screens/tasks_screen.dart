import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets/calendar_widget.dart';
import '../widgets/tasks_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chevron_left,
              size: 32,
              color: MyColors.black,
            ),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.filter_list,
                size: 32,
                color: MyColors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              _buildTitleBar(context),
              Calendar(),
              const SizedBox(height: 20),
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
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Today",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        Builder(builder: (BuildContext context) {
          return InkWell(
            onTap: () {
              // final snackBar = SnackBar(
              //   content: const Text(
              //       "Funcitonality not implemented. Feature is for demo :)"),
              //   action: SnackBarAction(
              //     label: 'Ok',
              //     onPressed: () {
              //       // Some code to undo the change.
              //     },
              //   ),
              // );
              // Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: const BoxDecoration(
                color: MyColors.black,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                "+ Add task",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          );
        }),
      ],
    );
  }
}
