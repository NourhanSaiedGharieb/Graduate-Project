import "package:flutter/material.dart";
import "package:graduate_project/screens/Blokes2.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/HelnanRoyalDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/HiltonAlexDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/HiltonGreeenDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/PlazaHotelDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RoyalCrownDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/TolipHotelDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/EcoNubiaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/MovenpickDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/SofitelLegendDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAswan/SouestaNoubaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/FourSeasonNileDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SemiramisDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SofitelGezirahDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/TolipFamilyDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/ByoumLakeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/KomElDiKKaaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/LackHouseDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/LazibInnResortDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/TeacheByLakeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/TecheBoutiqueDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/AlMoudiraDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/NilePanoramaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/PavillonWinterDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/SofitelWinterDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/SpiritLuxorDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/SteigenbergerNileDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/GanatElNorasDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/GrandHotelDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/HelnanPortFouadDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/MaromDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/PortoResort&SpaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfPortSaid/RestaPortSaidDescription.dart";
class HotelPageExplore extends StatefulWidget {
  const HotelPageExplore({super.key});

  @override
  State<HotelPageExplore> createState() => _HotelPageExploreState();
}

class _HotelPageExploreState extends State<HotelPageExplore> {
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
                      'images/Hotels Explore.png',height: 380,width: 15550,fit: BoxFit.cover,filterQuality: FilterQuality.high,                     
                    ),                 
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 310),
                  child: Text(
                    "  WHERE ADVENTURE AWAITS AT \n  EVERY TURN.",
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
                  padding: EdgeInsets.only(right: 214),
                  child: Text(
                    "   Popular Hotels",
                    style: TextStyle(
                        color: Color(0xffc39126),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                      BLOCK2(
            image1: 'images/Sofitel Gezirah.png',
            text1: "Sofitel Gezirah.",
            image2: 'images/Four Sesson Nile.png',
            text2: 'Four Season Nile Plaza.',
            number1:4.7 ,
            number2: 4.7,
                   ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SofitelGezirahDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FourSeasonDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Semiramis Intercontinental.png',
            text1: 'Semiramis Intercontinental',
            image2: 'images/Tolip Family Park.png',
            text2: 'Tolip Family Park Hotel.',
            number1:4.8 ,
            number2: 4.2,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SemiramisDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TolipFamilyDescription();
                  },
                ),
              );
            },  
          ),

           BLOCK2(
            image1: 'images/Triumph Luxyury.png',
            text1: "Triumph Luxury Hotel.",
            image2: 'images/Indiana Hotel.png',
            text2: 'Indiana Hotel.',
            number1:4.7 ,
            number2: 3.1,
          ),
          BLOCK2(
            image1: 'images/Hilton Alex.png',
            text1: "Hilton Alexandria.",
            image2: 'images/Royal Crown Hotel.png',
            text2: 'Royal Crown Hotel.',
            number1:4.4 ,
            number2: 3.6,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HiltonAlexDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RoyalCrownDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Helnan Roya.png',
            text1: 'Helnan Royal Hotel.',
            image2: 'images/Plazza Hotel.png',
            text2: 'Plaza Hotel.',
            number1:4.5 ,
            number2: 4.1,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HelnanRoyalDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PlazaHotelDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Hilton green Plaza.png',
            text1: "Hilton green Plaza.",
            image2: 'images/Tolip Hotel.png',
            text2: 'Tolip Hotel.',
            number1:4.4 ,
            number2: 4.3,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HiltonGreenDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TolipHotelDescription();
                  },
                ),
              );
            },
          ),
           BLOCK2(
            image1: 'images/Sonesta Nouba.png',
            text1: "Sonesta Nouba Hotel.",
            image2: 'images/Movenpick Resort.png',
            text2: 'Movenpick Resort.', 
            number1: 5.0 ,
            number2: 4.7,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SouestalNoubaDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MovenpickDescription();
                  },
                ),
              );
            },
          ),
            BLOCK2(
            image1: 'images/Sofitel Legend.png',
            text1: "Sofitel Legend.",
            image2: 'images/Eco Nubia.png',
            text2: 'Eco Nubia.',
            number1: 4.9 ,
            number2: 4.5,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SofitelLegendDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EcoNubiaDescription();
                  },
                ),
              );
            },
          ),
          BLOCK2(
            image1: 'images/Pavillon Winter Luxor.png',
            text1: "Pavillon Winter Luxor.",
            image2: 'images/Steigenberger Nile Palace.png',
            text2: 'Steigenberger Nile Palace.',
            number1:4.7 ,
            number2: 4.6,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PavillonWinterDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SteigenbergerNileDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Spirit Luxor.png',
            text1: 'Spirit Luxor Luxury.',
            image2: 'images/Sofitel Winter Palace.png',
            text2: 'Sofitel Winter Palace.',
            number1:5.0 ,
            number2: 4.8,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SpiritLuxorDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SofitelWinterDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Al Moudira Hotel.png',
            text1: "Al Moudira Hotel.",
            image2: 'images/Nile Panorama Hotol.png',
            text2: 'Nile Panorama Hotol.',
            number1:4.6 ,
            number2: 4.8,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AlMoudiraDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NilePanoramaDescription();
                  },
                ),
              );
            },
          ),
          BLOCK2(
             image1: 'images/Ganat El Noras resort.png',
            text1: "Ganat El Noras resort.",
            image2: 'images/Porto Said resort.png',
            text2: 'Porto Said resort&spa.',
            number1:4.0 ,
            number2: 4.4,           
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GanatElNorasDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PortoResortDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
           image1: 'images/Grand Hotel.png', 
            text1: 'Grand hotel Port Said.',
            image2: 'images/Resta Port Said.png', 
            text2: 'Resta Port Said.',
            number1:4.3 ,
            number2: 4.2,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GrandHotelDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RestaPortSaidDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/Marom Port Said resort.png',
            text1: "Marom Port Said resort.",
            image2: 'images/Helnan Port Fouad.png',
            text2: 'Helnan Port Fouad hotel.',
            number1:4.8 ,
            number2: 4.4,
                     ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MaromDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HelnanPortFouadDescription();
                  },
                ),
              );
            },
          ),
          BLOCK2(
             image1: 'images/Teche boutique.png',
            text1: "Teche boutique.", 
            image2: 'images/Teche by Lake.png',
            text2: 'Teche by the lack.',
            number1:4.6 ,
            number2: 4.6,
                 ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TecheBoutiqueDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TeacheByLakeDescription();
                  },
                ),
              );
            },
          ),

           BLOCK2(
            image1: 'images/lazib inn resort & spa.png',
            text1: 'lazib inn resort&spa.', 
            image2: 'images/Lake House by tunisia.png',
            text2: 'Lack house-tunisia resort.',
            number1:4.5 ,
            number2: 4.6,
                 ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LazibInnResortDEscription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LackHouseDescription();
                  },
                ),
              );
            },
           
          ),

           BLOCK2(
            image1: 'images/Byoum Lackeside.png',
            text1: "Byoum Lackeside.",
            image2: 'images/Kom El Dikkaa agri Lodge.png',
            text2: 'Kom El Dikkaa agri Lodge.',
            number1:4.5 ,
            number2: 4.5,
                 ontap1: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ByoumLakeDescription();
                  },
                ),
              );
            },
            
             ontap2: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return KomElDikkaaDescription();
                  },
                ),
              );
            },
        
          ),



                       ]))),
    );
  }
}