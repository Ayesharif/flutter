import 'package:firstapp/cat.dart';
import 'package:firstapp/home.dart';
import 'package:firstapp/myheaddrawer.dart';
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
      length: 4,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "All In One Store",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                // Padding(  padding: EdgeInsets.all(10) , child: Text("Sign up",style: TextStyle(fontSize:20,fontWeight: FontWeight.w400 ),))
                Drawer(
                  child: SingleChildScrollView(
                      child: Container(
                    child: Column(

                    children: [
                      
myheadDrawer(),
// mydrawerlist(),
                      
                    ],
                    ),
                  )),
                )
              ],
              bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border(top: BorderSide(color: Colors.black))),
                  dividerHeight: 3,
                  dividerColor: Colors.black,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Home',
                    ),
                    Tab(text: 'Categories'),
                    Tab(text: 'My Order'),
                    Tab(text: 'Profile'),
                  ]),
            ),
            body: TabBarView(children: [
              home(),
              Categories(),
              Tab(text: 'My Order'),
              Tab(text: 'Profile'),
            ])),
      ),
    );
  }
}
