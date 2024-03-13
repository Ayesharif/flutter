import 'package:flutter/material.dart';
import 'package:project/homescreen.dart';
import 'package:project/login%20pages/login.dart';


class resetpass extends StatefulWidget {
  const resetpass({super.key});

  @override
  State<resetpass> createState() => _resetpassState();
}

class _resetpassState extends State<resetpass> {
  @override
FocusNode COnfpassword=FocusNode();
  FocusNode password=FocusNode();
  final formkey = GlobalKey<FormState>();
var showpassword =true;
var showConpassword =true;
  Widget build(BuildContext context) {
   return Scaffold(
      body: 
      
      Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.black,
        child: Column(

          children: [

            
            Padding(
              padding: const EdgeInsets.only(bottom:30,top: 100),
              child: Text(
                'Create New Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
                            Text('Set your new password to connect \nwith E-Shop',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),),
            Form(
              key: formkey,
                child: Column(
              children: [
       
                Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 50),
                  child: TextFormField(
                 focusNode:  password,
                    validator: (pass) => pass!.length < 6 ?"Minimum 6 char" : null, 
         obscureText: showpassword,
         obscuringCharacter: '*',
                    onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(COnfpassword),
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Create a Password',
                      hintText: 'Minimum 6 characters ',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                    
                      suffix: IconButton(onPressed: (){ setState(() {
                      showpassword=!showpassword ; 
                      });}, 
                      icon: Icon(showpassword? Icons.visibility:Icons.visibility_off_outlined)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                               color: Color.fromARGB(241, 177, 169, 169))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: TextFormField(
                 focusNode:  COnfpassword,
                    validator: (pass) => pass!.length < 6 ?"Please confirm password" : null, 
         obscureText: showConpassword,
         obscuringCharacter: '*',
                    
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                    
                      suffix: IconButton(onPressed: (){ setState(() {
                      showConpassword=!showConpassword ; 
                      });}, 
                      icon: Icon(showConpassword? Icons.visibility:Icons.visibility_off_outlined)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                               color: Color.fromARGB(241, 177, 169, 169))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      if(                       formkey.currentState!.validate()){
      
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> login()));
                                         }else "error";                     },
                    child: Text('Update',style: TextStyle(fontSize: 20),),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 52, 50, 50)),fixedSize: MaterialStatePropertyAll(Size(200, 50))),
                  ),
                ),
 
                
              ],
            ))
          ],
        ),
      ),
    );
  }
}