import 'dart:html';

import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help Center',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white)),
      centerTitle: true,
      backgroundColor: Colors.black,),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          
          children: [

          Padding(padding: EdgeInsets.only(top: 50,left: 10),
          child: Row( mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 Text('1.  Solve your issue via email',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
          ],),),
          Padding(padding: EdgeInsets.only(top: 30,left: 10,right: 10),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 Text('Send email to given email address and explain your query, your query will be solved in 24 hours',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
 
 Padding(padding: EdgeInsets.all(20)),
 Text('social.mediafun9900@gmail.com',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   Padding(padding: EdgeInsets.only(top: 50,left: 10),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.center,
            children: [
 Text('2. Explain your query in the givin text area',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          
        TextField(decoration: InputDecoration(
border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  constraints: BoxConstraints.expand(height: 500,width: 600)        
        ),)
          ],),),
          ],),),

          
          ],
        ),
      ),
    );
  }
}