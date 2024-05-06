// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduate_project/screens/splash_screens/third_screen.dart';



class second_screen extends StatelessWidget {
  const second_screen({super.key});

  @override
  Widget build(BuildContext context) {

    return 
       Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/splash 4.png'))
          ),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                child: Padding(
                  padding:EdgeInsets.only(top: 660,left: 15),
                  child: Text('Discover the Wonders of Ancient Egypt.. ',
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
                  padding:EdgeInsets.only(top: 20,left: 20),
                
                  child: Text('Explore the Pyramids,  Temples,and Tomps of the Pharaohs.. ',
                  style: TextStyle(
                    fontFamily: 'Merienda',
                    
                    color: Color.fromARGB(255, 113, 69, 4),
                    fontSize:22,
                  ),
                  ),
                   ),
              ),
              SizedBox(height:15),
              Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          
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
                        return third_screen();
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
          )
            ),
            ],
          ),
        ),);
   
    
  }
}