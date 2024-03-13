import 'package:flutter/material.dart';

class myheadDrawer extends StatefulWidget {
  const myheadDrawer({super.key});

  @override
  State<myheadDrawer> createState() => _myheadDrawerState();
}

class _myheadDrawerState extends State<myheadDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('sht2.jpg'))
            ),
            
          ),
          Text('user',style: TextStyle(color: Colors.white,fontSize: 20),),
          Text('@gmail.com',style: TextStyle(color: Colors.grey[200],fontSize: 20),),
        ],
        ),
      ),
    );
  }
}