// ignore_for_file: prefer_const_constructors

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();

  @override

  void dispose(){
    _emailController.dispose();
    super.dispose();
  }
  Future resetpassword ()async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Text('Password reset link sent! Check your email.'),
          );
        },
      );
    }on FirebaseAuthException catch(e){
      print(e);
      showDialog(
        context: context,
        builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      },
      );
    }
  }

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
      Text('Reset Your Password ! ',
        textAlign: TextAlign.start,
        style: GoogleFonts.robotoCondensed(
          fontSize: 35, color: Color.fromARGB(255, 195, 145, 38),
        ),
      ),
      SizedBox(height: 20),
          Text('Enter your email address and we will send \n instructions to reset your password now.',
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
                 controller: _emailController,
                 // onChanged: (val){
                   // _emailController.text= val;
                 // },
                  decoration:InputDecoration(
                    hintText: 'Email',
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

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 195, 145, 38),
              ),
              onPressed: (){
                Get.defaultDialog(
                  middleText: 'Password reset link sent! Check your email.',
                );
              },
              child: Text('Reset Password',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),)
            //child: Text('Change Password'),
            //color: Color.fromARGB(255, 195, 145, 38),
          ),

          ]
    )))));
  }
}
