import 'package:CarsellonaDaily/SDUtils/SDStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class clientPage extends StatefulWidget {
  @override
  _clientPageState createState() => _clientPageState();
}

class _clientPageState extends State<clientPage> {
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
            Text("Cleaner",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
            SizedBox(width: 20,),
          ],
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: boxDecorations(
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

                      Text("Sudip Sharama",style: GoogleFonts.copse(fontSize: 17),),
                      SizedBox(height: 5,),
                      Text('+9779866189986',style: GoogleFonts.lato(),),
                      SizedBox(height: 5,),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Container(width: 3,height: 80,color: Colors.blueGrey,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/copper.png',height: 50,width: 50,),
                      Text("Copper\nLeague",style: GoogleFonts.copse(fontSize: 15),)
                    ],
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
