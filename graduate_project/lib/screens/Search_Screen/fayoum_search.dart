// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfCairo/HangingChurchDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/AbuElLeafDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/ArabianNightsDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/ByoumLakeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/CaricatureMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/ElRoubyDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/HangingDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/IbisRestaurantDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/KomAushimDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/KomElDiKKaaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/KomOshimDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/LackHouseDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/LazaniaPastaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/LazibInnResortDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/MedinetMadiDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/MonasteryOfGabrielDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/OzziDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/PyramidSenusretDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/QasrQarounDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/QuranLakeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/STALBYTDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/SoknopaiouNesosDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/TamamCafeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/TeacheByLakeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/TecheBoutiqueDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/WadiElRayanDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfFayoum/WadiHitanDescription.dart';
import 'package:graduate_project/screens/appBar.dart';


class FayumSearch extends StatefulWidget {
  const FayumSearch({super.key});

  @override
  State<FayumSearch> createState() => _FayumSearchState();
}

class _FayumSearchState extends State<FayumSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {
      "id": 1,
      "name": "Arabian Nights",
      "page": const ArabianNightsDescription()
    },
    {
      "id": 2,
      "name": "Ibis Restaurant",
      "page": const IbisRestaurantDescription()
    },
    {"id": 3, "name": "Lazania Pasta", "page": const LazaniaPastaDescription()},
    {"id": 4, "name": "Ozzi Restaurant", "page": const OzziDescription()},
    {"id": 5, "name": "ST ALBYT", "page": const STALBYTDescription()},
    {"id": 6, "name": "Tamam Cafe", "page": const TamamCafeDEscription()},
//
    {"id": 7, "name": "Kom Oshim", "page": const KomOshimDescription()},
    {"id": 8, "name": "Medinet Madi", "page": const MedinetMadiDescription()},
    {
      "id": 9,
      "name": "Pyramid of Senusret",
      "page": const PyramidSenusretDescription()
    },
    {"id": 10, "name": "Qasr Qaroun", "page": const QasrQarounDescription()},
    {"id": 11, "name": "Quran Lack", "page": const QuranLakeDescription()},
    {
      "id": 12,
      "name": "Soknopaiou Nesos",
      "page": const SoknopaiouNesosDescription()
    },
//
    {"id": 13, "name": "Wadi el Rayan", "page": const WadiElRayanDescription()},
    {"id": 14, "name": "Wadi Hitan", "page": const WadiHitanDescription()},
    {"id": 15, "name": "Byoum Lakeside", "page": const ByoumLakeDescription()},
    {"id": 16, "name": "Kom El Dikkaa", "page": const KomElDikkaaDescription()},
    {"id": 17, "name": "Lack house", "page": const LackHouseDescription()},
    {
      "id": 18,
      "name": "Lazib Inn resort",
      "page": const LazibInnResortDEscription()
    },
    {
      "id": 19,
      "name": "Teche by the lack",
      "page": const TeacheByLakeDescription()
    },
    {
      "id": 20,
      "name": "Teche boutique",
      "page": const TecheBoutiqueDescription()
    },
//
    {
      "id": 19,
      "name": "Abu el Leaf Monastery",
      "page": const AbuElLeafDescription()
    },
    {
      "id": 20,
      "name": "Caricature Museum",
      "page": const CaricatureMuseumDescription()
    },
    {"id": 19, "name": "El Rouby Mosque", "page": const ElRoubyDescription()},
    {"id": 20, "name": "Hangig Mosque", "page": const HangingDescription()},
    {"id": 19, "name": "Kom Aushim", "page": const KomAushimDescription()},
    {
      "id": 20,
      "name": "MonasteryArchangel",
      "page": const MonasteryOfGabrielDescription()
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
