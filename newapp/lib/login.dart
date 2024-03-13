import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/home.dart';
import 'package:newapp/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  final formkey = GlobalKey<FormState>();  
  FocusNode email=FocusNode();
  FocusNode password=FocusNode(); 
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
Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)                        ],
                      )),
                  Form(
                    key: formkey,
                    child: Column(children: [
                      Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      child: TextFormField(
                        focusNode: email,
                        onFieldSubmitted: (v){
                          FocusScope.of(context).requestFocus(password);
                        },
                      validator: (email) {
                        if(email.toString().isEmpty){
                          return 'please enter your name';
                        }else {return null;}},
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
                    child: TextFormField(
                      focusNode: password,

                    validator: (pass) {
                      if(pass.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},
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
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.brown[400]),
                                  fixedSize: MaterialStatePropertyAll(Size(270, 40)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)))),
                      onPressed: (){
                         if(                       formkey.currentState!.validate()){
                          
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> home()));
                                           }else "error";                     
                    
                      }, child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                         
                             Text(
                                'Login',
                                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                              ),
                            
                          ],
                        )),
                  ),

                    ],)
                  ),
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