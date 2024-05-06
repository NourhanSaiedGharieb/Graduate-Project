// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:graduate_project/screens/Profile_Screens/profile_screen.dart';

class TwoButtons extends StatelessWidget {
  TwoButtons({this.discardbutton, this.savebutton});
  VoidCallback? savebutton;
  VoidCallback? discardbutton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 30, bottom: 20),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 153, 112, 23),
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  ProfileScreen();
                  },
                ),
              );
            },
            //onPressed: discardbutton,
            child: const Text(
              'Discard',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 153, 112, 23)),
                  borderRadius: BorderRadius.circular(60)),
            ),
            onPressed: savebutton,
            child: const Text(
              'Save change',
              style: TextStyle(
                color: Color.fromARGB(255, 153, 112, 23),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}