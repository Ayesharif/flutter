import 'package:flutter/material.dart';

class statuseScreen extends StatefulWidget {
  const statuseScreen({super.key});

  @override
  State<statuseScreen> createState() => _statuseScreenState();
}

class _statuseScreenState extends State<statuseScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                              Text('Status',style: TextStyle(fontWeight: FontWeight.bold),),
            Icon(Icons.more_vert_outlined)
                ],
              ),
              

         ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
         Text('Recently updated'),
         Expanded(
          child:SingleChildScrollView(
child: Column(children: [
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Text('my status description',),),
  ),
  
],),
),
         )
          ],
          ),

        
        ) ,
        

        ),
    );
  }
}