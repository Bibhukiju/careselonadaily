import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
class myWallet extends StatelessWidget {
  List image = [
    "https://media.gettyimages.com/photos/portrait-of-smiling-young-man-wearing-eyeglasses-picture-id985138634?s=612x612",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Outdoors-man-portrait_%28cropped%29.jpg/1200px-Outdoors-man-portrait_%28cropped%29.jpg",
    "https://image.freepik.com/free-photo/close-up-portrait-man-looking-camera-outdoors_23-2148283854.jpg",
    "https://media.istockphoto.com/photos/mature-handsome-business-man-picture-id1040308104?k=6&m=1040308104&s=612x612&w=0&h=l_bUE9cP9Hj1UmxPq4i-gMXkDF1GzfO7Eel7iB4Kc74="
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(90)),
                    depth: 3,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black38,
                    intensity: 0.8,
                    lightSource: LightSource.topLeft,
                    color: Color(0xfff8f8f8)
                ),
                child: Container(
                  height: 175,
                  width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Image.asset('images/bg.png',height: 45,width: 45,),
                      SizedBox(height: 7,),
                      Text('\$ 18000',style: GoogleFonts.lato(
                        fontSize: 33,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 7,),
                      Text('TOTAL BALANCE',style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54
                      ),)
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 35,
            ),Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 3,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black38,
                    intensity: 0.8,
                    lightSource: LightSource.topLeft,
                    color: Color(0xfff8f8f8)
                ),
                child: Container(height: 60,width:MediaQuery.of(context).size.width,child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5,),
                    Container(
                      width: 82,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('images/bg1.png',height: 50,width: 50,)
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('Total Revenue',style: GoogleFonts.alef(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black54),),
                    SizedBox(width: 5,),
                    Expanded(child: Align(alignment: Alignment.centerRight,child: Text('\$ 45000',style: GoogleFonts.acme(fontSize: 17,color: Colors.black),))),
                    SizedBox(width:15,),
                  ],
                ),),
            ), SizedBox(
              height: 15,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 3,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black38,
                  intensity: 0.8,
                  lightSource: LightSource.topLeft,
                  color: Color(0xfff8f8f8)
              ),
              child: Container(height: 60,width:MediaQuery.of(context).size.width,child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Container(width:82,child: Icon(Icons.food_bank,size: 49,color: Colors.purple[800],)),
                  SizedBox(width: 5,),
                  Text('Amount Withdrawn',style: GoogleFonts.alef(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black54),),
                  SizedBox(width: 5,),
                  Expanded(child: Align(alignment: Alignment.centerRight,child: Text('\$ 45000',style: GoogleFonts.acme(fontSize: 17,color: Colors.black),))),
                  SizedBox(width:15,),
                ],
              ),),
            ),
            SizedBox(
              height: 15,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 3,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black38,
                  intensity: 0.8,
                  lightSource: LightSource.topLeft,
                  color: Color(0xfff8f8f8)
              ),
              child: Container(height: 60,width:MediaQuery.of(context).size.width,child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Container(width:82,child: Icon(Icons.supervisor_account_rounded,size: 49,color: Colors.purple[800],)),
                  SizedBox(width: 5,),
                  Text('Total referrals',style: GoogleFonts.alef(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black54),),
                  SizedBox(width: 5,),
                  Expanded(child: Align(alignment: Alignment.centerRight,child: Text('10',style: GoogleFonts.acme(fontSize: 17,color: Colors.black),))),
                  SizedBox(width:15,),
                ],
              ),),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                        depth: 3,
                        shadowLightColor: Colors.white,
                        shadowDarkColor: Colors.black38,
                        intensity: 0.8,
                        lightSource: LightSource.topLeft,
                        color: Color(0xfff8f8f8)
                    ),
                    child: Container(height: 125,width: 160,child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          width: 190.0,
                          height: 85.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage('images/bg2.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                          child: Align(alignment: Alignment.centerLeft,child: Text('Visa',style: GoogleFonts.acme(fontSize: 20,letterSpacing: 1.5),)),
                        ),
                      ],
                    ),)
                ),
                Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                        depth: 3,
                        shadowLightColor: Colors.white,
                        shadowDarkColor: Colors.black38,
                        intensity: 0.8,
                        lightSource: LightSource.topLeft,
                        color: Color(0xfff8f8f8)
                    ),
                    child: Container(height: 125,width: 160,child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          width: 190.0,
                          height: 85.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage('images/bg4.jpg')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                          child: Align(alignment: Alignment.centerLeft,child: Text('Debit',style: GoogleFonts.acme(fontSize: 20,letterSpacing: 1.5),)),
                        ),
                      ],
                    ),)
                ),
              ],
            )

          ],
        ),
      )),
    );
  }
}
