// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:graduate_project/screens/splash_screens/second_screen.dart';

class first_screen extends StatelessWidget {
  const first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/iPhone 14 Plus - 1.png'))),
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 680, left: 15),
                    child: Text(
                      'Habiby..',
                      style: TextStyle(
                        fontFamily: 'Merienda',
                        color: Color.fromARGB(255, 195, 145, 38),
                        fontSize: 70,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 2, left: 20),
                    child: Text(
                      "Come to Egypt.",
                      style: TextStyle(
                        fontFamily: 'Merienda',
                        color: Color.fromARGB(255, 195, 145, 38),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 195, 145, 38),
                            minimumSize: const Size(400, 50)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return second_screen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'GO..',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
