import 'package:flutter/material.dart';
import 'package:project/drawerfiles/about.dart';
import 'package:project/drawerfiles/favorite.dart';
import 'package:project/drawerfiles/help.dart';
import 'package:project/drawerfiles/orders.dart';
import 'package:project/drawerfiles/profile.dart';
import 'package:project/seller/loginpages/Sellerlogin.dart';


class sidedrawer extends StatefulWidget {
  const sidedrawer({super.key});

  @override
  State<sidedrawer> createState() => _drawerState();
}

class _drawerState extends State<sidedrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: [
          Container(
          height: 200,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
              CircleAvatar(backgroundColor: Colors.black,radius: 60,),
              
              
                ],
              ),
            ),
    Text('user'),
    Text('@gmail.com'),
    
          ],),
        ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
        },
        child: Row(children: [
    Icon(Icons.person_pin_outlined,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    ),

        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>orders()));
        },
        child: Row(children: [
    Icon(Icons.list_alt_rounded,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('Orders',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    )
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
        },
        child: Row(children: [
    Icon(Icons.favorite_border,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('My Favorites',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    )
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>sellerlog()));
        },
        child: Row(children: [
    Icon(Icons.store_mall_directory_outlined,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('Become a Seller',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    )
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>help()));
        },
        child: Row(children: [
    Icon(Icons.help_center_outlined,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('Help',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    )
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
        },
        child: Row(children: [
    Icon(Icons.error_outline_outlined,size: 30,),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    )
        ],),
      ),
    ),
    
        ],
      ),
    );
  }
}