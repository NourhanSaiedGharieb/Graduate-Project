// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class PizzaRomaDescription extends StatefulWidget {
  const PizzaRomaDescription({super.key});

  @override
  State<PizzaRomaDescription> createState() => _PizzaRomaDescriptionState();
}

class _PizzaRomaDescriptionState extends State<PizzaRomaDescription> {
  @override
  Widget build(BuildContext context) {

  return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 235),
          leading: BackButton(color: Color.fromARGB(255, 117, 76, 14),),
        title: Padding(
        padding: const EdgeInsets.only(left: 73),
        child: Image.asset(
          'images/Logo Picture.png',
          width: 150,         
        ),
      ),
        ),
          
      backgroundColor: Color.fromARGB(255, 255, 249, 235),
      body:Container(
        
          child:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

            width: double.infinity,
            child: Stack(
              children: [           

                Padding(
                  padding: const EdgeInsets.only(left: 1, top: 1),
                  child: Stack(children: [
                    Image.asset(
                      'images/Pizza Roma Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Pizza Roma.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Restaurants Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 395),
                  child: Text(
                    '                                                                Rating  4.6',
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 214, 144),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height:17),
        Text("  Pizza Roma.it: Pizza Roma.it brings the \n flavors of Italy to Luxor with its authentic \n wood-fired pizzas and Italian specialties. \n Located in the city center, this cozy pizzeria \n offers a casual dining experience perfect \n for families and pizza enthusiasts alike. \n Guests can choose from a variety of \n toppings and enjoy freshly baked pizzas \n made with quality ingredients, \n accompanied by a selection of refreshing \n beverages.",
        textAlign: TextAlign.start,
        style: GoogleFonts.robotoCondensed(
          fontSize:25,color:Color.fromARGB(255, 117, 76, 14),
        ),
        ),
      
        SizedBox(height:17),
          Image.asset('images/Days to visit.png'),
            SizedBox(height:12),
            Center(
                 child: Padding(
                  padding:EdgeInsets.only(top: 7,left: 5),
                  child: Text("Saterday             12 Am : 12 Pm. \nSunday                12 Am : 12 Pm. \nMonday               12 Am : 12 Pm. \nTuesday              12 Am : 12 Pm. \nWendesday         12 Am : 12 Pm. \nThuresday           12 Am : 12 Pm. \nFriday                   12 Am : 12 Pm." ,
                  style: TextStyle(
                    fontFamily: 'Merienda',                    
                    color: Color.fromARGB(255, 117, 76, 14),
                    fontSize:22,
                  ),
                  ),
                   ),
              ),
              SizedBox(height:17),
              Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.location_pin,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 25.0,
                      ),
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/8kbq4QdLGXUCAHNC7');
                      },
                      label: const Text(
                        'Location.',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14),fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),                  
                  ),

           SizedBox(height:20),
         Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 25.0,
                      ),
                      label: const Text(
                        '01118799559',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14),fontSize: 20),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),                  
                  ),
                  SizedBox(height:20),

        ])))
    );
  }
}