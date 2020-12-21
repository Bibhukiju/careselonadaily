import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_stack_card/flutter_stack_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color/random_color.dart';
import 'package:table_calendar/table_calendar.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  RandomColor randomColor = RandomColor();
  CalendarController _controller;
  List<Color> myColor = [Colors.deepPurple[500],Colors.teal[500]];
  @override
  void initState() {
    _controller = CalendarController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0,),
              Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Bipin',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.9)),),

                  Text('You have 8 customers today',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.7)),),
                ],
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Leaves Remaining: 5',style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 18),),
                            Container(padding: EdgeInsets.symmetric(vertical: 11),width: 130,decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff002366),)
                                ,borderRadius: BorderRadius.all(Radius.circular(7))),
                              child: Center(child: Text('Request Leave',style: GoogleFonts.lato(fontWeight: FontWeight.bold),)),)
                          ],),
                      ),
                      TableCalendar(calendarController: _controller
                        ,startingDayOfWeek: StartingDayOfWeek.monday,
                        weekendDays: [
                          7
                        ],
                        initialCalendarFormat: CalendarFormat.twoWeeks,
                        calendarStyle: CalendarStyle(
                          selectedColor: Color(0xff002366),
                          todayColor: Color(0xff4c5d7d),
                          markersColor: Colors.brown[700],
                          outsideDaysVisible: false,
                        ),
                        daysOfWeekStyle: DaysOfWeekStyle(
                          weekdayStyle: TextStyle(
                              color: Color(0xff30384c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                          weekendStyle:  TextStyle(
                              color: Color(0xff30384c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          formatButtonShowsNext: false,
                          titleTextStyle: TextStyle(
                              color: Color(0xff30384c),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Schedule',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.9)),),
                    Text('View All',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blue.withOpacity(0.9)),),
                  ],
                ),),
              Container(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: StackCard.builder(
                      itemCount: 8,
                      displayIndicator: true,
                      stackType: StackType.right,
                      displayIndicatorBuilder:
                      IdicatorBuilder(displayIndicatorActiveColor: Colors.orange,displayIndicatorColor: Colors.orange[100],displayIndicatorSize: 12),
                      onSwap: (index) {
                        print("Page change to $index");
                      },
                      itemBuilder: (context, index) {
                       return Container(
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                         decoration: BoxDecoration(
                             color: (index%2==0)?myColor[0]:myColor[1],
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: <Widget>[
                             Row(
                               children: [
                                 CircleAvatar(
                                     radius: 40,
                                     backgroundColor: Colors.grey[500],
                                     backgroundImage: NetworkImage('https://img.freepik.com/free-photo/handsome-businessman-eyeglasses-is-looking-camera_85574-6215.jpg?size=626&ext=jpg')
                                 ),
                                 SizedBox(width: 5,),
                                 Container(
                                   width: 3,
                                   color: Colors.blueGrey,
                                   height: 90,
                                 ),
                                 SizedBox(width: 5,),
                                 Expanded(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Bipin Bhandari",style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 20),),
                                       Padding(
                                         padding: const EdgeInsets.fromLTRB(0, 2, 15, 5),
                                         child: Text("New,baneshowr,\nKathmandu,Nepal",style: GoogleFonts.lato(color: Colors.white,fontSize: 16),),
                                       ),
                                       Text("9866189986",style: GoogleFonts.lato(color: Colors.white,fontSize: 14),),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(height: 15,),
                             FlatButton(
                               padding: EdgeInsets.all(0),
                               onPressed: (){

                               },
                               child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.7),borderRadius: BorderRadius.circular(12)),
                                 height: 40,
                                 width: 150,
                                 child: Center(child: Text("Mark Attendance",style: GoogleFonts.hammersmithOne(color: Colors.white),)),
                               ),
                             ),
                           ],
                         ),
                       );
                      }
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
