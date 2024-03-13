import 'package:flutter/material.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status'),
                    Icon(Icons.more_vert_rounded)
                  ],
                ),
        
              ),
              Stack(
                children: [
        ListTile(
        leading: CircleAvatar(backgroundColor: Colors.blueAccent),title: Text('My status'),
        subtitle: Text("1 min"),  
            ),
            Positioned( top: 35,left: 40, child: Column(
              children: [CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 141, 114),radius: 10,   child: Icon(Icons.add,color: Colors.white,size: 15,),)],
            )
            )
                ],
                
              ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Recently Updated'),
            ),
        stat(),
        stat(),
        stat(),
        stat(),
        stat(),
        stat(),
        stat(),
        stat(),
        stat(),
        
            ],
          ),
        ),
      ),
    );
  }
}

class stat extends StatelessWidget {
  const stat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CircleAvatar(backgroundColor: Colors.blueAccent),title: Text('shabeer'),
    subtitle: Text("12.30"),
    // trailing: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
    // children: [ 
    //   Text('Today'),CircleAvatar(backgroundColor: Colors.green,radius: 8,child: Center(child: Text('8',style: TextStyle(fontSize: 10,color: Colors.white),)),),],),
    
        );
  }
}