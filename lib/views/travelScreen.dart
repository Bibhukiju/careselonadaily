import 'package:CarsellonaDaily/SDUtils/SDColors.dart';
import 'package:CarsellonaDaily/SDUtils/SDStyle.dart'as sD;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
class TravelScreen extends StatefulWidget {
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  int _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              child: CupertinoSlidingSegmentedControl(
                  children: {
                    0: Container(
                        padding: EdgeInsets.all(13), child: Text('Customer', style: primaryTextStyle(color: _sliding== 0 ? blackColor: grey),)),
                    1: Container(
                        padding: EdgeInsets.all(8), child: Text('Demo',style: primaryTextStyle(color: _sliding== 1 ? blackColor: grey))),
                   },
                  groupValue: _sliding,
                  onValueChanged: (newValue) {
                    setState(() {
                      _sliding = newValue;
                    });
                  }),
            ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _sliding==1?Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Demo Date',style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.6)),),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: sD.boxDecorations(
                        showShadow: true,
                      ),
                      child: TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Select Date',
                          hintStyle: secondaryTextStyle(
                              color: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(' From',style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.6)),),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: sD.boxDecorations(
                        showShadow: true,
                      ),
                      child: TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Location',
                          hintStyle: secondaryTextStyle(
                              color: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(' To',style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.6)),),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: sD.boxDecorations(
                        showShadow: true,
                      ),
                      child: TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Location',
                          hintStyle: secondaryTextStyle(
                              color: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(' Total KM',style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.6)),),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: sD.boxDecorations(
                        showShadow: true,
                      ),
                      child: TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Kilometers',
                          hintStyle: secondaryTextStyle(
                              color: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        color: sdPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 1,
                        onPressed: () {
                          // Navigator.pop(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => sdRegisterScreen(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: boldTextStyle(
                              size: 16,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ):Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(width: 10),
                      Container(
                        alignment: Alignment.center,
                        width: 20,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(width: 1, color: Colors.grey[300], height: 64),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.deepPurple[400],
                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: sD.boxDecorations(
                              showShadow: true,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.only(left: 16, bottom: 5, top: 5, right: 16),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  hint: Text(
                                    'Choose your customer',
                                    style: secondaryTextStyle(
                                        color: sdTextSecondaryColor.withOpacity(0.6)),
                                  ),
                                  items: <String>['Java Khan', 'Swift Akbal', 'Dummy Singh', 'Python Sharma']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(width: 5),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(width: 10),
                      Container(
                        alignment: Alignment.center,
                        width: 20,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(width: 1, color: Colors.grey[300], height: 64),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.deepPurple[400],
                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: sD.boxDecorations(
                              showShadow: true,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.only(left: 16, bottom: 5, top: 5, right: 16),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  hint: Text(
                                    'Choose your customer',
                                    style: secondaryTextStyle(
                                        color: sdTextSecondaryColor.withOpacity(0.6)),
                                  ),
                                  items: <String>['Java Khan', 'Swift Akbal', 'Dummy Singh', 'Python Sharma']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(width: 5),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(width: 10),
                      Container(
                        alignment: Alignment.center,
                        width: 20,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(width: 1, color: Colors.grey[300], height: 64),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.deepPurple[400],
                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: sD.boxDecorations(
                              showShadow: true,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.only(left: 16, bottom: 5, top: 5, right: 16),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  hint: Text(
                                    'Choose your customer',
                                    style: secondaryTextStyle(
                                        color: sdTextSecondaryColor.withOpacity(0.6)),
                                  ),
                                  items: <String>['Java Khan', 'Swift Akbal', 'Dummy Singh', 'Python Sharma']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(width: 5),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                    margin:
                    EdgeInsets.only(bottom: 0, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: RaisedButton(
                      color: sdPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 1,
                      onPressed: () {
                        // Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => sdRegisterScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Submit",
                        textAlign: TextAlign.center,
                        style: boldTextStyle(
                            size: 16,
                            color: Colors.white,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
