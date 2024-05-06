import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduate_project/screens/Change_Password_page.dart';
import 'package:graduate_project/screens/Profile_Screens/color_manager.dart';
import 'package:graduate_project/screens/appBar.dart';
import 'package:graduate_project/screens/Profile_Screens/card_container.dart';
import 'package:graduate_project/screens/Profile_Screens/two_buttons.dart';


class Security extends StatelessWidget {

  const Security({super.key});
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9EB),
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: appBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Column(
            children: [
              const Row(children: [
                SizedBox(
                  height: 137,
                  width: 137,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/Profile Photo.png'),
                    radius: 364,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 36,left: 50),
                  child: Column(
                    children: [
                      Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 195, 145, 38),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Change your security settings, \n  set up secure authentication \n      or delete your account.',
                        style: TextStyle(
                          height: 2,
                          color: Color.fromARGB(255, 46, 81, 110),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              CardContainer(
                  maintext: 'Password',
                  desc:
                  'Change your password regularly to keep your account secure.',
                  textButton: 'Change Password',
                  onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return changePassword();
                              }));
                  }
              ),

              SizedBox(height:20),
              CardContainer(
                  maintext: 'Active Sessions',
                  desc:
                  'Selecting ‘Sign out’ will sign you out from all devices except this one.\n The process can take up to 10 minutes.',
                  textButton: 'Sign out',
                  onPressed: () {}
                    ),
              SizedBox(height:20),
              CardContainer(
                  maintext: 'Delete Account',
                  desc: 'Permanently delete your Egyptour.com \n account.',
                  textButton: 'Delete Account',
                onPressed: (){
                },),
              SizedBox(height:20),
              TwoButtons(
                discardbutton: () {},
                savebutton: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
