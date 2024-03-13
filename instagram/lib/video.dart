import 'package:flutter/material.dart';
class video extends StatelessWidget {
  const video({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    
      // width: double.infinity,
      child: Column(
        children: [
      
          Image.asset('post1.jpg',fit:BoxFit.contain,),
          Image.asset('post2.jpg',fit: BoxFit.cover,),
          Image.asset('post3.jpg',fit: BoxFit.cover,)
        ],
      ),
    );
  }
}

