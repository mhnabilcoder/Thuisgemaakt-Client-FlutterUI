import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thuisgemaakt/account.dart';
import 'package:thuisgemaakt/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        "Welkom bij Thuisgemaakt",
                        style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 200,),
                      Container(
                        height: 50,
                        width: 140,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                          },
                          child: Text('Klik Hier',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                      ),
                      SizedBox(height: 100,),
                      Text("  \"a apple a day, keeps a doctor away\" ",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("  \"eat Good feel Good\" ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
