import 'package:flutter/material.dart';

class productscreen extends StatefulWidget {
final String img, name;

  const productscreen({super.key,
      required this.name,
      required this.img,
});
  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
      ),

    );
  }
}