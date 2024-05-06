// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class NilePanoramaDescription extends StatefulWidget {
  const NilePanoramaDescription({super.key});

  @override
  State<NilePanoramaDescription> createState() => _NilePanoramaDescriptionState();
}

class _NilePanoramaDescriptionState extends State<NilePanoramaDescription> {
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
                      'images/Nile Panorama Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Nile Panorama.",
                    style: TextStyle(
                        color: Color(
                          0xff82581b,
                        ),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Hotels Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 395),
                  child: Text(
                    '                                                                Rating  4.8',
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
        Text("  Nile Panorama Hotel: Boasting panoramic \n views of the Nile River, Nile Panorama Hotel \n provides a comfortable and convenient \n base for exploring Luxor's attractions. The \n hotel offers well-appointed rooms and \n suites, each equipped with modern \n amenities for a relaxing stay. Guests can \n enjoy international cuisine at the hotel's \n restaurant, unwind on the rooftop terrace \n with breathtaking vistas, or take a leisurely \n stroll along the riverbank. With its \n affordable rates and friendly service, Nile \n Panorama Hotel caters to travelers seeking \n value without compromising on comfort.",
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
                  child: Text("Always Open." ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/x4u8c5ZQhiuZ86xB7');
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
                        '01018388249',
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