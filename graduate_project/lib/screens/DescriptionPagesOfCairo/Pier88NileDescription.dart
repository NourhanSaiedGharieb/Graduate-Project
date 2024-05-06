// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class Pier88NileDescription extends StatefulWidget {
  const Pier88NileDescription({super.key});

  @override
  State<Pier88NileDescription> createState() => _Pier88NileDescriptionState();
}

class _Pier88NileDescriptionState extends State<Pier88NileDescription> {
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
                      'images/Pier 88Nile River Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  Pier 88 River.',
                    style: TextStyle(
                        color:Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Restaurants Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Text(
                    '                                                                Rating  4.8',
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
        Text("•	Pier 88 Nile River: Pier 88 Nile River is a \n waterfront restaurant and bar situated on \n the banks of the Nile River, offering \n stunning views of the city skyline and the \n river. The restaurant specializes in seafood \n and Mediterranean cuisine, featuring fresh \n catches of the day, grilled specialties, and \n flavorful seafood dishes. Guests can dine \n al fresco on the spacious terrace or indoors \n in a stylish and contemporary setting, \n making Pier 88 Nile River an ideal \n destination for a memorable dining \n experience in Cairo.",
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
                  child: Text('Saterday             8 Am : 3 Pm. \nSunday                8 Am : 3 Pm. \nMonday               8 Am : 3 Pm. \nTuesday               8 Am : 3 Pm. \nWendesday         8 Am : 3 Pm. \nThuresday           8 Am : 3 Pm. \nFriday                   8 Am : 3 Pm.' ,
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
                        launchUrlString(' https://maps.app.goo.gl/GaHsbTJMAbSEMcE37');
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
                        '01208111130',
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