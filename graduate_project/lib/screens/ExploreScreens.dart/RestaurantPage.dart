// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:graduate_project/screens/Blokes2.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AbouElSidDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CafeDeLaPaixDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/FishMarketDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/GreekClubDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/OldStreetCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/PabloCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/TrianonDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/WaveCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/ArtCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/BobMarleyDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/DoKkaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/IbizaFreeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/KermaNubianDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/SalahElDinDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CafeCornicheDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/GADDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/HadramootDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/KramelshamDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/Pier88NileDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/Safary2000Description.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SmokeyDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/ZitouniDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/ArabianNightsDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/IbisRestaurantDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/LazaniaPastaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/OzziDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/STALBYTDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/TamamCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/1886RestaurantDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/GerdaGardenDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/KoshariAlzaeemDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/PizzaRomaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/SofraDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/WenKieGermanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/AlfaOiattoDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/AlgarageDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/AvenueCafeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/CovinaSeaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/HighBurgerDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/PizzaPinoDescription.dart";
class RestaurantPageExplore extends StatefulWidget {
  const RestaurantPageExplore({super.key});

  @override
  State<RestaurantPageExplore> createState() => _RestaurantPageExploreState();
}

class _RestaurantPageExploreState extends State<RestaurantPageExplore> {
  @override
  Widget build(BuildContext context) {

  return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 235),
          leading: BackButton(color: Color.fromARGB(255, 117, 76, 14),),
        title: Padding(
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
                      'images/Restaurant Explore.png',height: 380,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 310),
                  child: Text(
                    "  ESCAPE THE ORDINARY AND \n  DISCOVER THE EXTRAORDINARY.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height:5),      
            Padding(
                  padding: EdgeInsets.only(right: 155),
                  child: Text(
                    "   Best Vibes For You!",
                    style: TextStyle(
                        color: Color(0xffc39126),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                 BLOCK2(
            image1: 'images/Zitouni.png',
            text1: "Zitouni.",
            image2: 'images/Karam elsham.png',
            text2: 'Karam elsham.',
            number1:4.6 ,
            number2: 4.0,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ZitouniDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KaramElshamDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Safary 2000.png',
            text1: 'Safary 2000.',
            image2: 'images/Cafe Corniche.png',
            text2: 'Cafe Corniche.',
            number1:4.1 ,
            number2: 4.3,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Safary2000Description();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CafeCornicheDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/The Smokey.png',
            text1: "The Smokey.",
            image2: 'images/GAD.png',
            text2: 'GAD.',
            number1:4.4 ,
            number2: 3.8,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SmokeyDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GADDescription();
                  },
                ),
              );
            },
          ),
                 BLOCK2(
            image1: 'images/Hadramoot.png',
            text1: "Hadrmoot.",
            image2: 'images/Pier 88Nile River.png',
            text2: 'Pier 88 Nile River.',
            number1:3.8 ,
            number2: 4.4,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HadramootDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Pier88NileDescription();
                  },));}),
                   BLOCK2(
            image1: 'images/Wave Cafe.png',
            text1: "Wave Cafe.",
            image2: 'images/Cafe de la Paix.png',
            text2: 'Cafe de la paix.',
            number1:4.1 ,
            number2: 4.1,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WaveCafeDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CafeDelaPaixDescription();
                  },
                ),
              );
            },
          ),
           BLOCK2(
            image1: 'images/Pablo Cafe.png',
            text1: 'Pablo Cafe & Restaurant.',
            image2: 'images/Old Street Cafe.png',
            text2: 'Old street cafe.',
            number1:4.2,
            number2: 4.5, 
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PabloCafeDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OldStreetCafeDescription();
                  },
                ),
              );
            },
          ),
          BLOCK2(
            image1: 'images/Fish Market.png',
            text1: 'Fish Market Restaurant.',
            image2: 'images/Abou El Sid.png',
            text2: 'Abou El Sid.',
            number1:4.2 ,
            number2: 4.9,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FishMarketDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AbouElSidDescription();
                  },
                ),
              );
            },
          ),
          BLOCK2(
            image1: 'images/Greek Club.png',
            text1: 'Greek Club.',
            image2: 'images/Trianon.png',
            text2: 'Trianon.',
            number1:4.3 ,
            number2: 4.4,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GreekClubDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TrainonDescription();
                  },
                ),
              );
            },
          ),
            BLOCK2(
            image1: 'images/Bob Maley.png',
            text1: "Bob Marley Moonlight.",
            image2: 'images/Ibiza Free Beach.png',
            text2: 'Ibiza Free Beach.',
            number1:4.7 ,
            number2: 4.5,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BobMarleyDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return IbizaFreeDEscription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Salah El Din.png', 
            text1: 'Salah El Din Restaurant.',
            image2: 'images/Kerma Nubian.png',
            text2: 'Kerma Nubian Restaurant.',
            number1:3.9 ,
            number2: 4.9,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SalahElDinDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KermaNubianDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/El Dokka.png',
            text1: "El DOKKA.",
            image2: 'images/Art Cafe.png',
            text2: 'Art Cafe.',
            number1:4.2 ,
            number2: 4.1,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DokkaDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ArtCafeDescription();
                  },
                ),
              );
            },
          ),
       BLOCK2(
            image1: 'images/Arabian Nights Country Club.png',
            text1: "Arabian Nights Country.",
            image2: 'images/Lazania Pasta Restaurant.png',
            text2: 'Lazania Pasta Restaurant.', 
            number1:4.1 ,
            number2: 4.1,
                      ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ArabianNightsDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LazaniaPastaDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Ozzi Restaurant.png',
            text1: 'Ozzi Restaurant.',
            image2: 'images/Tamam Cafe & Restaurant.png',
            text2: 'Tamam Cafe & Restaurant.',
            number1:3.9 ,
            number2: 4.0,
                      ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OzziDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TamamCafeDEscription();
                  },
                ),
              );
            },
          ),
           BLOCK2(
            image1: 'images/Ibas Restaurant.png',
            text1: 'Ibas Restaurant.',
            image2: 'images/ST ALBYT.png',
            text2: 'ST ALBYT.',
            number1:4.7 ,
            number2: 4.9,
                      ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return IbisRestaurantDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return STALBYTDescription();
                  },
                ),
              );
            },
          ),
             BLOCK2(
            image1: 'images/Sofra.png',
            text1: "Sofra.",
            image2: 'images/1886 Reastaurant.png',
            text2: '1886 Restaurant.',
            number1:4.4 ,
            number2: 4.0,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SofraDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Restaurant1886Description();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: "images/Grandas Garden.png",
            text1: "Gerda's Garden.",
            image2: 'images/Pizza Roma.png', 
            text2: 'Pizza Roma.It.',
            number1:4.3 ,
            number2: 4.6,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GerdaGardenDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PizzaRomaDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: "images/WenKies German.png",
            text1: "Wenkie's German.",
            image2: 'images/Koshari Alzaeem.png',
            text2: 'Koshari Alzaeem.',
            number1:4.6 ,
            number2: 3.6,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WenkieGermanDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KoshariAlzaeemDescription();
                  },
                ),
              );
            },
          ),
             BLOCK2(
            image1: 'images/Corvina sea food.png',
            text1: "Corvina sea food.",
            image2: 'images/High Burger.png',
            text2: 'High burger.',
            number1: 4.5 ,
            number2: 4.0,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CovinaSeaDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HighBurderDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Pizza Pino.png', 
            text1: 'Pizza Pino.',
            image2: 'images/Avenue Restaurant.png',
            text2: 'Avenue restaurant & cafe.',
            number1: 4.1 ,
            number2: 4.4,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PizzaPinoDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AvenueCafeDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Algarage Port Said.png', 
            text1: "Algarage_Port Said.",
            image2: 'images/Alfa Piatto.png',
            text2: 'Alfa Piatto.',
            number1: 4.3 ,
            number2: 4.4,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlgarageDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlfaOiattoDescription();
                  },
                ),
              );
            },
          ),
                   ]))),
    );
  }
}