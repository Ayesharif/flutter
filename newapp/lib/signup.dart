import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
FocusNode email=FocusNode();
  FocusNode password=FocusNode();
  FocusNode name=FocusNode();
  FocusNode username=FocusNode();
  final formkey =GlobalKey<FormState>();
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
                            Text('SignUp.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                          ],
                        )),
    
                                        
                            Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Divider(thickness: 2,color: Colors.amber,height: 50,)
                              ],
                            ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                      child: TextFormField(
validator: (pass) {
                      if(pass.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},

                        focusNode: email,
                        onFieldSubmitted: (v){
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
                      child: TextFormField(
                        validator: (full) {
                      if(full.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},

                        focusNode: name,
                        onFieldSubmitted: (v){
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
                      child: TextFormField(
                        validator: (user) {
                      if(user.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},

                        focusNode: username,
                        onFieldSubmitted: (v){
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
                      child: TextFormField(
validator: (pass) {
                      if(pass.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},

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
                                    MaterialStatePropertyAll(Colors.brown[400]),
                                fixedSize: MaterialStatePropertyAll(Size(270, 40)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)))),
                            onPressed: () {
                                                      if(                       formkey.currentState!.validate()){
                          
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> home()));
                                           }else "error";                     
                   
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Colors.white),
                            ))),
                    
    
                                    
    
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
 if(                       formkey.currentState!.validate()){
                          
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> login()));
                                           }else "error";                     
                   
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