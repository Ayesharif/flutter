import 'package:flutter/material.dart';
import 'package:project/seller/loginpages/sellerSignup.dart';



class sellerlog extends StatefulWidget {
  const sellerlog({super.key});

  @override
  State<sellerlog> createState() => _sellerlogState();
}

class _sellerlogState extends State<sellerlog> {
  @override
  FocusNode email=FocusNode();
  FocusNode password=FocusNode();
  final formkey = GlobalKey<FormState>();
var showpassword =true;
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
                  'shoping.jpg',
                  width: 200,

                )),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Text(
                'Seller Center ',
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
onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(password),
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
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: TextFormField(
                 focusNode:  password,
                    validator: (pass) => pass!.length < 6 ?"Minimum 6 char" : null, 
         obscureText: showpassword,
         obscuringCharacter: '*',
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Minimum 6 characters ',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      focusColor: Colors.black,
                      fillColor: Colors.white,
                      filled: true,
                    
                      suffix: IconButton(onPressed: (){ setState(() {
                      showpassword=!showpassword ; 
                      });}, 
                      icon: Icon(showpassword? Icons.visibility:Icons.visibility_off_outlined)),
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
      
                      // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> home()));
                                         }else "error";                     },
                    child: Text('Login',style: TextStyle(fontSize: 20),),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 52, 50, 50)),fixedSize: MaterialStatePropertyAll(Size(200, 50))),
                  ),
                ),
                TextButton(onPressed: (){ 
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>forgetpass()));
                  }, child: Text('Forgot Password ? ',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),)),
      
                Row(
      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                                    Text("Don't have an Account?",style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){
      
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> sellersignup()));
                    }, child: Text('Sign up',style: TextStyle(fontSize: 20,color: Colors.black),) ),
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