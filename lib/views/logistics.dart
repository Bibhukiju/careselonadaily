import 'package:CarsellonaDaily/SDUtils/CWSlidingSegmentedControlScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class Logistics extends StatefulWidget {
  @override
  _LogisticsState createState() => _LogisticsState();
}

class _LogisticsState extends State<Logistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(' My, Logistics',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.9)),),
            Text(' Select your respective logistics',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.7)),),
            SizedBox(height: 25,),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 10,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black26,
                  intensity: 1,
                  lightSource: LightSource.topLeft,
                  color: Color(0xfff8f8f8)
              ),
              child: Container(height: 160,width:MediaQuery.of(context).size.width,decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver),
                    image: AssetImage('images/carcarekit.jpg'),
                    fit: BoxFit.fill),
              ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Car-Care Kit",style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 5,),
                      Text('Request your car-care kit now!',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 16)),
                      SizedBox(height: 5,),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CWSlidingSegmentedControlScreen(name: "Car-Care Kit",)));
                        },
                        child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.7),borderRadius: BorderRadius.circular(12)),
                          height: 40,
                          width: 140,
                          child: Center(child: Text("Request Now",style: GoogleFonts.hammersmithOne(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),),
            ),
            SizedBox(height: 25,),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 10,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black26,
                  intensity: 1,
                  lightSource: LightSource.topLeft,
                  color: Color(0xfff8f8f8)
              ),
              child: Container(height: 160,width:MediaQuery.of(context).size.width,decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver),
                    image: AssetImage('images/mircofiber.jpg'),
                    fit: BoxFit.fill),
              ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Micro-fiber Cloth",style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 5,),
                      Text('Request your microfiber cloth now!',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 16)),
                      SizedBox(height: 5,),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CWSlidingSegmentedControlScreen(name: "Micro-fiber Cloth",)));
                        },
                        child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.7),borderRadius: BorderRadius.circular(12)),
                          height: 40,
                          width: 140,
                          child: Center(child: Text("Request Now",style: GoogleFonts.hammersmithOne(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),),
            ),
            SizedBox(height: 25,),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 10,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black26,
                  intensity: 1,
                  lightSource: LightSource.topLeft,
                  color: Color(0xfff8f8f8)
              ),
              child: Container(height: 160,width:MediaQuery.of(context).size.width,decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver),
                    image: AssetImage('images/uni.jpg'),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Uniform (T-Shirt)",style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 25),),
                    SizedBox(height: 5,),
                    Text('Request your T-shirt now!',style: GoogleFonts.hammersmithOne(color: Colors.white,fontSize: 16)),
                    SizedBox(height: 5,),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CWSlidingSegmentedControlScreen(name: "Uniform (T-Shirt)",)));
                      },
                      child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.7),borderRadius: BorderRadius.circular(12)),
                      height: 40,
                        width: 140,
                        child: Center(child: Text("Request Now",style: GoogleFonts.hammersmithOne(color: Colors.white),)),
                      ),
                    ),
                  ],
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
