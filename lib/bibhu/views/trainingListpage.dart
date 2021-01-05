import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/models/events_model.dart';
import 'package:pasal/views/training.dart';

class TrainingList extends StatelessWidget {
  final List<TrainingEvents> trainingEvents = [
    TrainingEvents(name: "Bipin", dateTime: DateTime.now(), status: "pending"),
    TrainingEvents(
        name: "Bibhu kiju", dateTime: DateTime.now(), status: "pending"),
    TrainingEvents(name: "Bishal", dateTime: DateTime.now(), status: "Running"),
    TrainingEvents(
        name: "Ram bhandari",
        dateTime: DateTime.now(),
        status: "Not confiremed")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Chip(
              label: Text("Lavel 1"),
              backgroundColor: Colors.white,
            ),
            Chip(
              label: Text("Lavel 2"),
              backgroundColor: Colors.yellow,
            ),
            Chip(
              label: Text("Lavel 3"),
              backgroundColor: Colors.red,
            )
          ],
        ),
        DataTable(
          columns: [
            DataColumn(
                label: Text('Name',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Date',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Status',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: trainingEvents
              .map((e) => DataRow(cells: [
                    DataCell(Text(e.name)),
                    DataCell(Text(e.dateTime.toString().split(" ")[0])),
                    DataCell(Text(e.status))
                  ]))
              .toList(),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Get.to(CalenderPage()), label: Text("Calender")),
    );
  }
}
