// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/AbuSimpleDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/ArtCafeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/AswanMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/BobMarleyDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/DoKkaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/EcoNubiaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/EliphantineDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/HighDamDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/IbizaFreeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/KermaNubianDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/KomOmboDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/MovenpickDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/NileDEscription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/NubianDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/PhilaeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/SalahElDinDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/SofitelLegendDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/SouestaNoubaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/TempleKalabshaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAswan/UnfinishedObeliskDescription.dart';
import 'package:graduate_project/screens/appBar.dart';


class AswanSearch extends StatefulWidget {
  const AswanSearch({super.key});

  @override
  State<AswanSearch> createState() => _AswanSearchState();
}

class _AswanSearchState extends State<AswanSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {"id": 1, "name": "Art Cafe", "page": const ArtCafeDescription()},
    {"id": 2, "name": "Bob Maley", "page": const BobMarleyDescription()},
    {"id": 3, "name": "El Dokka", "page": const DokkaDescription()},
    {"id": 4, "name": "Ibiza Free Beach", "page": const IbizaFreeDEscription()},
    {"id": 5, "name": "Kerma Nubian", "page": const KermaNubianDescription()},
    {"id": 6, "name": "Salah El Din", "page": const SalahElDinDescription()},
//
    {"id": 7, "name": "Abu Simbel", "page": const AbuSimpleDescription()},
    {"id": 8, "name": "The High Dam", "page": const HighDamDescription()},
    {"id": 9, "name": "Kom Ombo Temble", "page": const KomOmboDescription()},
    {"id": 10, "name": "Philae Temple", "page": const PhilaeDescription()},
    {
      "id": 11,
      "name": "Temple of Kalabsha",
      "page": const TempleKalabshaDescription()
    },
    {
      "id": 12,
      "name": "Unfinished Obelisk",
      "page": const UnfinishedObeliskDescription()
    },
//
    {"id": 13, "name": "Eco Nubia", "page": const EcoNubiaDescription()},
    {
      "id": 14,
      "name": "Movenpick Resort",
      "page": const MovenpickDescription()
    },
    {
      "id": 15,
      "name": "Sofitel Legend",
      "page": const SofitelLegendDescription()
    },
    {
      "id": 16,
      "name": "Sonesta Nouba",
      "page": const SouestalNoubaDescription()
    },
//
    {"id": 17, "name": "Aswan Museum", "page": const AswanMuseumDescription()},
    {
      "id": 18,
      "name": "Elephantine Island",
      "page": const EliphantineDescription()
    },
    {"id": 19, "name": "Nile Museum", "page": const NileDesscription()},
    {"id": 20, "name": "The Nubian", "page": const NubianDescription()},
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
