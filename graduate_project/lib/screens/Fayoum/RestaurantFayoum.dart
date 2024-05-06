import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/widgets.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:graduate_project/screens/Blokes2.dart";
import "package:graduate_project/screens/CustRowIcon.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/ArabianNightsDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/IbisRestaurantDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/LazaniaPastaDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/OzziDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/STALBYTDescription.dart";
import "package:graduate_project/screens/DescriptionPagesOfFayoum/TamamCafeDescription.dart";
import "package:graduate_project/screens/Favourite_Page.dart";
import "package:graduate_project/screens/Fayoum/HistoricalFayoum.dart";
import "package:graduate_project/screens/Fayoum/HotelFayoum.dart";
import "package:graduate_project/screens/Fayoum/MuseumsFayoum.dart";
import "package:graduate_project/screens/HomePage.dart";
import "package:graduate_project/screens/Profile_Screens/profile_screen.dart";
import "package:graduate_project/screens/Search_Screen/fayoum_search.dart";

// ignore: unused_import
import "package:graduate_project/screens/splash_screens/first_screen.dart";
//import "package:graduate_project/screens/first_screen.dart";
class RestaurantFayoum extends StatefulWidget {
  const RestaurantFayoum({super.key});

  @override
  State<RestaurantFayoum> createState() => _RestaurantFayoumState();
}

class _RestaurantFayoumState extends State<RestaurantFayoum> {
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
                      return const FayumSearch();
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
            padding: EdgeInsets.only(left: 150),
            child: Text(
              'Fayoum',
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
                          return HistoricalFayoum();
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
                          return MuseumsFayoum();
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
                          return HotelFayoum();
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
                          return RestaurantFayoum();
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


      

      
        ]
      )
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