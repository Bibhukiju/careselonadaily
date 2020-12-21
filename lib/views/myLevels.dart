import 'package:CarsellonaDaily/SDUtils/SDStyle.dart';
import 'package:CarsellonaDaily/views/clientPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'customer.dart';
class myLevels extends StatefulWidget {
  @override
  _myLevelsState createState() => _myLevelsState();
}

class _myLevelsState extends State<myLevels> {
  List<charts.Series<Task, String>> _taskPieData;

  _generateData() {
    var taskData = [
      Task(task: 'Completed', value: 82.0, color: Colors.blue),
      Task(task: 'Remaining', value: 22.0, color: Colors.deepOrangeAccent),
    ];

    _taskPieData.add(
      charts.Series(
        data: taskData,
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.value,
        colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.color),
        id: 'Montlhy',
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    _taskPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(CupertinoIcons.back,color: Colors.black.withOpacity(0.7),)),
        title: Row(
          children: [
            Text("My Levels",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
            SizedBox(width: 20,),
          ],
        ),
        titleSpacing: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              padding: EdgeInsets.only(
                top: 5,
                left: 20,
                right: 020,
              ),
              decoration: boxDecorations(
                showShadow: true,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Level Progress',
                            style: boldTextStyle(size: 16)),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                            "Level 1",
                            style: boldTextStyle(size: 16),
                            ),
                            SizedBox(width: 5,),
                            Container(height: 25,width: 25,child: Image.asset('images/copper.png'),),
                          ],
                        )
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 125,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: charts.PieChart(
                            _taskPieData,
                            animate: true,
                            animationDuration: Duration(seconds: 1),
                            behaviors: [
                              charts.DatumLegend(
                                position: charts.BehaviorPosition.end,
                                outsideJustification: charts
                                    .OutsideJustification.middleDrawArea,
                                horizontalFirst: false,
                                showMeasures: true,
                                cellPadding:
                                new EdgeInsets.only(right: 4.0, top: 25),
                                legendDefaultMeasure:
                                charts.LegendDefaultMeasure.lastValue,
                                measureFormatter: (num value) {
                                  return value == null ? '-' : '$value%';
                                },
                                entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.black,
                                  fontSize: 16,
                                ),
                              )
                            ],
                            defaultRenderer: charts.ArcRendererConfig(
                              arcWidth: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text(' My, Referrals',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.9)),),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    width: MediaQuery.of(context).size.width/3,
                    decoration: boxDecorations(
                      showShadow: true,
                    ),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "16",
                            style:
                            new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          footer: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text(
                                  "Ramesh",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('+19',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('-3',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    width: MediaQuery.of(context).size.width/3,
                    decoration: boxDecorations(
                      showShadow: true,
                    ),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "16",
                            style:
                            new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          footer: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text(
                                  "Ramesh",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('+19',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('-3',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    width: MediaQuery.of(context).size.width/3,
                    decoration: boxDecorations(
                      showShadow: true,
                    ),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "16",
                            style:
                            new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          footer: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text(
                                  "Ramesh",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('+19',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('-3',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    width: MediaQuery.of(context).size.width/3,
                    decoration: boxDecorations(
                      showShadow: true,
                    ),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "16",
                            style:
                            new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          footer: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text(
                                  "Ramesh",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('+19',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 43,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                                      ),
                                      child: Center(child: Text('-3',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 22),)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Container(height: 80, decoration: boxDecorations(
                  showShadow: true,
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>clientPage()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(CupertinoIcons.house_alt_fill,color: Colors.deepPurple,size: 35,),
                      Text("Cleaner",style: GoogleFonts.copse(color: Colors.deepPurple.withOpacity(0.8),fontSize: 18),),
                    ],
                  ),
                ),
                )
                ),
                SizedBox(width: 30,),
                Expanded(child: Container(height: 80, decoration: boxDecorations(
                  showShadow: true,
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>customer()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(CupertinoIcons.person,color: Colors.deepPurple,size: 35,),
                    Text("Customer",style: GoogleFonts.copse(color: Colors.deepPurple.withOpacity(0.8),fontSize: 18),),
                  ],),
                ),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Task {
  String task;
  double value;
  Color color;

  Task({this.task, this.value, this.color});
}
