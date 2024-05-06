
        import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/widgets.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:graduate_project/screens/CustRowIcon.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/AvenueSphinxeDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/ColossiMernonDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/DeirElBahriDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorTempleDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/TempleKarnakDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/TombsOfNoblesDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/VallyKingsDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfLuxor/VallyQueensDescription.dart";
import "package:graduate_project/screens/Favourite_Page.dart";
import "package:graduate_project/screens/HomePage.dart";
import "package:graduate_project/screens/Luxor/HotelLuxor.dart";
import "package:graduate_project/screens/Luxor/MuseumsLuxor.dart";
import "package:graduate_project/screens/Luxor/RestaurantLuxor.dart";
import "package:graduate_project/screens/Profile_Screens/profile_screen.dart";
import "package:graduate_project/screens/RateBlokes.dart";
import "package:graduate_project/screens/Search_Screen/luxor_search.dart";


import "package:graduate_project/screens/splash_screens/first_screen.dart";
//import "package:graduate_project/screens/first_screen.dart";
class HistoricalLuxor extends StatefulWidget {
  const HistoricalLuxor({super.key});

  @override
  State<HistoricalLuxor> createState() => _HistoricalLuxorState();
}

class _HistoricalLuxorState extends State<HistoricalLuxor> {
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
                      return const LuxorSearch();
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
            padding: EdgeInsets.only(left: 170),
            child: Text(
              'Luxor',
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
                          return HistoricalLuxor();
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
                          return MuseumsLuxor();
                        },
                      ),
                    );
                  },
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
                          return HotelLuxor();
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
                          return RestauranrLuxor();
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
            image2: 'images/Tombs of the Nobles.png',
            text2: 'Tombs of Noble.',
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
                    return TombsOfNoblesDescription();
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