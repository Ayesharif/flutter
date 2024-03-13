
import 'package:application/callScreen.dart';
import 'package:application/splash_screen.dart';
import 'package:application/chatScreen.dart';
import 'package:application/statusScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor:Color.fromARGB(255, 48, 123, 104),
            title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
      actions: [
      
        Icon(Icons.camera_alt_outlined,color: Colors.white),
        SizedBox(width:10),
        Icon(Icons.search,color: Colors.white),
         SizedBox(width:10),
        Icon(Icons.more_vert_outlined,color: Colors.white),
       SizedBox(width:10),
        ],
      bottom: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.white,
        
        tabs:[
      Tab(text: 'Chat'),
      Tab(text: 'Status'),
          Tab(text: 'Call'),
      ]),
      
          ),
          body: TabBarView(children: [
            chatScreen(),
            statuseScreen(),
CallScreen()

          ]),

        ),
      ),
    );
  }
}
