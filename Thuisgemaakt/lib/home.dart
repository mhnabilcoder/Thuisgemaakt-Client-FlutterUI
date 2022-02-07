import 'package:flutter/material.dart';
import 'package:thuisgemaakt/account.dart';
import 'package:thuisgemaakt/groente_pizza.dart';
import 'package:thuisgemaakt/vorige_dagen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.amber,
// column holds all the widgets in the drawer
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children:[
                      Banner(
                        location: BannerLocation.bottomEnd,
                        message: 'ads',
                          child: DrawerHeader(child: Image.asset('assets/ads/ads1.jpeg'))),
                      ListTile(
                        leading: Icon(Icons.call),
                        title: const Text('Call Support'),
                        onTap: () {
// UrlLauncher.launch('tel: +880123456789');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.wallet_giftcard),
                        title: const Text('Offers'),
                        onTap: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => OffersScreen(),));
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.description_rounded),
                        title: const Text('Terms & Conditions'),
                        onTap: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConPage(),));
                        },
                      ),
                    ],
                  ),
                ),
// This container holds the align
                Container(
// This align moves the children to the bottom
                    child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Divider(),
                              GestureDetector(
                                onTap: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage(),));
                                },
                                child: ListTile(
                                    leading: Icon(Icons.help),
                                    title: Text('About Us',style: TextStyle(fontSize: 18),)),
                              ),
                            ],
                          ),
                        )
                    )
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.amber,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage(),));
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.account_circle,size: 40,),
                ),
              ),
            ],
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                tabs: [
                  Tab(
                    text: "Vorige Dagen",
                  ),
                  Tab(
                    text: "Recept",
                  ),
                  Tab(
                    text: "Groente Pizza",
                  ),
                ]),
            ),

          body: TabBarView(
            children: <Widget>[
              Vorige_dagenPage(),
              Recipe(),
              Groente_pizzaPage(),

            ],

          ),
        ));
  }
}

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 14,bottom: 0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(child: Text("Dag 4",style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.w600),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 2),
              child: Container(
                color: Colors.black12,
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(image: AssetImage('assets/images/recipe.jpeg'),fit: BoxFit.cover),
                    ),),
                    RecipeText(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(image: AssetImage('assets/ads/ads_benner1.jpeg')),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeText extends StatelessWidget {
  const RecipeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(

        """
Je gaat vandaag een heerlijke groente pizza maken met tomatensaus en kaas, de groentes zijn dit x naar keuze als je toch hulp nodig hebt om groentes kiezen zie hieronder een paar suggesties.

1/ 1 gele en rode papirka (stukjes snijden)
2/ 3 champignons (stukjes snijden)
3/  Artisjokken
4/  cherrytomaten
 en Verse basilicum voor de garnering. 
        """
        ,style: TextStyle(fontSize: 18),
      ),
    );
  }
}
