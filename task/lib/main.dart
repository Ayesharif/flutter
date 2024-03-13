import 'package:flutter/material.dart';
import 'package:task/calls.dart';
import 'package:task/chats.dart';
import 'package:task/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 26, 141, 114),
            title: Text('Whatsapp',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
            actions: [
              Icon(Icons.camera_alt_outlined,color: Colors.white,),
              SizedBox(width: 20),
              Icon(Icons.search,color: Colors.white,),
              SizedBox(width: 20),
              Icon(Icons.more_vert_outlined,color: Colors.white,),
            SizedBox(width: 20),
            ],
            bottom: TabBar(tabs: [
              Tab(child: Text('Chats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),),
              Tab(child: Text('Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),),
              Tab(child: Text('Calls',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),),

            ]),
          ),
          body: TabBarView(children: [
            chats(),
            status(),
calls(),
          ]
          )
        ),
        
      ),
    );
  }
}
