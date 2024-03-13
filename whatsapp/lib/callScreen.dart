import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
leading: 
                  CircleAvatar(child : Icon(Icons.link,color: Colors.white,), backgroundColor: Color.fromARGB(255, 48, 123, 104), ),
         title: Text('Create call link'),
         subtitle: Text('Share a link for whatsapp call'),
                  ),

                ],
              ),
              

        //  ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        // title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        // subtitle: Text('my status description',),),
         Text('Recent'),
         Expanded(
          child:SingleChildScrollView(
child: Column(children: [
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('Shafiq',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Row(children: [
          Icon(Icons.call_missed_outgoing_outlined,color: Colors.greenAccent,),
          Text('12:10 AM')

          
        ],),
        trailing: Icon(Icons.phone,color: Colors.red,),),
  ),
  Container(
    height: 50,
    child: ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),
        title: Text('Shafiq',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
        subtitle: Row(children: [
          Icon(Icons.call_missed_outgoing_outlined,color: Colors.red,),
          Text('12:10 AM')

          
        ],),
        trailing: Icon(Icons.video_call_outlined,color: Colors.red,),),
  ),
  
],),
),
         )
          ],
          ),

        
        ) ,
        

        ),
    );
  }
}