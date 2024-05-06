
// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AntoiadisGardenDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/BibliothecaAlexDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CitadelOfQualityDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/MontazahMosqueDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/PompeyPillarDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RomanAmphitheatreDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/StanleyBridgeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/TombsOfKomDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/AbuSimpleDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/HighDamDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/KomOmboDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/PhilaeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/TempleKalabshaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/UnfinishedObeliskDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/AmrIbnAlAasDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/BabZuweillaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/BaronPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CairoTourDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CapitageHelwanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/GreatSphinxDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/HangingChurchDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/IbnTulunDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/MosqueMadrasaadescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/OperaHouseDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/PyramidDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SaqqaraDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/KomOshimDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/MedinetMadiDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/PyramidSenusretDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/QasrQarounDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/QuranLakeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/SoknopaiouNesosDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/WadiElRayanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/WadiHitanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/AvenueSphinxeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/ColossiMernonDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/DeirElBahriDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorTempleDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/TempleKarnakDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/VallyKingsDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/VallyQueensDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/AlSalamDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/ElMasalaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/ElMontazahDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/ElTawfiziDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/FerialDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/LighthouseDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/PortFouadDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/SaltMountainDescription.dart";
import "package:graduate_project/screens/RateBlokes.dart";

class HistoricalPageExplore extends StatefulWidget {
  const HistoricalPageExplore({super.key});

  @override
  State<HistoricalPageExplore> createState() => _HistoricalPageExploreState();
}

