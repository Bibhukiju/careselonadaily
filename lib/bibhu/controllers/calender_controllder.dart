import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderControllers extends GetxController {
  final toShow = false.obs;
  final selectedDate = DateTime.now().obs;
  CalendarController calendarController;
  final events = {
    DateTime.now().subtract(Duration(days: 27)): ['Event A1'],
    DateTime.now(): ['Event A2', 'Event B2', 'Event C2', 'Event D2'],
    DateTime.now().subtract(Duration(days: 16)): ['Event A3', 'Event B3'],
    DateTime.now().subtract(Duration(days: 10)): [
      'Event A4',
      'Event B4',
      'Event C4'
    ],
    DateTime.now().subtract(Duration(days: 4)): [
      'Event A5',
      'Event B5',
      'Event C5'
    ],
    DateTime.now().subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
    DateTime.now(): ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
    DateTime.now().add(Duration(days: 1)): [
      'Event A8',
      'Event B8',
      'Event C8',
      'Event D8'
    ],
    DateTime.now().add(Duration(days: 3)):
        Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
    DateTime.now().add(Duration(days: 7)): [
      'Event A10',
      'Event B10',
      'Event C10'
    ],
    DateTime.now().add(Duration(days: 11)): ['Event A11', 'Event B11'],
    DateTime.now().add(Duration(days: 17)): [
      'Event A12',
      'Event B12',
      'Event C12',
      'Event D12'
    ],
    DateTime.utc(2020).add(Duration(days: 22)): ['Event A13', 'Event B13'],
    DateTime.utc(2020): ['Event A14', 'Event B14', 'Event C14'],
  }.obs;

  @override
  void onInit() {
    selectedDate(DateTime.now());
    calendarController = CalendarController();
    super.onInit();
  }

  @override
  void dispose() {
    calendarController.dispose();
    super.dispose();
  }

  void showEvents() {
    if (toShow.value == true) {
      toShow(false);
    } else {
      toShow(true);
    }
  }

  updateSelectedDate(DateTime pickedDate, List events, List holidays) {
    selectedDate(DateTime.now());
    print(selectedDate);
    selectedDate(pickedDate);
    print(selectedDate);
  }
}
