// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/AlSalamDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/AlfaOiattoDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/AlgarageDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/AvenueCafeDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/CovinaSeaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/ElMasalaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/ElMontazahDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/ElNasrMuseumDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/ElTawfiziDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/FerialDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/GanatElNorasDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/GrandHotelDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/HelnanPortFouadDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/HighBurgerDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/LighthouseDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/MaromDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/PizzaPinoDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/PortFouadDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/PortSaidMilitaryDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/PortSaidNationalDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/PortoResort&SpaDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/RestaPortSaidDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/SaintEugenieDescription.dart';
import 'package:graduate_project/screens/DescriptionPagesOfPortSaid/SaltMountainDescription.dart';
import 'package:graduate_project/screens/appBar.dart';

class PortSaidSearch extends StatefulWidget {
  const PortSaidSearch({super.key});

  @override
  State<PortSaidSearch> createState() => _PortSaidSearchState();
}

class _PortSaidSearchState extends State<PortSaidSearch> {
  final List<Map<String, dynamic>> _allCitys = [
    {"id": 1, "name": "Alfa Piatto", "page": const AlfaOiattoDescription()},
    {
      "id": 2,
      "name": "Algarage Port Said",
      "page": const AlgarageDescription()
    },
    {
      "id": 3,
      "name": "Avenue Restaurant",
      "page": const AvenueCafeDescription()
    },
    {"id": 4, "name": "Corvina sea food", "page": const CovinaSeaDescription()},
    {"id": 5, "name": "High Burger", "page": const HighBurderDescription()},
    {"id": 6, "name": "Pizza Pino", "page": const PizzaPinoDescription()},
//
    {"id": 7, "name": "Al Salam Mosque", "page": const AlSalamDescription()},
    {"id": 8, "name": "El Masala garden", "page": const ElMasalaDescription()},
    {
      "id": 9,
      "name": "El Montazah Park",
      "page": const ElMontazahDescription()
    },
    {
      "id": 10,
      "name": "El Tawfiki Mosque",
      "page": const ElTawfiziDescription()
    },
    {"id": 11, "name": "Ferial garden", "page": const FerialDescription()},
    {
      "id": 12,
      "name": "PortSaid Lighthouse",
      "page": const LighthouseDescription()
    },
    {"id": 13, "name": "Port Fouad", "page": const PortFouadDescription()},
    {
      "id": 14,
      "name": "Salt mountain",
      "page": const SaltMountainDescription()
    },
    //
    {
      "id": 15,
      "name": "Ganat El Noras",
      "page": const GanatElNorasDescription()
    },
    {"id": 16, "name": "Grand Hotel", "page": const GrandHotelDescription()},
    {
      "id": 17,
      "name": "Helnan Port Fouad",
      "page": const HelnanPortFouadDescription()
    },
    {"id": 18, "name": "Marom Port Said", "page": const MaromDescription()},
    {
      "id": 19,
      "name": "Porto Said resort",
      "page": const PortoResortDescription()
    },
    {
      "id": 20,
      "name": "Resta Port Said",
      "page": const RestaPortSaidDescription()
    },
    //
    {
      "id": 21,
      "name": "ElNasr Museum",
      "page": const ElNasrMuseumDescription()
    },
    {
      "id": 22,
      "name": "Military Museum",
      "page": const PortSaidMilitaryDescription()
    },
//
    {
      "id": 23,
      "name": "National Museum",
      "page": const PortSaidNationalDescription()
    },
    {
      "id": 24,
      "name": "SaintEugenie Church",
      "page": const SaintEugenieDescription()
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
