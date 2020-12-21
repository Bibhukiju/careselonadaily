import 'package:CarsellonaDaily/SDUtils/SDStyle.dart' as sdd;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class customer extends StatefulWidget {
  @override
  _customerState createState() => _customerState();
}

class _customerState extends State<customer> {
  int _sliding = 0;
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
            Text("Customers",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
            SizedBox(width: 20,),
          ],
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: CupertinoSlidingSegmentedControl(
                children: {
                  0: Container(
                      padding: EdgeInsets.all(13), child: Text('Premium', style: primaryTextStyle(color: _sliding== 0 ? blackColor: grey),)),
                  1: Container(
                      padding: EdgeInsets.all(8), child: Text('Classic',style: primaryTextStyle(color: _sliding== 1 ? blackColor: grey))),
                  2: Container(
                      padding: EdgeInsets.all(8), child: Text('Basic',style: primaryTextStyle(color: _sliding== 2 ? blackColor: grey))),
                },
                groupValue: _sliding,
                onValueChanged: (newValue) {
                  setState(() {
                    _sliding = newValue;
                  });
                }),
          ),
          Divider(),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: sdd.boxDecorations(
                showShadow: true,
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  CircleAvatar(radius: 30,backgroundImage: AssetImage('images/avt.png'),),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hyundai Car",style: GoogleFonts.copse(fontSize: 17),),
                      SizedBox(height: 3,),
                      Text("Sudip Sharama",style: GoogleFonts.copse(fontSize: 17),),
                      SizedBox(height: 5,),
                      Text('+9779866189986',style: GoogleFonts.lato(),),
                      SizedBox(height: 5,),
                      Text("Time: 8:00 am - 9:00 am",style: GoogleFonts.lato(color: Colors.blue),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Container(width: 3,height: 100,color: Colors.blueGrey,),
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 10.0,
                    animation: true,
                    percent: 0.7,
                    center: Center(
                      child: new Text(
                        "20 \ndays",
                        style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
