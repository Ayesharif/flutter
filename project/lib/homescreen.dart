

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/cards/addcard.dart';
import 'package:project/cards/catogeries.dart';
import 'package:project/drawerfiles/drawer.dart';

import 'package:project/home.dart';
import 'package:project/login%20pages/login.dart';





class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
    var current_index=0;
  var screens=[
homeBody(),
category(),
addcard()
  ];
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  // automaticallyImplyLeading: true,
  
  title:  Row(mainAxisAlignment: MainAxisAlignment.center,  children: [Text('E-Shop',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),) ,],),
centerTitle: true,
actions: [
  PopupMenuButton<String>( 
    surfaceTintColor: Colors.black,
  icon: Icon(Icons.more_horiz_outlined),
  itemBuilder: (BuildContext   context) {
return <PopupMenuEntry<String>>[
  PopupMenuItem(child: Text('Logout'),
onTap: () {
  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
})
];     
  },)
],
),

      body:screens[current_index], 



bottomNavigationBar: BottomNavigationBar(
  unselectedIconTheme: IconThemeData(size: 10),
selectedItemColor: Colors.black,
  showUnselectedLabels: false,
  currentIndex: current_index,
  onTap: (value) {
    current_index=value;
    setState(() {
      
    });
  },
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.category,size: 30,),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded,size: 30,),label: ""),
]),      
      drawer:     sidedrawer(),
    );
  }
}






