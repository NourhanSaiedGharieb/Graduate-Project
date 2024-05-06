// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/AbouElSidDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/AlexArtMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/AlexMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/AntoiadisGardenDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/BibliothecaAlexDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/CafeDeLaPaixDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/CavafyMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/CitadelOfQualityDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/CleopatraPalaceDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/FishMarketDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/GraecoRomanDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/GreekClubDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/HelnanRoyalDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/HiltonAlexDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/HiltonGreeenDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/MontazahMosqueDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/MontazahPalaceDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/OldStreetCafeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/PabloCafeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/PlazaHotelDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/PompeyPillarDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/RasElTinPalaceDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/RomanAmphitheatreDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/RoyalCrownDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/RoyalJewelryDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/StanleyBridgeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/TolipHotelDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/TombsOfKomDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/TrianonDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfAlex/WaveCafeDescription.dart';
import 'package:graduate_project/screens/appBar.dart';



class AlexSearch extends StatefulWidget {
  const AlexSearch({super.key});

  @override
  State<AlexSearch> createState() => _AlexSearchState();
}

class _AlexSearchState extends State<AlexSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {"id": 1, "name": "Abou El Sid", "page": const AbouElSidDescription()},
    {"id": 2, "name": "Cafe de la Paix", "page": const CafeDelaPaixDescription()},
    {"id": 3, "name": "Fish Market", "page": const FishMarketDescription()},
    {"id": 4, "name": "Greek Club", "page": const GreekClubDescription()},
    {"id": 5, "name": "Old Street Cafe", "page": const OldStreetCafeDescription()},
    {"id": 6, "name": "Pablo Restaurant", "page": const PabloCafeDescription()},
    {"id": 7, "name": "Trianon", "page": const TrainonDescription()},
    {"id": 8, "name": "Wave Cafe", "page": const WaveCafeDescription()},
//
    {
      "id": 9,
      "name": "Antoiadis Garden",
      "page": const AntoiadisGardenDescription()
    },
    {"id": 10, "name": "Bibliotheca Alex", "page": const BibliothecaAlexDescription()},
    {"id": 11, "name": "Citadel of Qaitbay", "page": const CitadelOfQyalityDescription()},
    {"id": 12, "name": "Montazah Mosque", "page": const MontazahMosqueDescription()},
    {
      "id": 13,
      "name": "Pompey Piller",
      "page": const PompeyPillarDescription()
    },
    {"id": 14, "name": "RomanAmphitheatre", "page": const RomanAmphitheatreDescription()},
    {
      "id": 15,
      "name": "Stanley Bridge",
      "page": const StanlyBridgeDescription()
    },
    {"id": 16, "name": "Kom el-Shuqafa", "page": const TombsOfKomDescription()},
    //
    {
      "id": 17,
      "name": "Helnan Royal",
      "page": const HelnanRoyalDescription()
    },
    {
      "id": 18,
      "name": "Hilton Alex",
      "page": const HiltonAlexDescription()
    },
    {"id": 19, "name": "Hilton green Plaza", "page": const HiltonGreenDescription()},
    {
      "id": 20,
      "name": "Plazza Hotel",
      "page": const PlazaHotelDescription()
    },
    {
      "id": 21,
      "name": "Royal Crown Hotel",
      "page": const RoyalCrownDescription()
    },
    {
      "id": 22,
      "name": "Tolip Hotel",
      "page": const TolipHotelDescription()
    },
//
    {"id": 23, "name": "Alex Art Museum", "page": const AlexArtMuseumDescription()},
    {
      "id": 24,
      "name": "Alexandria Museum",
      "page": const AlexMuseumDescription()
    },
    {
      "id": 25,
      "name": "Cavafy Museum",
      "page": const CavafyMuseumDescription()
    },
    {
      "id": 26,
      "name": "Cleopatra Palace",
      "page": const CleopatraPalaceDescription()
    },
    {"id": 27, "name": "Graeco Roman", "page": const GraecoRomanDescription()},
    {"id": 28, "name": "Montazah Palace", "page": const MontazahPalaceDescription()},
    {
      "id": 29,
      "name": "Ras El Tin Palace",
      "page": const RasElTinPalaceDescription()
    },
    {
      "id": 30,
      "name": "Royal Jewelry",
      "page": const RoyalJewelryDescription()
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
