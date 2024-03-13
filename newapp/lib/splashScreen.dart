import 'dart:async';


import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/login.dart';

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
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Container(
          width: double.infinity,
          height: double.infinity,
decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage('splash.jpg',),fit: BoxFit.cover),
  ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
Padding(
  padding: const EdgeInsets.only(top:100),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  
    children: [
  Text('Digital Khata ',style: TextStyle(color: Colors.white, fontSize: 32,fontWeight: FontWeight.bold),),
  Icon(Icons.border_color_outlined,color: Colors.white,size: 40,)
    ],
  ),
)
          
            ],
          ),
        ),
        
    );
  }
}