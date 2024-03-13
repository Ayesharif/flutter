import 'dart:async';

// import 'package:app/homeScreen.dart';
import 'package:app/homeScreen.dart';
import 'package:app/login.dart';
import 'package:app/home.dart';
// import 'package:app/signup.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Icon(Icons.account_circle_outlined,size: 80,color: Colors.greenAccent,),
        Image.asset('assets/inst.jpg',width: 200,),
      
      Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("From"),
            Row(
    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.adb_rounded,color: Colors.greenAccent,),
                Text('FACEBOOK',style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            )  
            ],
    
          ),
        )
      ],
      
      
    ),
      
      ),
      
      
    );
  }
}