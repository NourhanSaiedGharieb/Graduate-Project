// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduate_project/screens/splash_screens/fourth_screen.dart';
class third_screen extends StatelessWidget {
  const third_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
     body: SingleChildScrollView(
       child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash 5.png'))
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                  child: Padding(
                    padding:EdgeInsets.only(top: 660,left: 15),
                    child: Text('Experience the Magie of Modern Egypt.. ',
                    style: TextStyle(
                      fontFamily: 'Merienda',
                      color: Color.fromARGB(255, 195, 145, 38),
                      fontSize:35,
                    ),
                    ),
                     ),
                     
                ),
                SizedBox(height:5),
                Center(
                   child: Padding(
                    padding:EdgeInsets.only(top: 7,left: 20),
                  
                    child: Text("Discover the Vibrant Culture,Cuisine,and Nightlife of Egypt's Cities.." ,
                    style: TextStyle(
                      fontFamily: 'Merienda',
                      
                      color: Color.fromARGB(255, 113, 69, 4),
                      fontSize:22,
                    ),
                    ),
                     ),
                ),
                SizedBox(height:15),
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
                          return forth_screen();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255),),
                  ),
                ),
              ],
            ))
              ],
            ),
          ),
     ),
    );
  }
}