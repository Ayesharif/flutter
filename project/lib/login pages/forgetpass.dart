import 'package:flutter/material.dart';
import 'package:project/login%20pages/login.dart';
import 'package:project/login%20pages/verification.dart';

class forgetpass extends StatefulWidget {
  const forgetpass({super.key});

  @override
  State<forgetpass> createState() => _forgetpassState();
}

class _forgetpassState extends State<forgetpass> {
  @override
  FocusNode email=FocusNode();

  final formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.black,
        child: Column(

          children: [

            Padding(
              padding: const EdgeInsets.only(bottom:50,top: 100),
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: formkey,
                child: Column(
              children: [
       
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: TextFormField(

focusNode: email,

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
                    suffix: Icon(Icons.mail),
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
                      if(                       formkey.currentState!.validate()){
      
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> verificaion()));
                                         }else "error";                     },
                    child: Text('Get Email',style: TextStyle(fontSize: 20),),
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
                                    Text("I know password",style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){
      
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> login()));
                    }, child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.black),) ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );  }
}