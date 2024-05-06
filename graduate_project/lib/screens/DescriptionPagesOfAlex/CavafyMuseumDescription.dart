// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class CavafyMuseumDescription extends StatefulWidget {
  const CavafyMuseumDescription({super.key});

  @override
  State<CavafyMuseumDescription> createState() => _CavafyMuseumDescriptionState();
}

class _CavafyMuseumDescriptionState extends State<CavafyMuseumDescription> {
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
                      'images/Cavafy Museum Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Cavafy Museum.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Museum Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.3',
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
        Text("  Cavafy Museum: Cavafy Museum is an \n apartment museum in center Alexandria, \n Egypt, which formerly was the residence of \n the Greek poet Constantine P. Cavafy, where \n he lived most of his life, The apartment is \n located near Alexandria Opera House \n (Fouad St.), in Attarin division, Alexandria. \n The street name was Lepsius during \n Cavafy's life; it was renamed Sharm El \n Sheikh, then after the museum was opened, \n the narrow and short street became Cavafy \n Street, which is quite close to two of the \n city's most important streets, Fouad St. and \n Safiya Zaghloul St.  ",
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
                  child: Text("Saterday              10 Am : 3 Pm. \nSunday                10 Am : 3 Pm. \nMonday               Closed. \nTuesday               10 Am : 3 Pm. \nWendesday         10 Am : 3 Pm. \nThuresday           10 Am : 3 Pm. \nFriday                   Closed." ,
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
                        launchUrlString('https://maps.app.goo.gl/zKRXo3Sx5TTrhbHP7');
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