import 'package:CarsellonaDaily/SDUtils/SDColors.dart';
import 'package:CarsellonaDaily/SDUtils/SDStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class requestReferralCode extends StatefulWidget {
  @override
  _requestReferralCodeState createState() => _requestReferralCodeState();
}

class _requestReferralCodeState extends State<requestReferralCode> {
  List<String> _locations = ['Mumbai', 'Punjab', 'Delhi', 'Chennai'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    changeStatusColor(sdAppBackground);
    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 25, right: 25, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Submit your details \nto get a referral code',
                  style: boldTextStyle(size: 22),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  ' Personal details',
                  style: secondaryTextStyle(size: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  decoration: boxDecorations(
                    showShadow: true,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Full name',
                          hintStyle: secondaryTextStyle(
                              textColor: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                      ),
                      TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'E-mail address',
                          hintStyle: secondaryTextStyle(
                              textColor: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                      ),
                      TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Contact number',
                          hintStyle: secondaryTextStyle(
                              textColor: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Residence details',
                      style: secondaryTextStyle(size: 16),
                    ),
                    Text(
                      ' Auto detect location ',
                      style:
                          secondaryTextStyle(size: 14, textColor: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  decoration: boxDecorations(
                    showShadow: true,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: sdTextSecondaryColor.withOpacity(0.2),
                        cursorWidth: 1,
                        autocorrect: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Address line',
                          hintStyle: secondaryTextStyle(
                              textColor: sdTextSecondaryColor.withOpacity(0.6)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 16, top: 16, right: 16),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16, bottom: 5, top: 5, right: 16),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  hint: Text(
                                    'Choose city..',
                                    style: secondaryTextStyle(
                                        textColor: sdTextSecondaryColor
                                            .withOpacity(0.6)),
                                  ),
                                  items: <String>['A', 'B', 'C', 'D']
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
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.deepPurple,
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Zip code",
                                hoverColor: Colors.blueAccent,
                                hintStyle: secondaryTextStyle(
                                    textColor:
                                        sdTextSecondaryColor.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  ' Logistics details',
                  style: secondaryTextStyle(size: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  decoration: boxDecorations(
                    showShadow: true,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 16, bottom: 5, top: 5, right: 16),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        hint: Text(
                          'Choose T-shirt size..',
                          style: secondaryTextStyle(
                              textColor: sdTextSecondaryColor.withOpacity(0.6)),
                        ),
                        items: <String>['X', 'XL', 'XXL', 'LXX']
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
              ],
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).copyWith().size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cancel',
                  style: secondaryTextStyle(),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                      decoration: boxDecorations(radius: 4, bgColor: sdPrimaryColor),
                      child: Center(
                        child: Text('Submit', style: boldTextStyle(size: 12, textColor: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
