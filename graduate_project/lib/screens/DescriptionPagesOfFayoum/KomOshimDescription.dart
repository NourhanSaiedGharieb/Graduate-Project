// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class KomOshimDescription extends StatefulWidget {
  const KomOshimDescription({super.key});

  @override
  State<KomOshimDescription> createState() => _KomOshimDescriptionState();
}

class _KomOshimDescriptionState extends State<KomOshimDescription> {
  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
         appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 235),
          leading: BackButton(color:Color.fromARGB(255, 117, 76, 14),),
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
                      'images/Kom Oshim Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  Kom Oshim.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 76, 14),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/HistoricalSitesIcon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.3',
                    style: TextStyle(
                        color:Color.fromARGB(255, 117, 76, 14),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),

                  
          SizedBox(height:17),
        Text("  Kom oshim(karanis): Karanis (Koinē \n Greek), located in what is now known as \n Kom Ushim, was an agricultural town in the \n Ptolemaic Kingdom , located in the \n northeastern corner of the Faiyum .  “Kranis \n was part of a scheme to settle Greek \n mercenaries among the Egyptians and \n exploit the potentially fertile Fayoum Basin. \n It was one of the cities established in the \n Arsinoite region under the leadership of \n Ptolemy II Philadelphia ",
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
                  child: Text('	Saterday            8 Am : 4 Pm. \nSunday                8 Am : 4 Pm. \nMonday               8 Am : 4 Pm. \nTuesday              8 Am : 4 Pm. \nWendesday         8 Am : 4 Pm. \nThuresday           8 Am : 4 Pm. \nFriday                   8 Am : 4 Pm.' ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/p1Hfj12R5p6Q4vKA7');
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