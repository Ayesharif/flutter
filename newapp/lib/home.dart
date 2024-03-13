import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  String dropdownvalue = '';    
  
  // List of items in our dropdown menu 
  var items = [     
    'Purchases', 
    'Sales', 
      ]; 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Digital Khata',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color.fromARGB(255, 122, 113, 86),
          centerTitle: true,
          actions: [
            ElevatedButton(
        
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(style: BorderStyle.none))),
                    backgroundColor: MaterialStatePropertyAll(
                        const Color.fromARGB(255, 122, 113, 86)),
                    shadowColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                   DropdownButton( 
                
              // Initial Value 
              value: dropdownvalue, 
                
              // Down Arrow Icon 
              icon: const Icon(Icons.keyboard_arrow_down),     
                
              // Array list of items 
              items: items.map((String items) { 
                return DropdownMenuItem( 
                  value: items, 
                  child: Text(items), 
                ); 
              }).toList(), 
              // After selecting the desired option,it will 
              // change button value to selected value 
              onChanged: (String? newValue) {  
                setState(() { 
                  dropdownvalue = newValue!; 
                }); 
              }, 
            ); },
                
                child: Icon(Icons.add,color: Colors.white,))
          ],
          // leading: Icon(Icons.),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              text: 'Purchases',
            ),
            Tab(
              text: 'Sales',
            ),
            Tab(
              text: 'Purchases',
            )
          ]),
        ),
        body: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
