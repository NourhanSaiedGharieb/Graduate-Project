// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class PortSaidNationalDescription extends StatefulWidget {
  const PortSaidNationalDescription({super.key});

  @override
  State<PortSaidNationalDescription> createState() => _PortSaidNationalDescriptionState();
}

class _PortSaidNationalDescriptionState extends State<PortSaidNationalDescription> {
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
                      'images/Port Said National Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  National Museum.',
                    style: TextStyle(
                        color:Color.fromARGB(255, 117, 76, 14),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Museum Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 394),
                  child: Text(
                    '                                                                Rating  4.4',
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
        Text("  port said national museum: a cultural \n institution dedicated to preserving and \n showcasing the rich history and heritage of \n the city and the surrounding region. The \n museum's exhibits cover a wide range of \n topics, including the city's role in the \n development of the Suez Canal, its \n maritime history, ancient Egyptian artifacts, \n and displays highlighting the cultural \n diversity of Port Said.Visitors to the \n museum can explore galleries filled with \n archaeological treasures, historical \n documents, photographs, and artifacts that \n offer insights into the city's past. The \n museum also hosts temporary exhibitions, \n educational programs, and events that \n engage visitors of all ages and interests",
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
                  child: Text('Saterday             8:30 Am : 9:30 Pm. \nSunday                8:30 Am : 9:30 Pm. \nMonday               8:30 Am : 9:30 Pm. \nTuesday              8:30 Am : 9:30 Pm. \nWendesday         8:30 Am : 9:30 Pm. \nThuresday           8:30 Am : 9:30 Pm. \nFriday                   8:30 Am : 9:30 Pm.' ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/n4NdSELjQmkuVpSd6');
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