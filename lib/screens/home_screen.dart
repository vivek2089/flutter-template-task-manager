import 'package:flutter/material.dart';

import '../widgets/home_screen/time_tracker.dart';
import '../widgets/tasks_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.filter_list,
                size: 32,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hello, Jessika!",
                  style: Theme.of(context).textTheme.titleLarge),
              Text("You've got \n8 tasks today",
                  style: Theme.of(context).textTheme.headlineSmall),
              Container(
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 5),
                    Text("Search something..."),
                  ],
                ),
              ),
              const TimeTracker(),
              Expanded(
                child: Tasks(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
