import 'package:CarsellonaDaily/SDUtils/SDColors.dart';
import 'package:CarsellonaDaily/SDUtils/SDStyle.dart';
import 'package:CarsellonaDaily/SDUtils/codePicker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SDVerificationScreen.dart';
class sdRegisterScreen extends StatefulWidget {
  @override
  _sdRegisterScreenState createState() => _sdRegisterScreenState();
}

class _sdRegisterScreenState extends State<sdRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 130,
              left: 25,
              right: 25,
            ),
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Enter your phone number',
                  style: boldTextStyle(size: 25),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'We need your contact number to proceed further with Carselona Daily.',
                  style: secondaryTextStyle(
                      size: 16,
                      textColor: sdTextSecondaryColor.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  decoration: boxDecorations(
                    radius: 5,
                    showShadow: true,
                  ),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CountryCodePicker(
                        onChanged: print,
                        padding: EdgeInsets.all(0),
                        showFlag: true,
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: sdViewColor,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                          ),
                          onChanged: (value) {
                            if(value.length==10){
                              FocusScope.of(context)
                                  .unfocus();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 85,
                ),
                SDButton(
                  textContent: "CONTINUE",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SDVerficationScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
