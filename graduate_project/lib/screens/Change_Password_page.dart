// ignore_for_file: prefer_const_constructors

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
class changePassword extends StatefulWidget {
  const changePassword({super.key});

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  var oldPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
    var auth = FirebaseAuth.instance;
    var currentUser = FirebaseAuth.instance.currentUser;
  changePassword({email, oldPassword, newPassword}) async{
    var cred = EmailAuthProvider.credential(email: email, password: oldPassword);
    await currentUser!.reauthenticateWithCredential(cred).then((value) {
      currentUser!.updatePassword(newPassword);
    }).catchError((error){
      print(error.toString());
  });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 249, 235),
        body: SafeArea(
        child: Center(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/tourist.png', height: 140, width: 250,),
          Text('Change Your Password ! ',
            textAlign: TextAlign.start,
            style: GoogleFonts.robotoCondensed(
              fontSize: 35, color: Color.fromARGB(255, 195, 145, 38),
            ),
          ),
          SizedBox(height: 20),
          Text('Enter your new password now.',
            textAlign: TextAlign.start,
            style: GoogleFonts.robotoCondensed(
              fontSize: 20, color: Color.fromARGB(255, 195, 145, 38),
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 28),
            child:Container(
              decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 249, 235),
                  borderRadius: BorderRadius.circular(15)
              ),
              child:Padding(padding:const EdgeInsets.symmetric(horizontal: 9),
                child:TextFormField(
                  controller: oldPasswordController,
                  // onChanged: (val){
                  // _emailController.text= val;
                  // },
                  decoration:InputDecoration(
                    hintText: 'Old Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),
                        )
                    ),
                  ),),),
            ),),
          SizedBox(height: 18),

          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 28),
            child:Container(
              decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 249, 235),
                  borderRadius: BorderRadius.circular(15)
              ),
              child:Padding(padding:const EdgeInsets.symmetric(horizontal: 9),
                child:TextFormField(
                  controller: newPasswordController,
                  // onChanged: (val){
                  // _emailController.text= val;
                  // },
                  decoration:InputDecoration(
                    hintText: 'New Password ',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),
                        )
                    ),
                  ),),),
            ),),
          SizedBox(height: 25),

           ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 195, 145, 38),
          ),
           onPressed: ()async{
               await changePassword(
                 email: "nourhan.saied5050@gmail.com",
                 oldPassword: oldPasswordController.text,
                 newPassword: newPasswordController.text,
               );
               print('Password Chanded');
             },
             child: Text('Change Password',
             style: TextStyle(
                fontSize: 22,
               fontWeight: FontWeight.w400,
               color: Colors.white,
             ),)
             //child: Text('Change Password'),
            //color: Color.fromARGB(255, 195, 145, 38),
           ),


        ]
        ))))
    );
  }
}
