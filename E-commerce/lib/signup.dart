import 'package:firstapp/homeScren.dart';
import 'package:firstapp/login.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
FocusNode name =FocusNode();
FocusNode email =FocusNode();
FocusNode Password=FocusNode();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.black,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(
                  'all.png',
                  width: 200,
                )),
            Text(
              'Sign up',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Form(
              key: formkey,
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: TextFormField(
                    focusNode: name,
                    onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(email),

                    style: TextStyle(color: Colors.black),
                    validator: (name) {
                      if(name.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                      
                      // border: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //       color: Colors.grey)),
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
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: TextFormField(
                    focusNode: email,
                    onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(Password),

                    validator: (email) {
                      if(email.toString().isEmpty){
                        return 'please enter your name';
                      }else {return null;}},
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'email or phone number',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                      // border: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //       color: Colors.grey)),
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
                                        focusNode: Password,
                    // onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(email),
                    
                    validator: (pass) => pass!.length < 6 ?"Minimum 6 char" : null, 

   
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Minimum 6 characters ',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                      // border: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //       color: Colors.grey)),
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
                      if(formkey.currentState!.validate()){

                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
                                         }else "error";                     },
                    child: Text('Sign Up'),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 52, 50, 50)),fixedSize: MaterialStatePropertyAll(Size(200, 50))),
                  ),
                ),

                Row(
mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                                    Text("Already have an Account?",style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> login()));
                    }, child: Text('Login',style: TextStyle(fontSize: 20),) ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}