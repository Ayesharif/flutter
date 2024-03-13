import 'package:app/homeScreen.dart';
import 'package:app/login.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  
final formkey =GlobalKey<FormState>();
  FocusNode email=FocusNode();
  FocusNode password=FocusNode();
  FocusNode name=FocusNode();
  FocusNode username=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     Container(
          width: double.infinity,
          height: double.infinity,
child: SingleChildScrollView(
  child: Column(
    children: [
  Form(
    key: formkey,
    child: Container(
      decoration: BoxDecoration(border: Border.all(color:Colors.black )),
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [              
                            Image.asset(
                              'inst1.png',
                              width: 200,
                            ),
                            Text('Sign up to see photos and videos',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),),
                            Text(' from your friends.',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),)
                          ],
                        )),
    
                                          Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                fixedSize: MaterialStatePropertyAll(Size(270, 40)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)))),
                            onPressed: () {},
                            child: Row( 
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('fac.png',width: 20,),
                                Text(
                              '  Login with Facbook',
                              style: TextStyle(color: Colors.white),
                            )
                              ],
                            ))),
                            Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Divider(thickness: 2,color: Colors.amber,height: 50,)
                              ],
                            ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                      child: TextField(

                        focusNode: email,
                        onSubmitted: (v){
                          FocusScope.of(context).requestFocus(name);
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, ),
                      child: TextField(
                        focusNode: name,
                        onSubmitted: (v){
                          FocusScope.of(context).requestFocus(username);
                        },
                        decoration: InputDecoration(
                            labelText: 'Full Name',
                            // hintText: 'Phone number, username, or email',
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                      child: TextField(
                        focusNode: username,
                        onSubmitted: (v){
                          FocusScope.of(context).requestFocus(password);
                        },
                        decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: '@....',
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
                                fixedSize: MaterialStatePropertyAll(Size(270, 40)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)))),
                            onPressed: () {
                                                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen()));
                            },
                            child: Text(
                              'Sign up',
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
    
                                    
    
        ],
      ),
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
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => login(),));
                      },
                      child: Container( 
                        height: 50,
                        // decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           
                           
                 Text(
                                'Log in',
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