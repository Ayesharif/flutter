import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    leading: 

    Icon(Icons.lock_outline_sharp,size: 15,),
    titleSpacing: -17,

    title: Row( 
      children: [
        Text('Muhammad Ayesh',style: TextStyle(fontWeight: FontWeight.bold),),
        Icon(Icons.keyboard_arrow_down_rounded),
      Icon(Icons.circle,color: Colors.red,size: 10,)
      ],
    ),
    actions: [
      Icon(Icons.add_box_outlined,size: 30,),
      SizedBox(width: 30,),
      Stack(children: [Icon(Icons.menu,size: 30,), Positioned(child:Icon(Icons.circle,color: Colors.red,size: 10,),left: 20,)   ],),
      
      SizedBox(width: 10,),
    ],
  ),
body: Container(
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [ 
  Padding(padding: EdgeInsets.all(5)),
        Stack(children: [  CircleAvatar(backgroundImage: AssetImage('prof.jpg'),radius: 50,), Positioned(child:CircleAvatar(backgroundColor :Colors.blue , radius: 12,   child:Icon(Icons.add,color: Colors.white,),),top: 70,right: 5,)   ],),
Spacer(),

Column( children: [
  Padding(padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 10)),
  Text('50',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
  Text('Post',style: TextStyle(fontSize: 15)),
  
],),  
Column( children: [
    Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
  Text('100',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
  Text('Follower',style: TextStyle(fontSize: 15)),
  
],),  
Column( children: [
    Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
  Text('10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
  Text('Following',style: TextStyle(fontSize: 15)),
  
],),  
],
      )
    ],
  ),
),  
    );
  }
}