import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
  height: double.infinity,
  color: Colors.black,
  child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(

  
          child: Column(
        children: [
        
          Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.all(20),),
          Text('Filter',style:TextStyle(fontSize: 23,color: Colors.white)),
          Icon(Icons.filter_alt_outlined,color: Colors.white,),
        ],
          ),
  
            Row(
              
              children: [
              Padding(padding: EdgeInsets.all(20 )),
                Text("Men's Collection",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),),
              ],
            ),
       cardsRow(), 
       Row(
              
              children: [
              Padding(padding: EdgeInsets.all(20 )),
                Text("Women's Collection",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),),
              ],
            ),        
            cardsRow(),
                 Row(
              
              children: [
              Padding(padding: EdgeInsets.all(20 )),
                Text("Kid's Collection",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),),
              ],
            ),
            cardsRow()
        ],
          )
          
          
        ),
      ),
),
    );
  }
}

class cardsRow extends StatelessWidget {
  const cardsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.amber,
     
      child: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
              child: Column(
         
         children: [
      
           Column(
             children: [
      Row(
             children: [
               product(),
               product(),
               product(),
               product(),
               product(),
               product(),
               product(),
               product(),
               product(),
               product(),
         
         
             ],
         
           ) 
             ],
           ),
      
           
         ],
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      // color: Color.fromARGB(220, 230, 230, 230),
      padding: EdgeInsets.all(10),
      child: Card(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            
               Image.asset('sht2.jpg' ,height: 250 ,width: 250,),
               Text('Price  :  1100')
          ],
        ),
      ),
    );
  }
}