class _HistoricalPageExploreState extends State<HistoricalPageExplore> {
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
                      'images/Historical Explore.png',height: 380,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 310),
                  child: Text(
                    "  SEE THE WORLD THROUGH FRESH \n  EYES.",
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
                  padding: EdgeInsets.only(right: 216),
                  child: Text(
                    "   Trending Sites",
                    style: TextStyle(
                        color: Color(0xffc39126),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                 SizedBox(height:10),
                  ratingBLOCK(
            image1: 'images/Pyramids.png',
            text1: "Pyramids.",
            image2: 'images/Baron Palace.png',
            text2: 'Baron Palace.',
            number1: 4.8 ,
            number2: 4.8,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PyramidDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BaronPalaceDescription();
                  },
                ),
              );
            },
          ),
         
          ratingBLOCK(
            image1: 'images/Bab Zuweilla.png',
            text1: "Bab Zuweila.", 
            image2: 'images/Opera House.png',
            text2: 'Opera House.',
            number1:3.8 ,
            number2: 4.5,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BabZuweillaDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OperaHouseDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Hanging Church.png',
            text1: 'Hanging Church.',
            image2: "images/Amr Ibn Al-A'as.png",
            text2: "Amr ibn Al-A'as.",
            number1:4.7 ,
            number2: 4.0,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HangingChurchDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AmrIbnAlAasDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Mosque Madrasa.png',
            text1: 'Mosque-Madrasa.',
            image2: 'images/Ibn Tulun Mosque.png',
            text2: 'Ibn Tulun Mosque.',
            number1:3.7 ,
            number2: 3.5,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MosqueMadrasadDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return IbnTulunDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Capritage Helwan.png',
            text1: 'Capritage Helwan.',
            image2: 'images/Cairo Tour.png',
            text2: 'Cairo Tour.',
            number1:3.5 ,
            number2: 4.9,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CapitageHelwanDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CairoTourDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Great Sphinx.png',
            text1: 'Great Sphinx.',
            image2: 'images/Saqqara Necropolis.png',
            text2: 'Saqqara Necropolis.',
            number1:4.8 ,
            number2: 4.3,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GreatSphinxDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SaqqaraDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Bibliotheca Alex.png',
            text1: "bibliotheca Alex.",
            image2: 'images/Citadel of Qaitbay.png',
            text2: 'citadel of Quality.',
            number1:4.6 ,
            number2: 4.5,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BibliothecaAlexDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CitadelOfQyalityDescription();
                  },
                ),
              );
            },
          ),
          
          ratingBLOCK(
            image1: 'images/Pompey Piller.png',
            text1: "Pompey's Pillar.",
            image2: 'images/Montazah Mosque.png',
            text2: 'Montazah Mosque.', 
            number1: 4.4,
            number2: 4.6,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PompeyPillarDescription();
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
            image1: 'images/Roman Amphitheatre.png',
            text1: 'Roman Amphitheatre.',
            image2: 'images/Stanley Bridge.png',
            text2: 'Stanley Bridge.',
             number1: 4.4,
            number2: 4.6,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RomanAmphitheatreDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StanlyBridgeDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Tombs of Kom el-Shuqafa.png',
            text1: 'Tombs of kom el-Shuqafa.',
            image2: 'images/Antoiadis Garden.png',
            text2: 'Antoiadis Garden.',
             number1: 4.5,
            number2: 4.1,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TombsOfKomDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AntoiadisGardenDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
            image1: 'images/Abu Simbel.png',
            text1: "Abu Simbel Temples.",
            image2: 'images/Philae Temple.png',
            text2: 'Philae Temple.',
            number1:4.8 ,
            number2: 4.7,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AbuSimpleDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhilaeDescription();
                  },
                ),
              );
            },
          ),          
          ratingBLOCK(
            image1: 'images/Kom Ombo Temble.png',
            text1: "Kom Ombo Temple.",
            image2: 'images/The Hidh Dam.png',
            text2: 'The High Dam.',
            number1: 4.7,
            number2: 4.8,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KomOmboDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HighDamDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Unfinished Obelisk.png',
            text1: 'The Unfinished Obelisk.',
            image2: 'images/Temple of Kalabsha.png',
            text2: 'The Temple of Kalabsha.',
             number1: 4.3,
            number2: 4.7,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UnfinishedObeliskDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TempleKalabshaDescription();
                  },
                ),
              );
            },
          ), ratingBLOCK(
            image1: 'images/Temple of Karnak.png',
            text1: "Temple of Karnak.",
            image2: 'images/Luxor Temple.png',
            text2: 'Luxor Temple.',
            number1: 4.8,
            number2: 4.8,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TempleKarnakDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LuxorTempleDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Vally of kings.png',
            text1: 'Vally of the Kings.',
            image2: 'images/Vally of Queens.png',
            text2: 'Vally of the Queens.',
             number1: 4.8,
            number2: 4.6,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return VallyKingsDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return VallyQueensDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Colossi of Memnon.png', 
            text1: 'Colossi of Memnon.',
            image2: 'images/Luxor Museum.png',
            text2: 'Luxor Museum.',
             number1: 4.6,
            number2: 4.6,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColossiMernonDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Luxor2MuseumDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/Deir el Bahri.png',
            text1: 'Deir el-Bahri.',
            image2: 'images/Avenue of Spinxes.png',
            text2: 'Avenue of the Sphinxes.',
             number1: 4.7,
            number2: 4.7,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DeirElBahriDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AvenueSphinxeDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
           image1: 'images/Salt Mountain.png',
            text1: "Salt Mountain.",
            image2: 'images/El masala garden.png',
            text2: 'El masala garden.',
              number1:4.1 ,
            number2: 4.8,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SaltMountainDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ElMasalaDescription();
                  },
                ),
              );
            },
          ),
          
          ratingBLOCK(
            image1: 'images/Ferial garden.png', 
            text1: "Ferial garden.",
            image2: 'images/El Montazah park.png',
            text2: 'El Montazah park.',
              number1:4.4 ,
            number2: 4.2,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FerialDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ElMontazahDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
            image1: 'images/El Tawfiki Mosque.png',
            text1: 'El Tawfiki Mosque.',
            image2: 'images/Al Salam Mosque.png',
            text2: 'Al Salam Mosque.',
              number1:4.7 ,
            number2: 4.7,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ElTawfiziDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlSalamDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
            image1: 'images/Port Fouad.png',
            text1: 'Port Fouad.',
            image2: 'images/Port Said Lighthouse.png',
            text2: 'Port Said Lighthouse.',
              number1:4.8 ,
            number2: 4.4,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PortFouadDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LighthouseDescription();
                  },
                ),
              );
            },
          ),
            ratingBLOCK(
          image1: 'images/Wadi el Rayan.png', 
            text1: "Wadi el Rayan.",
            image2: 'images/Kom Oshim (Karanis).png',
            text2: 'Kom Oshim (Karanis).',
            number1: 4.4 ,
            number2: 4.3,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WadiElRayanDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KomOshimDescription();
                  },
                ),
              );
            },
          ),
          
          ratingBLOCK(
             image1: 'images/Qasr Qaroun.png', 
            text1: "Qasr Qaroun Temple.",
            image2: 'images/Soknopaiou Nesos.png',
            text2: 'Soknopaiou Nesos.',
            number1: 4.2 ,
            number2: 4.5,
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return QasrQarounDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SoknopaiouNesosDescription();
                  },
                ),
              );
            },
          ),
          ratingBLOCK(
           image1: 'images/Pyramid of Senusret.png',
            text1: 'Pyramid of Senusret.',
            image2: 'images/Wadi Hitan National Park.png',
            text2: 'Wadi Hitan National Park.',
            number1: 4.6 ,
            number2: 4.7, 
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PyramidSenusretDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WadiHitanDescription();
                  },
                ),
              );
            },
          ),
           ratingBLOCK(
              image1: 'images/Quran Lake.png',
            text1: 'Quran Lake.',
            image2: 'images/Medinet Madi.png',
            text2: 'Medinet Madi.',
              number1:4.2 ,
            number2: 4.2,            
              ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return QuranLakeDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MedinetMadiDescription();
                  },
                ),
              );
            },
          ),

        ])))
    );
  }
}