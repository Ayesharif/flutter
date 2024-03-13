import 'package:flutter/material.dart';
import 'package:project/login%20pages/login.dart';
import 'package:project/seller/loginpages/sellerSignup.dart';

class frontscr extends StatelessWidget {
  const frontscr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
      //   color: Colors.,
      // decoration: BoxDecoration(gradient: Gradient),
        child: Column(children: [

Image.asset('shoping.jpg',height: MediaQuery.of(context).size.height*.3,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Experience Buying and Selling with E-SHOP',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 60,right: 60,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Explore the world which you Deserve, Nothing is more expensive than miss an opportunity',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: ElevatedButton(style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size.fromHeight(MediaQuery.of(context).size.height*.05)),
 
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
            onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => login(),));
            }, child: Text('Explore Products',style: TextStyle(color: Colors.white,fontSize: 25),)),
          ),

                    Padding(
            padding: const EdgeInsets.only(top: 50,left: 60,right: 60,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('E- Commerce is a powerful means to connect the unconnected to global trade ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: ElevatedButton(style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size.fromHeight(MediaQuery.of(context).size.height*.05)),
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => sellersignup(),));

            }, child: Text('Become a Seller',style: TextStyle(color: Colors.white,fontSize: 25),)),
          )

        ],),
      ),
    );
  }
}