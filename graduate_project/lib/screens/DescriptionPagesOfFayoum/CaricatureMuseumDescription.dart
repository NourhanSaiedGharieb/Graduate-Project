// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher_string.dart";
class CaricatureMuseumDescription extends StatefulWidget {
  const CaricatureMuseumDescription({super.key});

  @override
  State<CaricatureMuseumDescription> createState() => _CaricatureMuseumDescriptionState();
}

class _CaricatureMuseumDescriptionState extends State<CaricatureMuseumDescription> {
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
                      'images/caricature Museum Description.png',height: 430,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 385),
                  child: Text(
                    '  caricature Museum.',
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
                    '                                                                Rating  4.6',
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
        Text("  caricature museum : is a unique cultural \n institution located in Fayoum, Egypt. It \n celebrates the art of caricature, featuring a \n diverse collection of humorous and \n satirical artworks created by Egyptian and \n international artists. Visitors can explore \n various exhibitions showcasing the \n evolution of caricature as a form of artistic \n expression, while also gaining insights into \n the socio-political contexts that have \n influenced the genre over time. The \n museum offers a fascinating glimpse into \n the power of humor and satire to reflect \n and critique society, making it a must-visit \n destination for art enthusiasts and anyone \n interested in the intersection of art and \n social commentary.",
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
                      onPressed: () {  launchUrlString('https://maps.app.goo.gl/gVc8juwiN4fyhSTU8');
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