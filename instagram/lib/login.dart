import 'package:app/homeScreen.dart';
import 'package:app/signup.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
 
  FocusNode email=FocusNode();
  FocusNode password=FocusNode(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
child: SingleChildScrollView(
  child: Column(
    children: [
  Container(
    decoration: BoxDecoration(border: Border.all(color:Colors.black )),
    margin: EdgeInsets.all(20),
    child: Column(
      children: [
        
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: Column(
                        children: [
                          Image.asset(
                            'login.jpg',
                            width: 100,
                          ),
                          Image.asset(
                            'inst1.png',
                            width: 200,
                          )
                        ],
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    child: TextField(
                      focusNode: email,
                      onSubmitted: (v){
                        FocusScope.of(context).requestFocus(password);
                      },
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Phone number, username, or email',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: const Color.fromARGB(255, 97, 215, 101))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.red))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                    ),
                    child: TextField(
                      focusNode: password,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: const Color.fromARGB(255, 97, 215, 101))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.red))),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue),
                              fixedSize: MaterialStatePropertyAll(Size(270, 50)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)))),
                          onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen(),));},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ))),
                  Row(
                    children: [
                      Divider(
                        color: Colors.black38,
                        thickness: 5,
                        height: 20,
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'facbook.png',
                            width: 30,
                          ),
                           Text(
                              'Login with Facbook',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          
                        ],
                      )),
                                    TextButton(
                      onPressed: () {},
                      child: Row(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         
                          Text(
                              'Forgot password?',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          
                        ],
                      )),
  
      ],
    ),
  ),
  Container(
    
margin: EdgeInsets.all(20),
    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
  Row(
    // mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center ,
   children: [Text("Don't have an account?"),
  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => signup(),));
                      },
                      child: Container( 
                        height: 50,
                        // decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           
                           
                 Text(
                                'Sign up',
                                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
                           
                            )
                          ],
                        ),
                      )),],),
                       
    ],
  ),)            
  
    ],
  ),
),


        ),
    );
  }
}