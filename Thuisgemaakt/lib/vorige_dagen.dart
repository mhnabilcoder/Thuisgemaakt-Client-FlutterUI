import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Vorige_dagenPage  extends StatelessWidget {
  const Vorige_dagenPage ({Key? key}) : super(key: key);

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
                child: Center(child: Text("Dagen",style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.w600),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(image: AssetImage('assets/ads/ads_benner1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.green,),
                title: Text('Vega Pasta',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.green,),
                title: Text('Pokebowl',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.green,),
                title: Text('Couscous met Greontes',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.black12,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.green,),
                title: Text('Greonte Pizza',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.blue,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.black,),
                title: Text('Noedles met tofu en tahin',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.blue,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.black,),
                title: Text('Noedles met tofu en tahin',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.blue,
                leading: Icon(FontAwesomeIcons.trophy,size: 52,color: Colors.black,),
                title: Text('Noedles met tofu en tahin',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
