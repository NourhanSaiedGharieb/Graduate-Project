import "package:flutter/material.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AlexArtMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AlexMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CavafyMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CleopatraPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/GraecoRomanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/MontazahMosqueDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RasElTinPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RoyalJewelryDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/AswanMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/EliphantineDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/NileDEscription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/NubianDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/ChildMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CopticDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/EgyptionAntiqueDesciption.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/EgyptionRailwayDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/GeologyMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/GrandMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/IslamicArtsDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/NationalMilitaryDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/AbuElLeafDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/CaricatureMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/ElRoubyDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/HangingDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/KomAushimDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/MonasteryOfGabrielDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/ArtMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/KarnakOpenAirDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/MummificationDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/NoblesArtDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/SelkhetPapyrusDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/ElNasrMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/PortSaidMilitaryDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/PortSaidNationalDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/SaintEugenieDescription.dart";
import "package:graduate_project/screens/RateBlokes.dart";


class MuseumPageExplore extends StatefulWidget {
  const MuseumPageExplore({super.key});

  @override
  State<MuseumPageExplore> createState() => _MuseumPageExploreState();
}

class _MuseumPageExploreState extends State<MuseumPageExplore> {
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
                      'images/Museum Explore.png',height: 380,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 310),
                  child: Text(
                    "  LET US TAKE YOU ON A JOURNEY \n  OF A LIFETIME.",
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
                  padding: EdgeInsets.only(right: 175),
                  child: Text(
                    "   Popular Museums",
                    style: TextStyle(
                        color: Color(0xffc39126),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
          ratingBLOCK(
            image1: 'images/Egyptian Antiquities.png',
            text1: 'Egyptian Antiquities.',
            image2: 'images/Islamic Arts.png',
            text2: 'Museum of Islamic Arts.',
            number1: 4.8,
            number2: 4.0,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EgyptionAntiqueDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return IslamicArtsDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Coptic Museum.png',
            text1: "Coptic Museum.",
            image2: 'images/Grand Egyptian Museum.png',
            text2: 'Grand Egyptian Museum.',
            number1: 4.2,
            number2: 4.8,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CoptivDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GrandMuseumDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/National Military Museum.png',
            text1: 'National Military Museum.',
            image2: 'images/Egyptian Railway.png',
            text2: 'Egyptian Railway Museum.',
            number1: 3.8,
            number2: 4.0,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NationalMilitaryDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EgyptianRailwayDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Egyptian Geology Museum.png',
            text1: 'Egyptian Geology Museum.',
            image2: 'images/The Child Museum.png',
            text2: "The Child Museum.",
            number1: 3.9,
            number2: 4.8,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EgyptianGeologyDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ChildDescription();
                  },
                ),
              );
            },
          ),
                  ratingBLOCK(
            image1: 'images/Alex Museum.png',
            text1: "Alexandria Museum.",
            image2: 'images/Graeco Roman.png', 
            text2: 'Graeco-Roman Museum.',
             number1: 4.4,
            number2: 4.4,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlexMuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GraecoRomanDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Alex Art Museum.png',
            text1: "Alexandria Art Museum.",
            image2: 'images/Royal Jewelry.png',
            text2: 'Royal Jwewelry Museum.',
             number1: 4.4,
            number2: 4.6,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlexArtMuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RoyalJewelryDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Cavafy Museum.png', 
            text1: 'cavafy Museum.',
            image2: 'images/Montazah Palace.png',
            text2: 'Montazah Palace.',
             number1: 4.3,
            number2: 4.5,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CavafyMuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MontazahMosqueDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Ras El Tin Palace.png',
            text1: 'Ras El Tin Palace.',
            image2: 'images/Cleopatra Palace.png',
            text2: "Cleopatra's Place.",
             number1: 4.4,
            number2: 5.0,
             ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RasElTinPalaceDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CleopatraPalaceDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/The Nile Museum.png',
            text1: "The Nile Museum.",
            image2: 'images/The Nubian.png',
            text2: 'The Nubian Museum.',
            number1: 4.3,
            number2: 4.6,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NileDesscription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NubianDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Elephantine Island.png',
            text1: "Elephantine Island.",
            image2: 'images/Aswan.png',
            text2: 'Aswan Museum.',
            number1: 4.6,
            number2: 4.1,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EliphantineDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AswanMuseumDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Monastery of Archangel.png',
            text1: 'Monastery of Archangel.',
            image2: 'images/Abu el leaf Monastery.png',
            text2: 'Abu el leaf Monastery.',
            number1: 4.8,
            number2: 5.0,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MonasteryOfGabrielDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AbuElLeafDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/El Rouby Mosque.png',
            text1: "El Rouby Mosque.",
            image2: 'images/Hanging Mosque.png',
            text2: 'Hanging Mosque.',
            number1: 4.5,
            number2: 4.5,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ElRoubyDescription();
                    }
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HangingDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Kom Aushim Museum.png',
            text1: "Kom Aushim Museum.",
            image2: 'images/caricature Museum.png',
            text2: 'caricature Museum.',
            number1: 4.1,
            number2: 4.6,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KomAushimDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CaricatureMuseumDescription();
                  },
                ),
              );
            },
          ),
              ratingBLOCK(
            image1: 'images/luxor-museum.png',
            text1: 'luxor-museum.',
            image2: 'images/Nobles Art Gallery.png',
            text2: 'Nobles Art Gallery.',
            number1: 4.6,
            number2: 5.0,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Luxor2MuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NoblesArtDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/karnak Open Air.png',
            text1: "karnak Open Air.",
            image2: 'images/selkhet Papyrus.png',
            text2: 'selkhet Papyrus.',
            number1: 4.9,
            number2: 4.0,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KarnakOpenAirDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SelkhetPapyrusDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Art Museum.png',
            text1: "Art Museum.",
            image2: 'images/Mummification.png',
            text2: 'Mummification Museum.',
            number1: 4.8,
            number2: 4.3,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ArtMuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MummificationDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Port Said National Museum.png',
            text1: 'National Museum.',
            image2: 'images/Port Said Military.png',
            text2: 'Military Museum.', 
            number1: 4.4,
            number2: 4.4,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PortSaidNationalDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PortSaidMilitaryDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/el-nasr-museum-for-modern.png',
            text1: 'El-nasr-museum.',
            image2: 'images/Saint Eugenie Church.png',
            text2: 'Saint Eugenie Church.',
            number1: 4.4,
            number2: 4.8,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ElNasrMuseumDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SaintEugenieDescription();
                  },
                ),
              );
            },
          ),

           ])))
    );
  }
}