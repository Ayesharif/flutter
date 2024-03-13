import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // FloatingActionButton(onPressed: (){}),
              chat(),
              chat(),
              chat(),
              chat(),
              chat(),
              chat(),
              chat(),
              chat(),
              chat(),
            ],
          ),
        ),
      )
    );
  }
}

class chat extends StatelessWidget {
  const chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.blueAccent),title: Text('shabeer'),
      subtitle: Text("whatsapp bro ...."),
      trailing: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [ 
        Text('Today'),CircleAvatar(backgroundColor: Colors.green,radius: 8,child: Center(child: Text('8',style: TextStyle(fontSize: 10,color: Colors.white),)),),],),
      
    );
  }
}