
import 'package:CarsellonaDaily/SDUtils/SDColors.dart';
import 'package:CarsellonaDaily/SDUtils/SDStyle.dart';
import 'package:CarsellonaDaily/SDUtils/my_text.dart';
import 'package:CarsellonaDaily/data/my_colors.dart';
import 'package:CarsellonaDaily/model/bottom_nav.dart';
import 'package:CarsellonaDaily/views/T1Profile.dart';
import 'package:CarsellonaDaily/views/certificateShow.dart';
import 'package:CarsellonaDaily/views/customer.dart';
import 'package:CarsellonaDaily/views/homePage.dart';
import 'package:CarsellonaDaily/views/logistics.dart';
import 'package:CarsellonaDaily/views/myLevels.dart';
import 'package:CarsellonaDaily/views/myWallet.dart';
import 'package:CarsellonaDaily/views/notification.dart';
import 'package:CarsellonaDaily/views/travelScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCustomBottomNavBar extends StatefulWidget {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', CupertinoIcons.home, null),
    BottomNav('wallet', CupertinoIcons.creditcard_fill, null),
    BottomNav('Logistics', CupertinoIcons.tray_arrow_down, null),
    BottomNav('Travel', Icons.directions_bike_sharp, null)
  ];

  @override
  BottomNavigationBasicState createState() => BottomNavigationBasicState();
}

class BottomNavigationBasicState extends State<myCustomBottomNavBar>
    with TickerProviderStateMixin<myCustomBottomNavBar> {
  int currentIndex = 0;
  BuildContext ctx;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BottomNav curItem = widget.itemsNav[currentIndex];
    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(
                CupertinoIcons.text_alignleft,
                color: Colors.black.withOpacity(0.7),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNotification()));
                },
                icon: Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22), topRight: Radius.circular(22))),
          height: 70,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: MyColors.grey_60,
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: widget.itemsNav.map((BottomNav d) {
              return BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(d.icon),
                title: Text(d.title),
              );
            }).toList(),
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 30),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: MyColors.grey_20,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/avt.png'),
                        ),
                      ),
                      Container(height: 7),
                      Text("Rampal Yadav",
                          style: MyText.body2(context).copyWith(
                              color: Colors.blueGrey[800],
                              fontWeight: FontWeight.w500)),
                      Container(height: 4),
                      Text("+918246241234",
                          style: MyText.body2(context).copyWith(
                              color: Colors.blueGrey[800],
                              fontWeight: FontWeight.w300)),
                      Container(height: 2),
                    ],
                  ),
                ),
                Container(height: 8),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>myLevels()));
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.addchart, color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("My Levels",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
                Container(height: 10),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.assistant,
                            color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("Training",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
                Container(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>customer()));
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.wc_rounded, color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("Customer Leads",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
                Container(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>certificateShow()));
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.request_page_outlined, color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("My Certificates",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
                Container(height: 10),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>T1Profile()));
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.account_circle_rounded,
                            color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("My profile",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
                Container(height: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.power_settings_new,
                            color: MyColors.grey_20, size: 20),
                        Container(width: 20),
                        Expanded(
                            child: Text("Logout",
                                style: MyText.body2(context)
                                    .copyWith(color: MyColors.grey_80))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: currentIndex == 1
            ? myWallet()
            : currentIndex == 2
                ? Logistics()
                : currentIndex == 3
                    ? TravelScreen()
                    : homePage());
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Select your weekday off',
            style: boldTextStyle(size: 18, textColor: Colors.black54),
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue[200]),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 5, top: 5, right: 16),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: Colors.white,
                  hint: Text(
                    'Select a day...',
                    style: secondaryTextStyle(
                        textColor: sdTextSecondaryColor.withOpacity(0.8)),
                  ),
                  items: <String>[
                    'Sun',
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat'
                  ].map((String value) {
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
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'You understand that the selected day will be your leave day for the weekend',
              style: secondaryTextStyle(
                  size: 16, textColor: sdTextSecondaryColor.withOpacity(0.7)),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration: new BoxDecoration(
              color: Colors.blue[300],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(24),
            ),
            alignment: Alignment.center,
            child: Text(
              'Submit',
              style: boldTextStyle(size: 25, textColor: Colors.white),
            ),
          )
        ],
      ));
}
