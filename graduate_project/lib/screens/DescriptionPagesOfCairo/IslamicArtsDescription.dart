// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class IslamicArtsDescription extends StatefulWidget {
  const IslamicArtsDescription({super.key});

  @override
  State<IslamicArtsDescription> createState() => _IslamicArtsDescriptionState();
}

class _IslamicArtsDescriptionState extends State<IslamicArtsDescription> {
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
                      'images/Islamic Arts Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  Islamic Arts.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 76, 14),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Museum Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.0',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 76, 14),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height:17),
        Text(" Museum of Islamic Arts, Cairo: Situated in \n the heart of Cairo, the Museum of Islamic \n Arts showcases a vast collection of Islamic \n art and artifacts from various periods and \n regions. Founded in 1881, the museum's \n exhibits include ceramics, textiles, \n metalwork, woodwork, and manuscripts, \n highlighting the rich cultural heritage of the \n Islamic world.",
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
                  child: Text('Saterday             9 Am : 5 Pm. \nSunday                9 Am : 5 Pm. \nMonday               9 Am : 5 Pm. \nTuesday               9 Am : 5 Pm. \nWendesday         9 Am : 5 Pm. \nThuresday           9 Am : 5 Pm. \nFriday                   9 Am : 5 Pm.' ,
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
                        launchUrlString('https://maps.app.goo.gl/UTYZo3yfG9LVRPhW9');
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