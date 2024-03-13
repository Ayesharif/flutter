import 'package:flutter/material.dart';
import 'package:project/homescreen.dart';
import 'package:project/login%20pages/login.dart';


class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
final formkey =GlobalKey<FormState>();
  FocusNode email=FocusNode();
  FocusNode password=FocusNode();
  FocusNode name=FocusNode();
  FocusNode username=FocusNode();
  var showpassword=true;
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          width: double.infinity,
          height: double.infinity,
child: SingleChildScrollView(
  child: Column(
    children: [
  Form(
    key: formkey,
    child: Container(
      // decoration: BoxDecoration(border: Border.all(color:Colors.black )),
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          
                    Container(
                        padding: EdgeInsets.only(top: 20,bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [              
                            Image.asset(
                              'shoping.jpg',
                              width: 300,
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Signup',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)],
                            ),),
                            Text('Sign up to spend your money ',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),),
                            Text('on your life style.',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 20),)
                          ],
                        )),
    
                                   
      //                       Divider(
      //     height: 10,
      //     color: Colors.green,
      //     thickness: 1,
      //     indent : 2,
      //     endIndent : 2,       
      //  ),

                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                      child: TextFormField(

                        focusNode: email,
                        onFieldSubmitted: (v){
                          FocusScope.of(context).requestFocus(name);
                        },
                        validator: (email) {
if(email.toString().isEmpty){
                          return 'Please enter password';
                         }
                         else{return null;}
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
                        focusNode: name,
                        onFieldSubmitted: (v){
                          FocusScope.of(context).requestFocus(username);
                        },
                        validator: (name) {
                         
                         if(name.toString().isEmpty){
                          return 'Please enter password';
                         }
                         else{return null;}
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
                        focusNode: username,
                        onFieldSubmitted: (v){
                          FocusScope.of(context).requestFocus(password);
                        },
                        validator: (username) {
                         if(!username.toString(). startsWith('@')){
return "Please use @ in start ";
                         }else if(username.toString().contains(' ')){
                          return 'please remove space';
                         }
                         else if(username.toString().isEmpty){
                          return 'Please enter password';
                         }
                         else{return null;}
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
                        focusNode: password,
                        obscureText: showpassword,
                        obscuringCharacter: '*',
                       validator: (password) {
                         if(password.toString().length< 6 ){
return "Please enter minimum 6 char";
                         }
                         else if(password.toString().isEmpty){
                          return 'Please enter password';
                         }
                         else{return null;}
                       },
                        decoration: InputDecoration(
           suffix: IconButton(onPressed: (){ setState(() {
                      showpassword=!showpassword ; 
                      });}, 
                      icon: Icon(showpassword? Icons.visibility:Icons.visibility_off_outlined)),
              
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
                             formkey.currentState!.validate();                        // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => homeScreen()));
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
                       TextButton(onPressed: (){
                                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => home(),));
                       }, child: Text('Skip'))
    ],
  ),)            
  
    ],
  ),
),


        ),
        );
  }
}