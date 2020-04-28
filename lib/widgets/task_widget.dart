import 'package:flutter/material.dart';
import 'package:task_manager/models/task_detail.dart';
import '../config.dart';
import 'attendees_widget.dart';

//Todo: Assert the detail.
class Task extends StatefulWidget {
  const Task({Key key, this.detail}) : super(key: key);
  final TaskDetail detail;

  @override
  _TaskState createState() => _TaskState();
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
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.detail.title,
                  style: Theme.of(context).textTheme.subhead,
                ),
                Text(
                  widget.detail.time,
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width * scaleFactor,
              child: Text(
                widget.detail.description,
                style: Theme.of(context).textTheme.body1,
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
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.mustard),
          color: MyColors.mustard,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.detail.title,
                  style: Theme.of(context).textTheme.subhead,
                ),
                Text(
                  widget.detail.time,
                  style: Theme.of(context).textTheme.overline,
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width * scaleFactor,
              child: Text(
                widget.detail.description,
                style: Theme.of(context).textTheme.body2,
              ),
            ),
            SizedBox(height: 15),
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
    Widget checkedWidget = Icon(
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
        decoration: BoxDecoration(
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
    return widget.detail.isDetail != null && widget.detail.isDetail
        ? _buildTaskDetail(context)
        : _buildTaskSummary(context);
  }
}
