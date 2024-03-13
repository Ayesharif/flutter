import 'dart:async';
import 'package:firstapp/homeScren.dart';
import 'package:firstapp/login.dart';
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
    Timer(Duration(seconds: 3), () => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen())));
  }
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
    Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color.fromARGB(255, 230, 224, 216),
child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Image.asset('all.png',width:400,),
        ],
      ),      
    ),     
      ],
       );}
}