import 'package:flutter/material.dart';
import '../config.dart';
import '../models/task_detail.dart';
import 'attendees_widget.dart';

//Todo: Assert the detail.
class Task extends StatefulWidget {
  const Task({super.key, required this.detail});
  final TaskDetail detail;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  double scaleFactor = 0.55;
  Widget _buildTaskSummary(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.detail.isDetail = !widget.detail.isDetail;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.detail.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  widget.detail.time,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * scaleFactor,
              child: Text(
                widget.detail.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskDetail(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.detail.isDetail = !widget.detail.isDetail;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.mustard),
          color: MyColors.mustard,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.detail.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  widget.detail.time,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * scaleFactor,
              child: Text(
                widget.detail.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Attendees(
                    border: Border.all(color: Colors.white, width: 3),
                    backgroudColor: MyColors.mustard,
                  ),
                ),
                _buildCheck(context, widget.detail),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCheck(BuildContext context, TaskDetail detail) {
    Widget checkedWidget = const Icon(
      Icons.check,
      color: Colors.white,
    );

    return InkWell(
      onTap: () {
        setState(() {
          detail.isCompleted = !detail.isCompleted;
        });
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          color: MyColors.black,
        ),
        height: 50,
        width: 50,
        child: detail.isCompleted ? checkedWidget : Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.detail.isDetail
        ? _buildTaskDetail(context)
        : _buildTaskSummary(context);
  }
}
