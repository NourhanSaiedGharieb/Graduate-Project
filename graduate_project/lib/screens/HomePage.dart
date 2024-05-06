import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:graduate_project/screens/Alexandria/HistoricalAlex.dart";
import "package:graduate_project/screens/Aswan/HistoricalAswan.dart";
import "package:graduate_project/screens/Cairo/HistoricalCairo.dart";
import "package:graduate_project/screens/CustRowIcon.dart";
import "package:graduate_project/screens/ExploreScreens.dart/HistoricalPage.dart";
import "package:graduate_project/screens/ExploreScreens.dart/HotelsPage.dart";
import "package:graduate_project/screens/ExploreScreens.dart/MuseumPage.dart";
import "package:graduate_project/screens/ExploreScreens.dart/RestaurantPage.dart";
import "package:graduate_project/screens/Favourite_Page.dart";
import "package:graduate_project/screens/Fayoum/HistoricalFayoum.dart";
import "package:graduate_project/screens/Luxor/HistoricalLuxor.dart";
import "package:graduate_project/screens/PortSaid/HistoricalPortSaid.dart";
import "package:graduate_project/screens/Search_Screen/Search_Home.dart";
import "package:graduate_project/screens/drawer.dart";
//import "package:graduate_project/screens/splash_screens/first_screen.dart";
import "package:graduate_project/screens/Profile_Screens/profile_screen.dart";
//import "package:graduate_project/screens/first_screen.dart";
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
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
                  );                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffFFF6E3),
        appBar: AppBar(
        backgroundColor: const Color(0xffd4c6a8),
        title: Image.asset(
          'images/Logo Picture.png',
          width: 100,
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  ProfileScreen();
                },
              ),
            );
          }, icon: const Icon(Icons.person),color: Color.fromARGB(255, 117, 76, 14),),
          IconButton(
              onPressed: () {
               //  showSearch(context: context, delegate: CustomSearch());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LetsFind();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.search),color: Color.fromARGB(255, 117, 76, 14),)
        ],
      ),
drawer: compDrawer1(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Explore Egypt',
              style: TextStyle(
                  color: Color(0xffc39126),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 15),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24, color: Color(0xffc39126)),
            ),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 3, right: 2)),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CUSTRowICON(
                  image: 'images/Historical Sites.png',               
                  text1: 'Historical \n    Sites',
                      ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HistoricalPageExplore();
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
                          return MuseumPageExplore();
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
                          return HotelPageExplore();
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
                          return RestaurantPageExplore();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          //FINISH CATEGORIESSSSSSSSSSSSSSSSSSSSSSSS---------------------------
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Divider(
              endIndent: 50,
              thickness: 1,
              indent: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, left: 14),
            child: Text(
              'Browse your journey',
              style: TextStyle(
                  color: Color(0xffc39126),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 9, //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset('images/Cairo.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Cairo',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      //BLOCKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK------------------------------------
               Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalCairo();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 9, //bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'images/Alexandria.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Alexandria',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                        Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalAlex();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ]),
          ),


          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 9, //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset('images/Port Said.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Port Said',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      //BLOCKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK------------------------------------
               Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalPortSaid();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 9, //bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'images/Aswan.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Aswan',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                        Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalAswan();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ]),
          ),


          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 9, //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset('images/Fayoum.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Fayoum',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      //BLOCKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK------------------------------------
               Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalFayoum();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 9, //bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffc68c2d),
                  ),
                  height: 185,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'images/Luxor.png')),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.favorite_border_outlined),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                      const Text(
                        'Luxor',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                        Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HistoricalLuxor();
                              },
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ]),
          ),
















          
          //FINISH CATEGORIESSSSSSSSSSSSSSSSSSSSSSSS---------------------------
     
          


        
                      //BLOCKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK------------------------------------
               
        
        ],
      ),



      
          );
  }
}



//
// class CustomSearch extends SearchDelegate {
//   List username = ['mohamed', 'mahmoud', 'ahmed', 'Joe', 'Fares'];
//   List? filterList;
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = "";
//           },
//           icon: const Icon(Icons.close))
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: const Icon(Icons.arrow_back));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return Text('You tapped on $query');
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     if (query == "") {
//       return ListView.builder(
//           itemCount: username.length,
//           itemBuilder: (context, i) {
//             return InkWell(
//               onTap: () {
//                 showResults(context);
//               },
//               child: Card(
//                 color: const Color(0xfff6d690),
//                 child: Padding(
//                   padding: const EdgeInsets.all(18),
//                   child: Text(
//                     "${username[i]}",
//                     style: const TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           });
//     } else {
//       filterList =
//           username.where((element) => element.startsWith(query)).toList();
//       return ListView.builder(
//           itemCount: filterList!.length,
//           itemBuilder: (context, i) {
//             return InkWell(
//               onTap: () {
//                 showResults(context);
//               },
//               child: Card(
//                 color: const Color(0xfff6d690),
//                 child: Padding(
//                   padding: const EdgeInsets.all(18),
//                   child: Text(
//                     "${filterList![i]}",
//                     style: const TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           });
//     }
//   }
// }




