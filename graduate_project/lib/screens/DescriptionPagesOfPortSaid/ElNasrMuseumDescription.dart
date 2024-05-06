// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class ElNasrMuseumDescription extends StatefulWidget {
  const ElNasrMuseumDescription({super.key});

  @override
  State<ElNasrMuseumDescription> createState() => _ElNasrMuseumDescriptionState();
}

class _ElNasrMuseumDescriptionState extends State<ElNasrMuseumDescription> {
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
                      'images/el-nasr-museum-for-modern Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  ElNasr Museum.',
                    style: TextStyle(
                        color:Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Museum Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 392),
                  child: Text(
                    '                                                                Rating  4.4',
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
        Text("  El nasr museum for modern art: a branch \n of the renowned El Nasr for Modern Art \n institution, located in the city of Port Said, \n Egypt. Established to bring contemporary \n art closer to residents and visitors of Port \n Said, this branch serves as a platform for \n showcasing local and international artists, \n organizing exhibitions, and hosting cultural \n events. It contributes to enriching the \n cultural landscape of Port Said by providing \n opportunities for artistic exploration and \n engagement within the community.",
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
                  child: Text('Saterday             9:30 Am : 1:30 Pm. \nSunday                9:30 Am : 1:30 Pm. \nMonday               9:30 Am : 1:30 Pm. \nTuesday              9:30 Am : 1:30 Pm. \nWendesday         9:30 Am : 1:30 Pm. \nThuresday           9:30 Am : 1:30 Pm. \nFriday                   9:30 Am : 1:30 Pm.' ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/Cyaiuktgm3aLMXFJ7');
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