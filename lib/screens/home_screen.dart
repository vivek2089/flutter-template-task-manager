import 'package:flutter/material.dart';
import 'package:task_manager/widgets/home_screen/tasks_widget.dart';
import 'package:task_manager/widgets/home_screen/time_tracker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ClipOval(
              child: Image.asset("assets/images/user.png"),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.filter_list,
                size: 32,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hello, Jessika!",
                    style: Theme.of(context).textTheme.title),
                Text("You've got \n8 tasks today",
                    style: Theme.of(context).textTheme.headline),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 5),
                      Text("Search something..."),
                    ],
                  ),
                ),
                TimeTracker(),
                Tasks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
