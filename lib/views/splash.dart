import 'package:flutter/material.dart';
import 'package:poster_pixel/views/home.dart';
import "dart:async";



class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return SplashState();
  }
}

class SplashState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTime();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:initScreen(context),
    );
  }

  startTime() async{
    var duration = new Duration(seconds:3);
    return new Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=>Home()
    )
    );

  }

  initScreen(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/giphy1.gif"),
            ),
            Padding (padding: EdgeInsets.only(top: 20.0)),
            RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Poster"),
                    TextSpan(text: 'Pixel', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  ],
                ),
            ),
            Padding (padding: EdgeInsets.only(top: 20.0)),
              Text(
              "By PrathamAish",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0,
                  color:Colors.grey,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(

              backgroundColor: Colors.red,
              strokeWidth: 5,
            ),
          ],
        ),
    ),

    );
  }
}

