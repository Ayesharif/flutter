import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/frontscreen.dart';
import 'package:project/homescreen.dart';


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
    Timer(Duration(seconds: 3),() {
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>frontscr()));   
    }, );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
Column(
  mainAxisSize: MainAxisSize.min,
  children: [
Padding(padding: EdgeInsets.only(top: 50)),
    Image.asset('shoping.jpg',width: 400,),
  ],
),
Text('E SHOP',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),


Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child: Column(
    children: [
      Text('powered by',style: TextStyle(fontSize: 10,),),
  Text('Muhammad-Ayesh',style: TextStyle(fontSize: 10,),)
   
    ],
  ),
),

          ],
        ),
      ),
    );
  }
}