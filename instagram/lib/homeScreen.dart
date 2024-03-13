
// import 'package:app/post.dart';


import 'package:app/main.dart';
import 'package:app/post_screen.dart';
import 'package:app/home.dart';
import 'package:app/video.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {

  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  var current_index=0;
  var screens=[
postScreen(),
video(),
postScreen(),
video(),
profile()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/inst2.png',width: 100,),

        actions: [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 10),
          Image.asset('heart.png',width: 30,),
          SizedBox(width: 10),
          Image.asset('messenger_icon.jpg',width:20),
          SizedBox(width: 10),

        ],
   ),
body:  screens[current_index],


bottomNavigationBar: BottomNavigationBar( 
  unselectedItemColor: Colors.grey,
type: BottomNavigationBarType.shifting,
showUnselectedLabels: false  ,
currentIndex: current_index,
onTap: (value) {
 current_index=value;
  setState(() {
    
  });
},
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.black),label: ""),
  BottomNavigationBarItem(icon: Image.asset('video.png',width: 20,),label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.person_pin,color: Colors.black),label: ""),
]),
    );
  }
}



class mystatus extends StatelessWidget {
  const mystatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
     
          children: [
            Container(
    
    padding: EdgeInsets.all(5),
              child: Column(
     
     children: [
       CircleAvatar(
              // backgroundColor: Color.fromARGB(255, 223, 156, 146),
             radius: 30,
              backgroundImage: AssetImage('profile.png'),
            ),
            Text('My status'),
    
           
     ],
              ),
              
            ),
             Positioned(
    top: 50,
    right: 5,
              child: CircleAvatar(
     backgroundColor: Color.fromARGB(255, 13, 11, 11),
    radius: 8,
    child: Icon(Icons.add,color: Colors.white,size: 10,),
              ),
            )
          ],
        );
  }
}


class status extends StatelessWidget {
  const status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(50),
                    
                  ),

                  child:  CircleAvatar(
         
          backgroundColor: Color.fromARGB(255, 223, 156, 146),
         radius: 30,
          backgroundImage: AssetImage('profile.png'),
        ),
 
                ),
                        Text('My status'),

              ],
             ),

    );
  }
}

