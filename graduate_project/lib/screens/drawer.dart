// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/HomePage.dart';
import 'package:graduate_project/screens/Profile_Screens/personal.dart';
import 'package:graduate_project/screens/date.dart';
import 'package:graduate_project/screens/login.dart';

class compDrawer1 extends StatefulWidget {
   compDrawer1({super.key});

  @override
  State<compDrawer1> createState() => _compDrawer1State();
}

class _compDrawer1State extends State<compDrawer1> {
  FirebaseAuth auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Yahoo'),
            accountEmail: Text(
              'yahoo@gmail.com',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // child: Image.asset(
                //   'assets/images/Photo.png',
                // ),
              ),
            ),
            decoration: BoxDecoration(color: Color(0xffc68c2d)),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
          ),
          ListTile(
            title: const Text('Account'),
            leading: const Icon(Icons.account_box_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  Personal();
                  },
                ),
              );                },
          ),

          ListTile(
            title: const Text('Log out'),
            leading: GestureDetector(
                onTap: (){
                  auth.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },
                child: const Icon(Icons.logout)),
            onTap: () {},
          ),
           ListTile(
            title: const Text('Clock & Date'),
            leading: const Icon(Icons.timelapse_sharp),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return date();
                        },
                      ),
                    );
                  },
           ),

        ],
      ),
    );
  }
}