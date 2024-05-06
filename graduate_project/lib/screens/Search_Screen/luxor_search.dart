// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/1886RestaurantDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/AlMoudiraDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/ArtMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/AvenueSphinxeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/ColossiMernonDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/DeirElBahriDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/GerdaGardenDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/KarnakOpenAirDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/KoshariAlzaeemDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/LuxorTempleDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/MummificationDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/NilePanoramaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/NoblesArtDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/PavillonWinterDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/PizzaRomaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/SelkhetPapyrusDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/SofitelWinterDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/SofraDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/SpiritLuxorDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/SteigenbergerNileDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/TempleKarnakDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/TombsOfNoblesDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/VallyKingsDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/VallyQueensDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfLuxor/WenKieGermanDescription.dart';
import 'package:graduate_project/screens/appBar.dart';


class LuxorSearch extends StatefulWidget {
  const LuxorSearch({super.key});

  @override
  State<LuxorSearch> createState() => _LuxorSearchState();
}

class _LuxorSearchState extends State<LuxorSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {
      "id": 1,
      "name": "1886 Reastaurant",
      "page": const Restaurant1886Description()
    },
    {
      "id": 2,
      "name": "Granda's Garden",
      "page": const GerdaGardenDescription()
    },
    {
      "id": 3,
      "name": "Koshari Alzaeem",
      "page": const KoshariAlzaeemDescription()
    },
    {"id": 4, "name": "Pizza Roma", "page": const PizzaRomaDescription()},
    {"id": 5, "name": "El Sofra", "page": const SofraDescription()},
    {
      "id": 6,
      "name": "WenKies German",
      "page": const WenkieGermanDescription(),
    },
//
    {
      "id": 7,
      "name": "Avenue of Spinxes",
      "page": const AvenueSphinxeDescription()
    },
    {
      "id": 8,
      "name": "Colossi of Memnon",
      "page": const ColossiMernonDescription()
    },
    {"id": 9, "name": "Deir el Bahri", "page": const DeirElBahriDescription()},
    {"id": 10, "name": "Luxor Temple", "page": const LuxorTempleDescription()},
    {
      "id": 11,
      "name": "Temple of Karnak",
      "page": const TempleKarnakDescription()
    },
    {
      "id": 12,
      "name": "Tombs of Nobles",
      "page": const TombsOfNoblesDescription()
    },
    {"id": 13, "name": "Vally of Kings", "page": const VallyKingsDescription()},
    {
      "id": 14,
      "name": "Vally of Queens",
      "page": const VallyQueensDescription()
    },
    //
    {
      "id": 15,
      "name": "Al Moudira Hotel",
      "page": const AlMoudiraDescription()
    },
    {
      "id": 16,
      "name": "Nile Panorama",
      "page": const NilePanoramaDescription()
    },
    {
      "id": 17,
      "name": "Pavillon Winter",
      "page": const PavillonWinterDescription()
    },
    {
      "id": 18,
      "name": "Sofitel Palace",
      "page": const SofitelWinterDescription()
    },
    {"id": 19, "name": "Spirit Luxor", "page": const SpiritLuxorDescription()},
    {
      "id": 20,
      "name": "Steigenberger Nile",
      "page": const SteigenbergerNileDescription()
    },
    //
    {"id": 21, "name": "Art Museum", "page": const ArtMuseumDescription()},
    {
      "id": 22,
      "name": "karnak Open Air",
      "page": const KarnakOpenAirDescription()
    },
    {"id": 23, "name": "Luxor Museum", "page": const Luxor2MuseumDescription()},
    {
      "id": 24,
      "name": "Mummification Museum",
      "page": const MummificationDescription()
    },
    {
      "id": 25,
      "name": "Nobles Art Gallery",
      "page": const NoblesArtDescription()
    },
    {
      "id": 26,
      "name": "Selkhet Papyrus",
      "page": const SelkhetPapyrusDescription()
    },
  ];

  List<Map<String, dynamic>> _foundCitys = [];

  @override
  void initState() {
    _foundCitys = _allCitys;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allCitys;
    } else {
      results = _allCitys
          .where((user) =>
          user['name'].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundCitys = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff9eb),
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: appBar()),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search for a city',
                  labelStyle: TextStyle(fontSize: 22),
                  suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundCitys.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundCitys.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundCitys[index]["id"]),
                  color: const Color(0xffC39126),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Scaffold(
                                body: _foundCitys[index]['page'],
                              );
                            }),
                      );
                    },
                    child: ListTile(
                      leading: Text(
                        _foundCitys[index]['id'].toString(),
                        style: const TextStyle(
                            fontSize: 24, color: Color(0xffFAFAFA)),
                      ),
                      title: Text(
                        _foundCitys[index]['name'],
                        style: const TextStyle(
                            fontSize: 24, color: Color(0xffFAFAFA)),
                      ),
                    ),
                  ),
                ),
              )
                  : const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_off,
                      size: 80,
                    ),
                    Text(
                      'No results found',
                      style: TextStyle(fontSize: 35),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
