// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduate_project/screens/Profile_Screens/two_buttons.dart';
import 'package:graduate_project/screens/appBar.dart';
import 'package:graduate_project/screens/Profile_Screens/setting_text_field.dart';
//import 'package:graduate_project/screens/Profile_Screens/two_buttons.dar';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  // void initState() async{
  //   await FirebaseFirestore.instance.collection('Users').
  //   doc('2ZBTtGCdEYbHI8Cro2krdfsnjRv2').
  //   collection('information').
  //   doc('nourhan.saied5050@gmail.com_information').get().then((value) => {print(value.data())});
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9EB),
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: appBar()),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 137,
                    width: 137,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/Profile Photo.png'),
                      radius: 364,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Personal details \n and Adresses',
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 112, 23),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, bottom: 12),
              child: Row(
                children: [
                  Image.asset(
                    'images/Replace.png',
                  ),
                  TextButton(
                    style: const ButtonStyle(
                      visualDensity: VisualDensity.comfortable,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Replace',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 46, 81, 110),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              indent: 10,
              endIndent: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70, top: 12),
              child: Text(
                'Basic Information',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 46, 81, 110),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SettingTextField(
              text: 'Name',
            ),
            SettingTextField(
              text: 'Gender',
            ),
            SettingTextField(
              text: 'Location',
            ),
            SettingTextField(
              text: 'Phone number',
            ),
            SettingTextField(
              text: 'Nationality',
            ),
            SettingTextField(
              text: 'Birth of date',
            ),
            // SettingTextField(
            //   text: 'Website URL',
            // ),
            // SettingTextField(
            //   text: 'Company',
            // ),
            // SettingTextField(
            //   text: 'Other website',
            // ),
            TwoButtons(
              savebutton: () {},
              discardbutton: () {},
            ),
          ],
        ),
      ),
    );
  }
}


