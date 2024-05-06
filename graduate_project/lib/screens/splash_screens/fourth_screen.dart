// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduate_project/screens/HomePage.dart';
// ignore: unused_import
import 'package:graduate_project/screens/signup.dart';

import '../login.dart';

class forth_screen extends StatelessWidget {
  const forth_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/splash 6.png'))
          ),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                child: Padding(
                  padding:EdgeInsets.only(top: 660,left: 15),
                  child: Text('Get Start on an Egyption Adventure.. ',
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
                  child: Text("Explore the Rich History ,Culture,and Natural Beauty of Egypt.." ,
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
                        return SignIn();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Start The Journey ',
                  style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255),),
                ),
              ),
            ],
          ))
            ],
          ),
        ),
    );
  }
}