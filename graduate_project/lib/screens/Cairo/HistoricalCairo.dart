import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/widgets.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:graduate_project/core/SharedPref/shared_helper.dart";
import "package:graduate_project/screens/Cairo/HotelCairo.dart";
import "package:graduate_project/screens/Cairo/MuseumsCairo.dart";
import "package:graduate_project/screens/Cairo/RestaurantCairo.dart";
import "package:graduate_project/screens/CustRowIcon.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/AmrIbnAlAasDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/BabZuweillaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/BaronPalaceDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CairoTourDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/CapitageHelwanDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/FourSeasonNileDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/GreatSphinxDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/HangingChurchDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/IbnTulunDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/MosqueMadrasaadescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/OperaHouseDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/PyramidDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SaqqaraDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfCairo/SofitelGezirahDescription.dart";
import "package:graduate_project/screens/Favourite_Page.dart";
import "package:graduate_project/screens/HomePage.dart";
import "package:graduate_project/screens/Profile_Screens/profile_screen.dart";
import "package:graduate_project/screens/RateBlokes.dart";
import "package:graduate_project/screens/Search_Screen/cairo_search.dart";

import "package:graduate_project/screens/splash_screens/first_screen.dart";

//import "package:graduate_project/screens/first_screen.dart";
class HistoricalCairo extends StatefulWidget {
  const HistoricalCairo({super.key});

  @override
  State<HistoricalCairo> createState() => __HistoricalCairoStateState();
}

class __HistoricalCairoStateState extends State<HistoricalCairo> {
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
                        return FavouritePage();
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
                        return ProfileScreen();
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
        leading: BackButton(
          color: Color.fromARGB(255, 117, 76, 14),
        ),
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
                    return ProfileScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.person),
            color: Color.fromARGB(255, 117, 76, 14),
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CairoSearch();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
            color: Color.fromARGB(255, 117, 76, 14),
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 170),
            child: Text(
              'Cairo',
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
                          return HistoricalCairo();
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
                            return MuseumCairo();
                          },
                        ),
                      );
                    }),
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
                          return HotelCairo();
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
                          return RestaurantCairo();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          //FINISH CATEGORIESSSSSSSSSSSSSSSSSSSSSSSS---------------------------
          SizedBox(height: 35),

          ratingBLOCK(
            onFav2: () async {
              await FirebaseFirestore.instance
                  .collection('Users')
                  .doc(SharedHelper.getstring(key: 'EMAIL'))
                  .collection('favorite')
                  .add({
                "image": 'images/Baron Palace.png',
                "text": "Baron Palace.",
                "number": 4.8,
              });
            },
            onFav: () async {
              await FirebaseFirestore.instance
                  .collection('Users')
                  .doc(SharedHelper.getstring(key: 'EMAIL'))
                  .collection('favorite')
                  .add({
                "image": 'images/Pyramids.png',
                "text": "Pyramids.",
                "number": 4.8,
              });
            },
            image1: 'images/Pyramids.png',
            text1: "Pyramids.",
            image2: 'images/Baron Palace.png',
            text2: 'Baron Palace.',
            number1: 4.8,
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
            onFav2: () {
              
            },
            onFav: () async {
            },
            image1: 'images/Bab Zuweilla.png',
            text1: "Bab Zuweila.",
            image2: 'images/Opera House.png',
            text2: 'Opera House.',
            number1: 3.8,
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
            onFav: () {},
            image1: 'images/Hanging Church.png',
            text1: 'Hanging Church.',
            image2: "images/Amr Ibn Al-A'as.png",
            text2: "Amr ibn Al-A'as.",
            number1: 4.7,
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
            number1: 3.7,
            number2: 3.5,
            onFav: () {},
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
            onFav: () {},
            image1: 'images/Capritage Helwan.png',
            text1: 'Capritage Helwan.',
            image2: 'images/Cairo Tour.png',
            text2: 'Cairo Tour.',
            number1: 3.5,
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
            onFav: () {},
            image1: 'images/Great Sphinx.png',
            text1: 'Great Sphinx.',
            image2: 'images/Saqqara Necropolis.png',
            text2: 'Saqqara Necropolis.',
            number1: 4.8,
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
