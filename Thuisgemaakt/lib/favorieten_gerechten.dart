import 'package:flutter/material.dart';

class Favorieten_gerechtenPage extends StatelessWidget {
  const Favorieten_gerechtenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Favorieten Gerechten'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Container(
                   height: 280,
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Container(
                           height: 220,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                               color: Colors.grey,
                               borderRadius: BorderRadius.only(topRight: Radius.circular(6.0),topLeft: Radius.circular(6.0)),
                               image: DecorationImage(
                                 image: AssetImage('assets/images/vega_pasta.jpeg'),
                                 fit: BoxFit.fill,
                               ),
                           ),
                         ),
                       ),
                       Text("vega pasta",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)
                     ],
                   ),
                   decoration: BoxDecoration(
                     color: Colors.amber,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 3,
                         blurRadius: 4,
                         offset: Offset(0, 2), // changes position of shadow
                       ),
                     ],
                   ),

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Container(
                   height: 280,
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Container(
                           height: 200,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                               color: Colors.grey,
                               borderRadius: BorderRadius.only(topRight: Radius.circular(6.0),topLeft: Radius.circular(6.0)),
                               image: DecorationImage(
                                 image: AssetImage('assets/images/couscous.jpeg'),
                                 fit: BoxFit.cover,
                               ),
                           ),
                         ),
                       ),
                       Text("Couscous met groeten",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)
                     ],
                   ),
                   decoration: BoxDecoration(
                     color: Colors.amber,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 3,
                         blurRadius: 4,
                         offset: Offset(0, 2), // changes position of shadow
                       ),
                     ],

                 ),
               ),
               ),

               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Container(
                   height: 280,
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Container(
                           height: 200,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                               color: Colors.grey,
                               borderRadius: BorderRadius.only(topRight: Radius.circular(6.0),topLeft: Radius.circular(6.0)),
                               image: DecorationImage(
                                 image: AssetImage('assets/images/greonte_pizza.jpeg'),
                                 fit: BoxFit.cover,
                               ),
                           ),
                         ),
                       ),
                       Text("groente pizza",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)
                     ],
                   ),
                   decoration: BoxDecoration(
                     color: Colors.amber,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 3,
                         blurRadius: 4,
                         offset: Offset(0, 2), // changes position of shadow
                       ),
                     ],

                   ),

                 ),
               ),
            Banner(
              message: 'ads',
              location: BannerLocation.bottomEnd,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('assets/ads/ads2.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
               Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(6.0),topLeft: Radius.circular(6.0)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/pizza_gorgeone.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Pizza gorgonzola met groene groenten",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2), // changes position of shadow
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
