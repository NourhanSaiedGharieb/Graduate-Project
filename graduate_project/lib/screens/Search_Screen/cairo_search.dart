// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/AmrIbnAlAasDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/BabZuweillaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/BaronPalaceDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/CafeCornicheDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/CairoTourDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/CapitageHelwanDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/ChildMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/CopticDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/EgyptionAntiqueDesciption.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/EgyptionRailwayDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/FourSeasonNileDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/GADDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/GeologyMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/GrandMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/GreatSphinxDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/HadramootDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/HangingChurchDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/IbnTulunDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/IndianaHotelDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/IslamicArtsDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/KramelshamDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/MosqueMadrasaadescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/NationalMilitaryDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/OperaHouseDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/Pier88NileDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/PyramidDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/Safary2000Description.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/SaqqaraDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/SemiramisDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/SmokeyDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/SofitelGezirahDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/TolipFamilyDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/TriumphLuxuryDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/ZitouniDescription.dart';
import 'package:graduate_project/screens/appBar.dart';


class CairoSearch extends StatefulWidget {
  const CairoSearch({super.key});

  @override
  State<CairoSearch> createState() => _CairoSearchState();
}

class _CairoSearchState extends State<CairoSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {"id": 1, "name": "Cafe Corniche", "page": const CafeCornicheDescription()},
    {"id": 2, "name": "GAD", "page": const GADDescription()},
    {"id": 3, "name": "Hadrmoot", "page": const HadramootDescription()},
    {"id": 4, "name": "Karam elsham", "page": const KaramElshamDescription()},
    {"id": 5, "name": "Pier 88 River", "page": const Pier88NileDescription()},
    {"id": 6, "name": "Safary 2000", "page": const Safary2000Description()},
    {"id": 7, "name": "The Smokery", "page": const SmokeyDescription()},
    {"id": 8, "name": "Zitouni", "page": const ZitouniDescription()},
//
    {
      "id": 9,
      "name": "Amr ibn Al-A'as",
      "page": const AmrIbnAlAasDescription()
    },
    {"id": 10, "name": "Bab zuweila", "page": const BabZuweillaDescription()},
    {"id": 11, "name": "Baron Palace", "page": const BaronPalaceDescription()},
    {"id": 12, "name": "Cairo tour", "page": const CairoTourDescription()},
    {
      "id": 13,
      "name": "Capritage Helwan",
      "page": const CapitageHelwanDescription()
    },
    {"id": 14, "name": "Great Sphinx", "page": const GreatSphinxDescription()},
    {
      "id": 15,
      "name": "The Hanging Church",
      "page": const HangingChurchDescription()
    },
    {"id": 16, "name": "Ibn Tulun Mosque", "page": const IbnTulunDescription()},
    {
      "id": 17,
      "name": "Mosque-Madrasa",
      "page": const MosqueMadrasadDescription()
    },
    {
      "id": 18,
      "name": "Cairo Opera House",
      "page": const OperaHouseDescription()
    },
    {"id": 19, "name": "Pyramids", "page": const PyramidDescription()},
    {
      "id": 20,
      "name": "Saqqara Necropolis",
      "page": const SaqqaraDescription()
    },
//
    {
      "id": 21,
      "name": "Four Seasons Hotel",
      "page": const FourSeasonDescription()
    },
    {
      "id": 22,
      "name": "Indiana Hotel",
      "page": const IndianaHotelDescription()
    },
    {"id": 23, "name": "Semiramis", "page": const SemiramisDescription()},
    {
      "id": 24,
      "name": "Sofitel El Gezirah",
      "page": const SofitelGezirahDescription()
    },
    {
      "id": 25,
      "name": "Tolip Family Park",
      "page": const TolipFamilyDescription()
    },
    {
      "id": 26,
      "name": "Triumph Luxury",
      "page": const TriumphLuxuryDescription()
    },
//
    {"id": 27, "name": "The Child Museum", "page": const ChildDescription()},
    {"id": 28, "name": "Coptic Museum", "page": const CoptivDescription()},
    {
      "id": 29,
      "name": "Egyptian Antiquities",
      "page": const EgyptionAntiqueDescription()
    },
    {
      "id": 30,
      "name": "Egyptian Railway",
      "page": const EgyptianRailwayDescription()
    },
    {
      "id": 31,
      "name": "Egyptian Geology",
      "page": const EgyptianGeologyDescription()
    },
    {"id": 32, "name": "The (GEM)", "page": const GrandMuseumDescription()},
    {"id": 33, "name": "Islamic Arts", "page": const IslamicArtsDescription()},
    {
      "id": 34,
      "name": "National Military",
      "page": const NationalMilitaryDescription()
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
