// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class STALBYTDescription extends StatefulWidget {
  const STALBYTDescription({super.key});

  @override
  State<STALBYTDescription> createState() => _STALBYTDescriptionState();
}

class _STALBYTDescriptionState extends State<STALBYTDescription> {
  @override
  Widget build(BuildContext context) {

  return  Scaffold(
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
                      'images/ST ALBYT Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  ST ALBYT.',
                    style: TextStyle(
                        color:Color.fromARGB(255, 246, 214, 144),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Image.asset(
                      'images/Restaurants Icon.png',height: 70,width: 180,),


                      const Padding(
                  padding: EdgeInsets.only(top: 393),
                  child: Text(
                    '                                                                Rating  4.9',
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
        Text("  ST ALBYT : renowned for its delicious \n Egyptian cuisine and warm hospitality. \n Located in the heart of the city, it offers a \n cozy atmosphere where guests can enjoy \n authentic Egyptian dishes prepared with \n fresh, locally sourced ingredients. From \n traditional favorites like koshari and ful \n medames to grilled meats and seafood \n specialties, St. Albyt delights diners with its \n flavorful menu options. The restaurant's \n friendly staff and inviting ambiance make it \n a popular choice for both locals and \n tourists looking to experience the rich \n culinary heritage of Egypt.",
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
                  child: Text('Saterday             8 Am : 7 Pm. \nSunday                8 Am : 7 Pm. \nMonday               8 Am : 7 Pm. \nTuesday               8 Am : 7 Pm. \nWendesday         8 Am : 7 Pm. \nThuresday           8 Am : 7 Pm. \nFriday                   8 Am : 7 Pm.' ,
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/J3ntcWBSmeZzShbeA');
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
                        '01125920199',
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