import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/widgets.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:graduate_project/screens/Alexandria/HistoricalAlex.dart";
import "package:graduate_project/screens/Alexandria/HotelAlex.dart";
import "package:graduate_project/screens/Alexandria/RestaurantAlex.dart";
import "package:graduate_project/screens/CustRowIcon.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AlexArtMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/AlexMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CavafyMuseumDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/CleopatraPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/GraecoRomanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/MontazahMosqueDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RasElTinPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfAlex/RoyalJewelryDescription.dart";
import "package:graduate_project/screens/Favourite_Page.dart";
import "package:graduate_project/screens/HomePage.dart";
import "package:graduate_project/screens/Profile_Screens/profile_screen.dart";
import "package:graduate_project/screens/RateBlokes.dart";
import "package:graduate_project/screens/Search_Screen/alex_search.dart";

import "package:graduate_project/screens/splash_screens/first_screen.dart";
//import "package:graduate_project/screens/first_screen.dart";
class MuseumsAlex extends StatefulWidget {
  const MuseumsAlex({super.key});

  @override
  State<MuseumsAlex> createState() => _MuseumsAlexState();
}

class _MuseumsAlexState extends State<MuseumsAlex> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
         bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 212, 198, 168),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: GNav(
            gap: 20,
            backgroundColor: const Color.fromARGB(255, 212, 198, 168),
            color: const Color(0xff845723),
            activeColor: const Color(0xfff6d690),
            tabBackgroundColor: Colors.grey,
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return  FavouritePage();
                      },
                    ),
                  );
                },
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return  ProfileScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffFFF6E3),
       appBar: AppBar(
        backgroundColor: const Color(0xffd4c6a8),
        leading: BackButton(color: Color.fromARGB(255, 117, 76, 14),),
        title: Padding(
        padding: const EdgeInsets.only(left: 73),
        child: Image.asset(
          'images/Logo Picture.png',
          width: 150,         
        ),
      ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  ProfileScreen();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.person),color: Color.fromARGB(255, 117, 76, 14),),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AlexSearch();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.search),color: Color.fromARGB(255, 117, 76, 14),)
        ],
      ),
     

      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 130),
            child: Text(
              'Alexandria',
              style: TextStyle(
                  color: Color(0xffc39126),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 16, bottom: 15),
            child: Text(
              'Categories',
              
              style: TextStyle(fontSize: 24, color: Color(0xffc39126)),
            ),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 9, right: 4)),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CUSTRowICON(
                  image: 'images/Historical Sites.png',
                  
                  text1: 'Historical \n    Sites', 
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HistoricalAlex();
                        },
                      ),
                    );
                  },
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CUSTRowICON(
                  image: 'images/Museums.png',
                  text1: 'Musems',
                             ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MuseumsAlex();
                        },
                      ),
                    );
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CUSTRowICON(
                  image: 'images/Hotel.png',
                  text1: 'Hotels',
                       ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HotelAlex();
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CUSTRowICON(
                  image: 'images/Restaurants.png',
                  text1: 'Restaurants',
                    ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RestaurantAlex();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          //FINISH CATEGORIESSSSSSSSSSSSSSSSSSSSSSSS---------------------------
          SizedBox(height:35),

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
        ],
      ),



      
          );
  }
}




class CustomSearch extends SearchDelegate {
  List username = ['mohamed', 'mahmoud', 'ahmed', 'Joe', 'Fares'];
  List? filterList;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('You tapped on $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
          itemCount: username.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                color: const Color(0xfff6d690),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    "${username[i]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          });
    } else {
      filterList =
          username.where((element) => element.startsWith(query)).toList();
      return ListView.builder(
          itemCount: filterList!.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                color: const Color(0xfff6d690),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    "${filterList![i]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          });
    }
  }
}