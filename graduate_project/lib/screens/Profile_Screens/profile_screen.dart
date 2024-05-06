import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduate_project/screens/Favourite_Page.dart';
import 'package:graduate_project/screens/Profile_Screens/about_us.dart';
import 'package:graduate_project/screens/appBar.dart';
import 'package:graduate_project/screens/Profile_Screens/help_view.dart';
import 'package:graduate_project/screens/login.dart';
import 'package:graduate_project/screens/Profile_Screens/personal.dart';
import 'package:graduate_project/screens/Profile_Screens/security.dart';
import 'package:graduate_project/screens/splash_screens/first_screen.dart';
import 'package:graduate_project/screens/Profile_Screens/row_in_profile.dart';

import '../custom_text.dart';


class ProfileScreen extends StatelessWidget {
  FirebaseAuth auth=FirebaseAuth.instance;
  var name,email,pic;
  String id=FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9EB),
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 80), child: appBar()),
      body: StreamBuilder(

          stream:FirebaseFirestore.instance.collection('Users').doc(id).snapshots(),
          builder:(context,snapShot){
            if(snapShot.hasData){
              dynamic document=snapShot.data;
              name =document['name'];
              email =document['email'];
              pic =document['pic'];

            }
            return  Container(
              margin: const EdgeInsets.only(top: 50),
              alignment: Alignment.topCenter,

              child : Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/Profile Photo.png'),
                    radius: 80,
                    backgroundColor: Color.fromARGB(255, 117, 76, 14),


                  ),
                  const SizedBox(width: 50,),
                  CustomText(
                    alignment: Alignment.topCenter,
                    text: '$name',
                    color: const Color.fromARGB(255, 195, 145, 38),
                    size: 24,
                    isbold: true,
                  ),
                  const SizedBox(height: 7,),
                  CustomText(
                    alignment: Alignment.topCenter,
                    text: '$email',
                    color: const Color.fromARGB(255, 117, 76, 14),
                    size: 18,
                  ),
                  // CustomText(
                  //   text: '$phonenumber',
                  //   size: 20,
                  //   alignment: Alignment.topCenter,
                  //
                  // ),
                  SizedBox(height: Get.height*.10,),

                  // CustomListTile(
                  //     icon: Icons.personal_injury_outlined,
                  //     title: 'General Information',
                  //
                  // ),
                  // CustomListTile(
                  //     icon: Icons.security_update_warning_outlined,
                  //     title: 'Security',
                  //
                  // ),CustomListTile(
                  //     icon: Icons.favorite_outline_outlined,
                  //     title: 'Favourites'
                  // ),
                  // CustomListTile(
                  //     icon: Icons.help_center_outlined,
                  //     title: 'Help'
                  // ),
                  // CustomListTile(
                  //     icon: Icons.question_mark_outlined,
                  //     title: 'About Us'
                  // ),
                  // CustomListTile(
                  //     icon: Icons.logout,
                  //     title: 'Log Out'
                  //
                  // ),
                  const SizedBox(height:1),

                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 10,
                  ),
                  const SizedBox(height:10),
                  RowWithIconAndCategoryText(
                    categoryName: 'General information',
                    categoryIcon: 'images/General information.png',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Personal();
                          },
                        ),
                      );
                    },
                  ),
                  RowWithIconAndCategoryText(
                    categoryName: 'Security',
                    categoryIcon: 'images/Security.png',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Security();
                          },
                        ),
                      );
                    },
                  ),
                  RowWithIconAndCategoryText(
                    categoryName: 'Favourites',
                    categoryIcon: 'images/Favourite.png',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FavouritePage();
                          },
                        ),
                      );
                    },
                  ),

                  RowWithIconAndCategoryText(
                      categoryName: 'Help',
                      categoryIcon: 'images/Help.png',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HelpView();


                          },
                        ),
                      );
                    },
                  ),
                  RowWithIconAndCategoryText(
                      categoryName: 'About us',
                      categoryIcon: 'images/About us.png',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AboutView();

                          },
                        ),
                      );
                    },
                  ),
                  RowWithIconAndCategoryText(
                      categoryName: 'Logout',
                   ontap: (){
                     auth.signOut();
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                   },
                      categoryIcon: 'images/Log out.png',
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

  Widget CustomListTile({icon,title}){
    return    ListTile(
      title: Text('$title',style: const TextStyle(
          fontSize: 23,
          color:Color.fromARGB(255, 117, 76, 14),
          fontWeight: FontWeight.bold),),
      trailing: const Icon(Icons.arrow_forward_ios_outlined,color:Color.fromARGB(255, 117, 76, 14),),
      leading: Container(
        child: Icon(icon,size: 20,color:const Color.fromARGB(255, 117, 76, 14) ,),
        height: 40,
        width: 40,
        color: const Color.fromARGB(255, 195, 145, 38),


      ),
    );
  }
}
