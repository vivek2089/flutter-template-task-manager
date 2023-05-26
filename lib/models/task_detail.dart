import 'dart:core';

class TaskDetail {
  TaskDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.time,
    this.isCompleted = false,
    this.isDetail = false,
    // this.attendees = List.empty(),
    this.progress = 0,
  });

  final int id;
  final String title;
  final String description;
  final String time;
  // List<String> attendees;
  bool isCompleted;
  bool isDetail;
  int progress;

  static List<TaskDetail> details = List.empty();

  static List<TaskDetail> sample() {
    details.add(TaskDetail(
        id: 1,
        isDetail: true,
        title: "Meeting",
        description: "Discuss team tasks for the day",
        time: "9:00 AM",
        isCompleted: true,
        progress: 35));

    details.add(TaskDetail(
        id: 2,
        isDetail: false,
        title: "Icon set",
        description: "Edit icon for Navi project",
        time: "11:00 AM",
        isCompleted: false,
        progress: 45));

    details.add(TaskDetail(
        id: 3,
        isDetail: false,
        title: "Make prototypes",
        description: "Make and send prototypes for client",
        time: "12:00 PM",
        isCompleted: false,
        progress: 55));

    details.add(TaskDetail(
        id: 4,
        isDetail: false,
        title: "Check work",
        description: "Checkout the work of new junior designers",
        time: "02:00 PM",
        isCompleted: false,
        progress: 65));

    details.add(TaskDetail(
        id: 5,
        isDetail: false,
        title: "Landing page",
        description: "Start work on landing page of COVID-19",
        time: "2:50 PM",
        isCompleted: false,
        progress: 75));

    details.add(TaskDetail(
        id: 6,
        isDetail: false,
        title: "First template",
        description: "Let see how this template design come up",
        time: "10:19 PM",
        isCompleted: false,
        progress: 85));

    return details;
  }
}

class TaskSummary {
  TaskSummary(
      {required this.title, required this.description, required this.time});

  final String title;
  final String description;
  final String time;
}
