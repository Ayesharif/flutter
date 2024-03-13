import 'package:app/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:app/post.dart';

class postScreen extends StatelessWidget {
  const postScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
  child: Column(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(

          children: [
           Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               mystatus(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
               status(),
             ],
           ),
    
        
          ],
        ),
      ),
Divider(color: Color.fromARGB(255, 213, 111, 111),),


// post(),
// 
posts(),
posts(),
posts(),
posts(),
posts(),
posts(),
posts(),
posts(),
posts(),
posts(),
       
    ],
  ),
),
    );
  }
}