// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class TecheBoutiqueDescription extends StatefulWidget {
  const TecheBoutiqueDescription({super.key});

  @override
  State<TecheBoutiqueDescription> createState() => _TecheBoutiqueDescriptionState();
}

class _TecheBoutiqueDescriptionState extends State<TecheBoutiqueDescription> {
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
                      'images/Teche boutique Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    "  Teche boutique.",
                    style: TextStyle(
                        color:  Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Hotels Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 393),
                  child: Text(
                    '                                                                Rating  4.6',
                    style: TextStyle(
                        color:  Color.fromARGB(255, 246, 214, 144),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height:17),
        Text("  Teche Boutique : ache Boutique Hotel \n Fayoum offers accommodation with a \n restaurant, free private parking, an outdoor \n swimming pool and a shared lounge. The \n property is 3.2 km from Batna Hafez and 13 \n km from Qarat El-Sbikha. Offering a garden \n and barbecue facilities, the accommodation \n includes a 24-hour front desk and room \n service for guests. Guests of this hotel can \n enjoy a halal breakfast. Tache Boutique \n Hotel Fayoum offers a terrace. Barat Negev \n is 13 km from the accommodation, while \n QQ Safe is 15 km away. The nearest airport \n is Cairo International Airport, 141km from \n Tache Boutique Hotel Fayoum, and the \n property offers a paid airport shuttle \n service.",
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
                  child: Text("Always open." ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/PEPySpSXbyhSg58x8');
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
                      " 01141115500",
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