import 'package:flutter/material.dart';

class Groente_pizzaPage  extends StatelessWidget {
  const Groente_pizzaPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 8.0,right: 8,top: 14,bottom: 2),
               child: Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width,
                 color: Colors.black,
                 child: Center(child: Text("recepten van vandaag",style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.w600),)),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: Container(
                 height: 100,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: Colors.grey,
                   image: DecorationImage(image: AssetImage('assets/ads/ads_benner1.jpeg'),fit: BoxFit.fill),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ListTile(
                 tileColor: Colors.black12,
                 leading: Icon(Icons.check_circle,size: 52,color: Colors.black,),
                 title: Text('Pizza deeg',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ListTile(
                 tileColor: Colors.black12,
                 leading: Icon(Icons.check_circle,size: 52,color: Colors.black,),
                 title: Text('Tomatensaus',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ListTile(
                 tileColor: Colors.black12,
                 leading: Icon(Icons.check_circle,size: 52,color: Colors.black,),
                 title: Text('Groentes naar keuze',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 tileColor: Colors.black12,
                 leading: Icon(Icons.add_circle,size: 52,color: Colors.black,),
                 title: Text('Kaas',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 tileColor: Colors.black12,
                 leading: Icon(Icons.add_circle,size: 52,color: Colors.black,),
                 title: Text('Oven',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
