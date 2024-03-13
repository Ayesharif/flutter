import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
color: Colors.black,
child: Column(
  children: [
Padding(
  padding: const EdgeInsets.only(top: 20,bottom: 50),
  child: Stack(
    children: [
  
      CircleAvatar( 
          
          backgroundColor: Colors.blueGrey,
          radius: 80,
        ),
        Positioned(
          left: 120,
          top: 120,
          child: InkWell(
            onTap: () {

            },
            child: CircleAvatar(
            child: Icon(Icons.add),radius: 15,
                    ),
          )),

    ],
  ),
),


    Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: TextFormField(
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(backgroundColor: Colors.white,fontSize: 20),
      
        decoration: InputDecoration(
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),        
          hintText: "Name",
          hintStyle: TextStyle(color: Colors.black,),
          fillColor: Colors.white,
          filled: true,
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.8,maxHeight: 50),
       
        ),),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: TextFormField(
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(backgroundColor: Colors.white,fontSize: 20),
      
        decoration: InputDecoration(
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),        
          hintText: "Father name",
          hintStyle: TextStyle(color: Colors.black,),
          fillColor: Colors.white,
          filled: true,
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.8,maxHeight: 50),
       
        ),),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: TextFormField(
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(backgroundColor: Colors.white,fontSize: 20),
      
        decoration: InputDecoration(
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),        
          hintText: "Address",
          hintStyle: TextStyle(color: Colors.black,),
          fillColor: Colors.white,
          filled: true,
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.8,maxHeight: 50),
       
        ),),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: TextFormField(
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(backgroundColor: Colors.white,fontSize: 20),
      
        decoration: InputDecoration(
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),        
          hintText: "City",
          hintStyle: TextStyle(color: Colors.black,),
          fillColor: Colors.white,
          filled: true,
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.8,maxHeight: 50),
       
        ),),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))  ,onPressed: (){}, child: Text('Update',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
    )
      
  ],

),
      ),
    );
  }
}