import 'dart:async';


import 'package:application/homeScreen.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

 void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () =>       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen())));
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.account_circle_outlined,size: 80,color: Colors.greenAccent,),
      
      Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("From"),
            Row(
    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.adb_rounded,color: Colors.greenAccent,),
                Text('Android',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )  
            ],
    
          ),
        )
      ],
      
      
    ),
      
      ),
      
      
    ),
    );

  }
}












// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:application/homeScreen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen()));

//      });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         // color: Colors.green,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Icon(
//               Icons.facebook,
//               color: Colors.green,
//               size: 50,
//             ),
//             Container(
//               child: Column(
//                 children: [Text('from'),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [Icon(Icons.access_alarm,color: Colors.green,size: 15,),Text('Meta',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700),)],)],
//               ),
//             )
//           ],
//         ),
//       ),
//     ),
//     );
//   }
// }

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:fourthapp/home_screen.dart';

// class splashScreen extends StatefulWidget {
//   const splashScreen({super.key});

//   @override
//   State<splashScreen> createState() => _splashScreenState();
// }

// class _splashScreenState extends State<splashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(
//         Duration(seconds: 5),
//         () =>         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => HomeScreen())));

        
//         // Navigator.push(
//         //     context, MaterialPageRoute(builder: (context) => HomeScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           width: double.infinity,
//           // color: Colors.red,
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 58, 143, 183),
//             const Color.fromARGB(255, 121, 82, 188),
//             Color.fromARGB(255, 115, 238, 53),
//           ])),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Icon(
//                 Icons.shopping_cart,
//                 size: 80,
//                 color: Colors.white,
//               ),
//               Text(
//                 'shopping',
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               )
//             ],
//           )),
//     );
//   }
// }



