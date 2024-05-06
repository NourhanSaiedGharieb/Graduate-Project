// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class TempleKarnakDescription extends StatefulWidget {
  const TempleKarnakDescription({super.key});

  @override
  State<TempleKarnakDescription> createState() => _TempleKarnakDescriptionState();
}

class _TempleKarnakDescriptionState extends State<TempleKarnakDescription> {
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
                      'images/Temple of Karnak Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Temple of Karnak.",
                    style: TextStyle(
                        color: Color(
                          0xff82581b,
                        ),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/HistoricalSitesIcon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 395),
                  child: Text(
                    '                                                                Rating  4.8',
                    style: TextStyle(
                        color:Color(
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
        Text("  Temple of Karnak: Karnak or the Karnak \n Temple Complex, which is known as the \n Karnak Temple, is a group of temples, \n buildings and columns, where expansion \n and construction operations continued \n from the Pharaonic era, specifically the \n kings of the Middle Kingdom, until the \n Roman era in Luxor in Egypt on the Eastern \n Shore. The temple was built for the divine \n trinity of Amun (Amun Ra in modern times), \n his wife, the goddess Mut, and their son, \n the god Khonsu. Each of them has a temple \n belonging to the Karnak Temple Complex. \n Sometimes tourists and non-specialists in \n the Karnak Temple only mean the temple \n belonging to Amun i Amun Ra",
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
                  child: Text("Saterday             6 Am : 5:30 Pm. \nSunday                6 Am : 5:30 Pm. \nMonday               6 Am : 5:30 Pm. \nTuesday              6 Am : 5:30 Pm. \nWendesday         6 Am : 5:30 Pm. \nThuresday           6 Am : 5:30 Pm. \nFriday                   6 Am : 5:30 Pm." ,
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
                        launchUrlString('https://maps.app.goo.gl/Vr8mZeCpe3vuwnkw9');
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

        ])))
    );
  }
}