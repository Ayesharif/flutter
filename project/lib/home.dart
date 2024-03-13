

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:project/cards/catogeries.dart';


class homeBody extends StatefulWidget {
  const homeBody({super.key});

  @override
  State<homeBody> createState() => _homeBodyState();
}

class _homeBodyState extends State<homeBody> {
  @override
  var image=[
    'img1.jpg',
    'img2.jpg',
    'img3.jpg',
      ];
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 20
                  ),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.8,maxHeight: 40),
                        
                        fillColor: Colors.white,
                        filled: true,
                        // contentPadding: EdgeInsets.only(top: 5,left: 20,bottom: 10),
                        hintText: 'Search your product',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.transparent)),
                        suffix : IconButton(
                            mouseCursor: MaterialStateMouseCursor.textable,
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    const Color.fromARGB(255, 87, 78, 78))),
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white,
                            ))),
                  ),
                ),
              ],
            ),
            CarouselSlider(options: CarouselOptions(
              height: 400,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayCurve: Curves.easeInOutBack
              ), 
            items: List.generate(image.length, (index) {
              return Builder(builder: (BuildContext context) {
                return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.cover,
                          )));
              },);
            })),
// CarouselSlider(
//             options: CarouselOptions(
//               autoPlayCurve: Curves.easeInOutBack,
//               autoPlayInterval: Duration(seconds: 3),
//               scrollDirection: Axis.horizontal,
//               height: 400.0,
//               // reverse: true,
//               autoPlay: true,
//               enlargeCenterPage: true,
//             ),
//             items:List.generate(image.length, (index) => Builder(
//                 builder: (BuildContext context ) {
//                   return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: EdgeInsets.symmetric(horizontal: 5.0),
//                       // decoration: BoxDecoration(color: Colors.amber),
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.asset(
//                             image[index],
//                             fit: BoxFit.cover,
//                           )));
//                 },
//               )),
//           ),
            
            // Padding(
            //   padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(40),
            //     child: 
            //   Image.asset('home.jpg',width: MediaQuery.of(context).size.width*1,)
            //   ),
            // ),
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>category()));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              Image.asset('options.png',width: 30,),
            ],
          ),
        ),
      ),

          ],
        ),
      ),
    );
  }
}




// class productRow extends StatelessWidget {
//   const productRow({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//         child: Row(
//           children: [
            
//             product(),
//             product(),
//             product(),
//             product(),
//             product(),
//             product(),
//           ],
//             ),
//       ),
//     );
//   }
// }

// class product extends StatelessWidget {
//   const product({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5),
//       child: Container(
//         width: 150,
//         height: 200,
//             color: Colors.black,    
//         child: Column(
//           children: [
        
//            Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 5),
//               child: Image.asset('sht2.jpg',height: 150,),
//             ),
//             Column(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
        
//             Text('Blue Shirt for mens',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//             Text('price :  1200',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          
//         //   children: [
        
//         //   ElevatedButton(
//         //                           style: ButtonStyle(
//         //                               backgroundColor:
//         //                                   MaterialStatePropertyAll(Colors.blue),
//         //                               fixedSize: MaterialStatePropertyAll(Size(80, 30)),
//         //                               shape: MaterialStatePropertyAll(
//         //                                   RoundedRectangleBorder(
//         //                                       borderRadius: BorderRadius.circular(2)))),
//         //                           onPressed: () {
//         //                             // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen(),));
//         //                             },
//         //                           child: Text(
//         //                             'Add to',
//         //                             style: TextStyle(color: Colors.white,fontSize: 10),
//         //                           )),
//         //                           ElevatedButton(
//         //                           style: ButtonStyle(
//         //                               backgroundColor:
//         //                                   MaterialStatePropertyAll(Colors.blue),
//         //                               fixedSize: MaterialStatePropertyAll(Size(80, 30)),
//         //                               shape: MaterialStatePropertyAll(
//         //                                   RoundedRectangleBorder(
//         //                                       borderRadius: BorderRadius.circular(2)))),
//         //                           onPressed: () {
//         //                             // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen(),));
//         //                             },
//         //                           child: Text(
//         //                             'Add to',
//         //                             style: TextStyle(color: Colors.white,fontSize: 10),
//         //                           ))
//         // ],)
        
//             ],)
//           ]),
//           ],
//         )
        
        
//         ),
//     );
//   }
// }

