import 'package:flutter/material.dart';

class posts extends StatelessWidget {
  const posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.only(bottom: 2),        
      //   border: Border.all(color: Colors.black),
      // ),
    width: double.infinity,
            child: Column(
              children: [
    Row(
      
      children: [
    
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('profile.png'),
                  ),
                ),
                Text('ALi'),
    Spacer(),
                Icon(Icons.more_vert_outlined)
      ],
    ),
    Container(
    
      width: double.infinity,
      child: Column(
        children: [
      
          Image.asset('post1.jpg',fit:BoxFit.cover),
Row(
  children: [
    Image.asset('heart.png',width: 30,),
    SizedBox(width: 12),
    Image.asset('messenger_icon.jpg',width: 27,),
    SizedBox(width: 12),
    Icon(Icons.send),
    SizedBox(width: 12),
    Spacer(),
    Icon(Icons.bookmark)
  ],
)
        ],
      ),
    )
              ],
            ),
          );
  }
}