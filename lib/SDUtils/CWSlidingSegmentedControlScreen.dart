
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'SDColors.dart';

class CWSlidingSegmentedControlScreen extends StatefulWidget {
  CWSlidingSegmentedControlScreen({@required this.name});
  String name;
  @override
  CWSlidingSegmentedControlScreenState createState() =>
      CWSlidingSegmentedControlScreenState();
}

class CWSlidingSegmentedControlScreenState
    extends State<CWSlidingSegmentedControlScreen> {
  int _sliding = 0;
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(CupertinoIcons.back,color: Colors.black.withOpacity(0.7),)),
          title: Text(widget.name,style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
          titleSpacing: 0,
           ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                  Text('40',style: GoogleFonts.hammersmithOne(fontSize: 30),),
                  Text('Received',style: GoogleFonts.nunito(),),
                ],
              )  ,
                Column(
                  children: [
                    Text('20',style: GoogleFonts.hammersmithOne(fontSize: 30),),
                    Text('Delivered',style: GoogleFonts.nunito()),
                  ],
                ),
                Column(
                  children: [
                    Text('10',style: GoogleFonts.hammersmithOne(fontSize: 30),),
                    Text('Pending',style: GoogleFonts.nunito()),
                  ],
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              child: widget.name != "Car-Care Kit"?CupertinoSlidingSegmentedControl(
                  children: {
                    0: Container(
                        padding: EdgeInsets.all(13), child: Text('Arrival', style: primaryTextStyle(color: _sliding== 0 ? blackColor: grey),)),
                    1: Container(
                        padding: EdgeInsets.all(8), child: Text('Cleaner',style: primaryTextStyle(color: _sliding== 1 ? blackColor: grey))),
                  },
                  groupValue: _sliding,
                  onValueChanged: (newValue) {
                    setState(() {
                      _sliding = newValue;
                    });
                  }):CupertinoSlidingSegmentedControl(
                  children: {
                    0: Container(
                        padding: EdgeInsets.all(13), child: Text('Arrival', style: primaryTextStyle(color: _sliding== 0 ? blackColor: grey),)),
                    1: Container(
                        padding: EdgeInsets.all(8), child: Text('Cleaner',style: primaryTextStyle(color: _sliding== 1 ? blackColor: grey))),
                    2: Container(
                        padding: EdgeInsets.all(8), child: Text('Customer',style: primaryTextStyle(color: _sliding== 2 ? blackColor: grey))),
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
              child: Column(
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
                                  backgroundColor: Colors.lightBlue[100],
                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text("Kit Dispatched ",style: GoogleFonts.notoSans(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.65)),),
                                          ],
                                        ),
                                        Text("Your kit has been dispatched from our location.", style: GoogleFonts.notoSans(fontSize: 12,color: Colors.black.withOpacity(0.6))),
                                        Container(height: 5),
                                        Text("59 minutes ago", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                      ],
                                    )
                                  ],
                                ),
                              ],
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
                                  backgroundColor: Colors.lightBlue[400],
                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text("Kit In Transit ",style: GoogleFonts.notoSans(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.65)),),
                                          ],
                                        ),
                                        Text("Your kit is in transit in New-Delhi. We are \nexpecting your delivery in two days from now. \nThank-you ", style: GoogleFonts.notoSans(fontSize: 12,color: Colors.black.withOpacity(0.6))),
                                        Container(height: 5),
                                        Text("10 minutes ago", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(width: 5),
                    ],
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
            'Did you received logistic?',
            style: boldTextStyle(size: 18, color: Colors.black54),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'If you have received the logistics issued to you please select yes.',
              style: secondaryTextStyle(
                  size: 16, color: sdTextSecondaryColor.withOpacity(0.7)),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10,0,3,10),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: new BoxDecoration(
                      color: Colors.blue[300],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'No',
                      style: boldTextStyle(size: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(3,0,10,10),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: new BoxDecoration(
                      color: Colors.blue[300],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Yes',
                      style: boldTextStyle(size: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ));
}
