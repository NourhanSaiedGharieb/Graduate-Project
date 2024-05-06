// ignore_for_file: prefer_const_constructors
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:graduate_project/screens/HomePage.dart";
import "package:graduate_project/screens/splash_screens/first_screen.dart";
import 'package:firebase_core/firebase_core.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    var user= FirebaseAuth.instance.currentUser;
   
    var materialApp = GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromARGB(255, 195, 145, 38) ),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //themeMode: ThemeMode.light,
      home: user==null? first_screen():HomePage(),
        
    );
    return materialApp;
      }
  }
  
 
  
  








