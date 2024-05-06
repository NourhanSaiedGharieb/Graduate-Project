// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/Alexandria/HistoricalAlex.dart';
import 'package:graduate_project/screens/Aswan/HistoricalAswan.dart';
import 'package:graduate_project/screens/Cairo/HistoricalCairo.dart';
import 'package:graduate_project/screens/Fayoum/HistoricalFayoum.dart';
import 'package:graduate_project/screens/Luxor/HistoricalLuxor.dart';
import 'package:graduate_project/screens/PortSaid/HistoricalPortSaid.dart';
import 'package:graduate_project/screens/appBar.dart';

class LetsFind extends StatefulWidget {
  const LetsFind({super.key});

  @override
  State<LetsFind> createState() => _LetsFindState();
}

class _LetsFindState extends State<LetsFind> {
  final List<Map<String, dynamic>> _allCitys = [
    {"id": 1, "name": "Cairo", "page": const HistoricalCairo()},
    {"id": 2, "name": "Aswan", "page": const HistoricalAswan()},
    {"id": 3, "name": "Luxor", "page": const HistoricalLuxor()},
    {"id": 4, "name": "Alexandria", "page": const HistoricalAlex()},
    {"id": 5, "name": "Port-Said", "page": const HistoricalPortSaid()},
    {"id": 6, "name": "Fayum", "page": const HistoricalFayoum()},
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
