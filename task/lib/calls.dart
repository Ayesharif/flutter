import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  const calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
        ListTile(
        leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 141, 114) ,child: Icon(Icons.link,color: Colors.white,),),title: Text('Create call link',style: TextStyle(fontWeight:FontWeight.w500 ),),
        subtitle: Text("Share a link for your Whatsapp call"),
           
            ),        
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Recent'),
            )    ,
                    ListTile(
        leading: CircleAvatar(backgroundColor: Colors.blueAccent),title: Text('Afridi'),
        subtitle: Row(children:  [     Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(Icons.call_made_rounded,color: Colors.green,),
        ), Text('Today, 1.30')],),
        trailing: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [ 
          Icon(Icons.videocam,color: Color.fromARGB(255, 26, 141, 114),)
          ],),
        
            ),
          ],
        ),
      ),
    );
  }
}