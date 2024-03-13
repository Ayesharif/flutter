import 'package:flutter/material.dart';
import 'package:project/login%20pages/resetpassword.dart';


class verificaion extends StatefulWidget {
  const verificaion({super.key});

  @override
  State<verificaion> createState() => _verificaionState();
}

class _verificaionState extends State<verificaion> {
  @override

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

Icon(Icons.verified_user_outlined,size: 80),
                  Text(
                'Verification Code',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
                ],
              )
            ), 
                Text('Please Enter the 6 digits verification  \n code sent to your Email ',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),),
            Form(
              key: formkey,
                child: Column(
              children: [
       
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                  child: TextFormField(



                    validator: (verif) {
                      if(verif.toString().length!=6){
return 'please enter 6 digit code';
                    }
                      else if(verif.toString().isEmpty){
                        return 'please enter code';
                      }else {return null;}},
                    style: TextStyle(color: Colors.black),
                    
                    decoration: InputDecoration(
                      labelText: 'Verification code',
                      hintText: 'code',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
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
      
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> resetpass()));
                                         }else "error";                     },
                    child: Text('Submit',style: TextStyle(fontSize: 20),),
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