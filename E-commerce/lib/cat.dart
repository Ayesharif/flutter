import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:               SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                
                
                        child: Column(
                          children: [
                            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        ),
                          onPressed: () {},
                          child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                            children: [ 
                              Padding(padding: EdgeInsets.all(20)),
                              Image.asset('mens.jpg',width: 300,),
                            Text("Mens Clothes",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)
                            ],
                          ))),
                    ),
                  ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: ElevatedButton(
                                                            style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                                                            ),
                                                              onPressed: () {},
                                                              child: Container(
                                                                  child: Column(
                                                                children: [ 
                                                                  Padding(padding: EdgeInsets.all(20)),
                                                                  Image.asset('women.jpg',width: 300,),
                                                                Text("Womens Clothes",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)
                                                                  ],
                                                              ))),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: ElevatedButton(
                                                            style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                                                            ),
                                                              onPressed: () {},
                                                              child: Container(
                                                                  child: Column(
                                                                children: [ 
                                                                  Padding(padding: EdgeInsets.all(20)),
                                                                  Image.asset('kids.jpg',width: 300,),
                                                                Text("Kids Clothes",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)
                                                                  ],
                                                              ))),
                                        ),
                                      )
                ],
                            )
                          ],
                        ),
                      ),
              ),
    );
  }
}