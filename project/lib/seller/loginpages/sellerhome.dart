import 'package:flutter/material.dart';

class sellerhome extends StatefulWidget {
  const sellerhome({super.key});

  @override
  State<sellerhome> createState() => _sellerhomeState();
}

class _sellerhomeState extends State<sellerhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Shop Seller Center',style: TextStyle(fontSize: 40),),
      ),
    );
  }
}