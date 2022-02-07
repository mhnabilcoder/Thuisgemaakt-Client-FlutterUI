import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'favorieten_gerechten.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Account",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              height: 256,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Naam : Anis",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Achternaam : el Hamdioui",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Leeftijd : 17",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("geslacht : Man",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 4,top: 12),
                    child: Text("Hobby : Voetballen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Favorieten_gerechtenPage(),));

                  }, child: Text('Favorieten gerechten',style: TextStyle(fontSize: 22,color: Colors.white70),)),


                ],
              ),
            ),
          ),
          SizedBox(height: 100,),
          Text("  \"a apple a day, keeps a doctor away\" ",style: TextStyle(fontWeight: FontWeight.bold),),
          Text("  \"eat Good feel Good\" ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
          SizedBox(height: 50,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.linkedin,size: 42,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.facebookSquare,size: 42,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.twitterSquare,size: 42,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.instagramSquare,size: 42,),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
