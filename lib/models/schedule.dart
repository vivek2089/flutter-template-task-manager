class Schedule {
  Schedule({required this.date, required this.day, required this.isToday});
  final int date;
  final String day;
  final bool isToday;

  static String _getDay(int weekDay) {
    if (weekDay == 1) return "Mon";
    if (weekDay == 2) return "Tue";
    if (weekDay == 3) return "Wed";
    if (weekDay == 4) return "Thu";
    if (weekDay == 5) return "Fri";
    if (weekDay == 6) return "Sat";
    if (weekDay == 7) return "Sun";
    return "";
  }

  static bool _isSameDate(DateTime other) {
    DateTime now = DateTime.now();
    return now.year == other.year &&
        now.month == other.month &&
        now.day == other.day;
  }

  static List<Schedule> sample() {
    DateTime today = DateTime.now();
    DateTime firstDay = DateTime(today.year, today.month, 1);
    //todo: month can be 12.
    DateTime lastDayOfMonth = DateTime(today.year, today.month + 1, 0);
    List<Schedule> schedules = List.empty();
    for (int i = 0; i <= lastDayOfMonth.difference(firstDay).inDays; i++) {
      DateTime now = firstDay.add(Duration(days: i));
      bool isToday = _isSameDate(now);
      schedules.add(
          Schedule(date: now.day, day: _getDay(now.weekday), isToday: isToday));
    }
    return schedules;
  }
}
