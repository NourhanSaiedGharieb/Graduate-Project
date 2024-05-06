// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class RoyalJewelryDescription extends StatefulWidget {
  const RoyalJewelryDescription({super.key});

  @override
  State<RoyalJewelryDescription> createState() => _RoyalJewelryDescriptionState();
}

class _RoyalJewelryDescriptionState extends State<RoyalJewelryDescription> {
  @override
  Widget build(BuildContext context) {
   
  return Scaffold( 
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 235),
          leading: BackButton(color: Color.fromARGB(255, 117, 76, 14),),
        title:Padding( 
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
                      'images/Royal Jewelry Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Royal Jewelry.",
                    style: TextStyle(
                        color: Color(
                          0xff82581b,
                        ),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Museum Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.6',
                    style: TextStyle(
                        color: Color(
                          0xff82581b,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height:17),
        Text("  Royal Jewelry Museum: The Royal Jewelry \n Museum is an art and history museum in \n the Zizenia neighborhood of Alexandria, \n Egypt. It is located in the former palace of \n Princess Fatma Al-Zahra'. The building's \n halls contain an inestimable collection of \n jewels and jewelry of the Muhammad Ali \n Dynasty 19th-century paintings, statues, \n and decorative arts are also exhibited in the \n rooms and lobbies, The museum was first \n inaugurated on 24 October 1986. After \n several years of renovations and expansion \n it was reopened in April 2010.",
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
                  child: Text("Saterday             9 Am : 4:15 Pm. \nSunday                9 Am : 4:15 Pm. \nMonday               9 Am : 4:15 Pm. \nTuesday               9 Am : 4:15 Pm. \nWendesday         9 Am : 4:15 Pm. \nThuresday           9 Am : 4:15 Pm. \nFriday                   9 Am : 4:15 Pm." ,
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
                      onPressed: () {
                        launchUrlString('https://maps.app.goo.gl/FJ9X6Sc7WTQpmQtv9');
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

        SizedBox(height:40),

        ]))),
    );
  }
}