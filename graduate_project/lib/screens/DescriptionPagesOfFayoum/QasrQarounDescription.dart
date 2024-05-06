// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class QasrQarounDescription extends StatefulWidget {
  const QasrQarounDescription({super.key});

  @override
  State<QasrQarounDescription> createState() => _QasrQarounDescriptionState();
}

class _QasrQarounDescriptionState extends State<QasrQarounDescription> {
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
                      'images/Qasr Qaroun Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  Qasr Qaroun.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/HistoricalSitesIcon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.2',
                    style: TextStyle(
                        color:Color.fromARGB(255, 246, 214, 144),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),

                  
          SizedBox(height:17),
        Text("  Qasr Qaroun Temple: Qasr Qarun Temple, \n as mentioned in archaeological sources, is \n a temple from the Greco-Roman era and \n was dedicated to the worship of the god \n Sobek and “Dionysius,” the Roman god of \n wine and love. However, the inhabitants of \n the region in Islamic times called it Qasr \n Qarun because of its presence near Lake \n Qarun, which is adjacent to it. Which was \n given this name due to the large number of \n horns and bays in it, so it was initially \n called Lake (Al-Qurun), and it was distorted \n to Lake Qarun. Knowing that this lake was \n originally the remaining remnant of “Lake \n Maurice” in Pharaonic history, and as for \n the  number of rooms in the temple, it is \n less than a hundred rooms, and it was used \n to  store grains and for the uses of the \n temple priests at this time",
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/tRLNChEajmehSyjv7');
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
        
        

        ])))    );
  }
}