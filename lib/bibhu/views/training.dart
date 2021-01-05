import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:pasal/controllers/calender_controllder.dart';

class CalenderPage extends StatelessWidget {
  final calenderController = Get.put(CalenderControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          FlatButton(
              child: Row(
                children: [Icon(Icons.add), Text("Add Training")],
              ),
              onPressed: null)
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              child: TableCalendar(
                calendarController: calenderController.calendarController,
                onDaySelected: calenderController.updateSelectedDate,
                weekendDays: [7],
                events: calenderController.events,
                calendarStyle: CalendarStyle(
                    weekendStyle: TextStyle(color: Colors.red),
                    selectedColor: Colors.red,
                    markersColor: Colors.teal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Events",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(height: 400, child: buildEventList())
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildEventList() {
  final calenderController = Get.put(CalenderControllers());
  var selectedEvents = calenderController.events[DateTime.utc(2020)] ?? [];
  print(calenderController.selectedDate);
  return ListView(
    children: selectedEvents
        .map((event) => Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: ListTile(
                title: Text(event),
                onTap: () => print('$event tapped!'),
              ),
            ))
        .toList(),
  );
}
