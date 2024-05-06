// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduate_project/src/logos.dart';

import 'HomePage.dart';

class Signup extends StatelessWidget {


  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
 var name, email, pic, uid;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');


  // TODO: implement signup
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 249, 235),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/tourist.png', height: 300, width: 450,),
                    Text('Create an account',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 30, color: Color.fromARGB(255, 195, 145, 38),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding
                      (padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 249, 235),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          // ignore: prefer_const_constructors
                          child: TextFormField(
                            controller: name,
                            onChanged: (val) {
                              name = val;
                            },
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              enabledBorder: OutlineInputBorder(
                                // ignore: prefer_const_constructors
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 195, 145, 38),

                                  )

                              ),
                            ),),),
                      ),),
                    SizedBox(height: 15),
                    Padding
                      (padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 249, 235),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          // ignore: prefer_const_constructors
                          child: TextFormField(
                            controller: email,
                            onChanged: (val) {
                              email = val;
                            },
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                // ignore: prefer_const_constructors
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 195, 145, 38),

                                  )

                              ),
                            ),),),
                      ),),
                    SizedBox(height: 20),

                    Padding
                      (padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 249, 235),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          // ignore: prefer_const_constructors
                          child: TextFormField(
                            controller: passController,
                            onChanged: (val) {
                              passController = val as TextEditingController;
                            },
                            //obscureText: true,
                            // ignore: prefer_const_constructors

                            decoration:InputDecoration(
                              hintText: 'Password',
                              label: Text('Password'),
                              suffixIcon: Icon(Icons.visibility_off),
                              enabledBorder: OutlineInputBorder(
                                // ignore: prefer_const_constructors
                                  borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),

                                  )

                              ),
                            ),),),
                      ),),
                    SizedBox(height: 25),

                    GestureDetector(
                      onTap: () async {
                        try {
                          await auth.createUserWithEmailAndPassword(
                              email: email,
                              password: passController.text).then((
                              value) async {
                            await users.doc(
                                value.user!.uid).set({
                              "name":name,
                              "email":email,
                              "uid": value.user!.uid,
                              "pic": '',
                            }
                            );

                            Get.snackbar('done', 'please wait',
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Color(0xfff6d690),
                            );
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => HomePage()));
                                                    });
                        } catch (val) {
                          Get.snackbar('Error', val.toString(),
                            backgroundColor: Color(0xfff6d690),
                             snackPosition: SnackPosition.BOTTOM,

                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 195, 145, 38),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('Sign Up',
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    SizedBox(height: 20),
                    Padding(padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('---------------', style: TextStyle(color: Colors
                              .grey, fontSize: 30),),
                          Text('Or Sign Up with', style: TextStyle(color: Colors
                              .grey, fontWeight: FontWeight.bold,),),
                          Text('---------------', style: TextStyle(color: Colors
                              .grey, fontSize: 30),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),


                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          logos(imagepath: 'images/google-logo-icon-png.png'),
                          SizedBox(width: 25,),
                          logos(imagepath: 'images/Facebook-logo-png.png',),
                          SizedBox(width: 25,),
                          //logos(imagepath: 'images/apple-logo-png.png'),
                        ]
                    ),
                    SizedBox(height: 10),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By signing up you agree to our ",
                          style: GoogleFonts.robotoCondensed(
                            color: Color.fromARGB(255, 124, 91, 20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Terms & Conditions Privacy Policy ",
                          style: GoogleFonts.robotoCondensed(
                            color: Color.fromARGB(255, 195, 145, 38),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),

                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

