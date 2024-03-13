import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/cards/cart.dart';
import 'package:project/cards/subCategory.dart';




class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override

  var datta=[
{ "name":"Mens Stiched", "image":"Men-stiched.png"},
{ "name":"Cosmatics", "image":"cosmatics.png"},
{ "name":"Watches", "image":"couplewatch.png"},
{ "name":"Electronis", "image":"electronics.png"},

{ "name":"Begs", "image":"begs.png"},
{ "name":"Mens Shoes", "image":"gentshose.png"},
{ "name":"Home Decor", "image":"housedeco.png"},

{ "name":"House Hold Items", "image":"household.png"},
{ "name":"Jewellery", "image":"jewellery.png"},
{ "name":"kids", "image":"kids.png"},
{ "name":"Ladies Shoes", "image":"ladiesshoes.png"},

{ "name":"Mens Unstiched", "image":"menunstached.jpg"},
{ "name":"Mom & Baby", "image":"mombaby.png"},
{ "name":"perfums", "image":"perfums.png"},
{ "name":"Womens Stiched", "image":"womenstiched.png"},
{ "name":"Womens Stiched", "image":"womenUnstiched.jpg"},
{ "name":"Auto & bike", "image":"trevelingass.png"},
  ];
  Widget build(BuildContext context) {
var devicewidth=MediaQuery.of(context).size.width;
    return Scaffold(
// appBar: AppBar(title: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),),
      body:

// Container(
//   color: Colors.black,
//   child: Column(
//     children: [
//                 Text( 'Category',
//                         style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//       Expanded(
//         child: ListView.builder(
//                       itemCount: datta.length,
//                       itemExtent: 300,
//                       itemBuilder:  ((context, index) {
                      
//                       return
//                       //  Text('sdfsdfsdf',style: TextStyle(color: Colors.white),);
          
//           cart(name: datta[index]['name'].toString(), img:datta[index]['image'].toString(), ontap: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context) => productscreen(name: datta[index]['name'].toString(), img: datta[index]['image'].toString()),));
//           });
//           })),
//       ),
//     ],
//   ),
// )         

      

Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Category',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),
    ),
    Expanded(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: devicewidth <= 520? 2 : 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5),
      itemCount: datta.length,
      
       itemBuilder: (BuildContext context, index) {
        
        return cart(name: datta[index]['name'].toString(), img:datta[index]['image'].toString(), ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => productscreen(name: datta[index]['name'].toString(), img: datta[index]['image'].toString()),));
                });
      }),
    ),
  ],
)

    

      
    );
  }
}

        
          //              Padding(
          //                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
          //                child: Card(
          //                surfaceTintColor: Colors.white12,
          //                                           child: Column(
          //                                             children: [
          //                Container(
          //                  width: 200,
          //                  height: 200,
          //                  color: Colors.white,
          //                  child: Image.asset(datta[index]['image'].toString(),fit: BoxFit. cover,)
          //                  ),
          //                Padding(
          //                  padding: const EdgeInsets.all(10),
          //                  child: Text(datta[index]['name'].toString(),style: TextStyle(fontSize: 20
          //                  ,fontWeight: FontWeight.w600),),
          //                )
          //                ],
          //                                           ),
          //                ),
          //              );