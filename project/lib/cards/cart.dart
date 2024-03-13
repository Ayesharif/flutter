import 'dart:html';

import 'package:flutter/material.dart';

class cart extends StatefulWidget {
 final String img, name;
  final Function ontap;

  const cart({super.key,
      required this.name,
      required this.img,
      required this.ontap});
  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
                    Container(

height: double.infinity,
width: double.infinity,
                      color: Colors.black,
                      child: InkWell(
                        onTap: () {
                          widget.ontap();
                        },
                        child: Container(
                         width: double.infinity,
                         height:  MediaQuery.of(context).size.height*0.2,
                                              color: Colors.black,
                          child: Card(
                           
                           // color: Colors.blac,
                          surfaceTintColor: Colors.white12,
                                                     child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               
                                                       children: [
                          
                           Image.asset(widget.img,height: MediaQuery.of(context).size.height*0.15,),
                          
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(widget.name,style: TextStyle(fontSize: 20
                            ,fontWeight: FontWeight.w600,color: Colors.black),),
                          )
                          ],
                                                     ),
                          ),
                        ),
                      ),
                    )             );
  }
}
