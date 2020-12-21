import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotification extends StatefulWidget {
  @override
  _MyNotificationState createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
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
      title: Text("Notifications",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
      titleSpacing: 0,
    ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 2, separatorBuilder: (context,item)=>Divider(),itemBuilder: (BuildContext context, int index) {
          return Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigoAccent,
                  child: Text('${index+1}'),
                  foregroundColor: Colors.white,
                ),
                title: Text('New customer'),
                subtitle: Text('Person A wants you to be his new customer. Accept him to add his as your customer'),
              ),
            ),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Accept',
                color: Colors.green,
                icon: Icons.check,
                onTap: () {},
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {},
              ),
            ],
          );
        },),
      ),
    );
  }
}
