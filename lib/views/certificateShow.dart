import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class certificateShow extends StatefulWidget {
  @override
  _certificateShowState createState() => _certificateShowState();
}

class _certificateShowState extends State<certificateShow> {
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
            Text("My Certificates",style: GoogleFonts.hammersmithOne(color: Colors.black.withOpacity(0.7),fontSize: 21),),
            SizedBox(width: 20,),
          ],
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Image.asset('images/1.jpg',height: 250,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
            Divider(thickness: 2,),
            Image.asset('images/2.jpg',height: 250,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
            Divider(thickness: 2,),
            Image.asset('images/3.jpg',height: 250,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
          ],
        ),
      ),
    );
  }
}
