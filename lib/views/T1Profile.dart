import 'package:CarsellonaDaily/SDUtils/T1Colors.dart';
import 'package:CarsellonaDaily/SDUtils/T1Constant.dart';
import 'package:CarsellonaDaily/SDUtils/T1Extension.dart';
import 'package:CarsellonaDaily/SDUtils/T1Strings.dart';
import 'package:CarsellonaDaily/SDUtils/T1Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class T1Profile extends StatelessWidget {
  static var tag = "/T1Profile";

  Widget counter(String counter, String counterName) {
    return Column(
      children: <Widget>[
        profile(counter),
        text(counterName,
            textColor: t1TextColorPrimary,
            fontSize: textSizeMedium,
            fontFamily: fontMedium)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t1_app_background);
    final profileImg = new Container(
      margin: new EdgeInsets.symmetric(horizontal: 16.0),
      alignment: FractionalOffset.center,
      child: new CircleAvatar(
        backgroundImage: AssetImage('images/avt.png'),
        radius: 50,
      ),
    );
    final profileContent = new Container(
      margin: new EdgeInsets.only(top: 55.0),
      decoration: boxDecoration(radius: 10, showShadow: true),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            text("Rampal Yadav",
                textColor: t1TextColorPrimary,
                fontSize: textSizeNormal,
                fontFamily: fontMedium),
            text("Yadavrampal@gmail.com",
                textColor: t1_colorPrimary,
                fontSize: textSizeMedium,
                fontFamily: fontMedium),
            Padding(
              padding: const EdgeInsets.all(16),
              child: view(),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
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
            Text("My Profile",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
            SizedBox(width: 20,),
          ],
        ),
        titleSpacing: 0,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 10, left: 2, right: 2),
            physics: ScrollPhysics(),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Stack(
                      children: <Widget>[profileContent, profileImg],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: boxDecoration(radius: 10, showShadow: true),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 8),
                          rowHeading(t1_lbl_personal),
                          SizedBox(height: 16),
                          profileText('Rampal Yadav'),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                            child: view(),
                          ),
                          SizedBox(height: 8),
                          profileText("Male"),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                            child: view(),
                          ),
                          SizedBox(height: 8),
                          profileText("Anderi-Ghat Mumbai, India", maxline: 2),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: boxDecoration(radius: 10, showShadow: true),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 8),
                          rowHeading(t1_lbl_contacts),
                          SizedBox(height: 16),
                          profileText("+91 36982145"),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                            child: view(),
                          ),
                          SizedBox(height: 8),
                          profileText("yadavrampal@gmail.com"),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
