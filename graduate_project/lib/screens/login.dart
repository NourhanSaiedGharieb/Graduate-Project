
// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables



//import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import

// ignore: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduate_project/core/SharedPref/shared_helper.dart';
import 'package:graduate_project/screens/Forget_Password_Page.dart';
import 'package:graduate_project/screens/HomePage.dart';
import 'package:graduate_project/screens/signup.dart';


import 'package:graduate_project/src/logos.dart';

class SignIn extends StatefulWidget {

   SignIn({super.key});
  


  @override
  State<SignIn> createState()=>_login();
}
class _login extends State<SignIn>{
    // ignore: unused_field
  FirebaseAuth auth=FirebaseAuth.instance;

  late final _emailController = TextEditingController();
    // ignore: non_constant_identifier_names, unused_field
    final _PasswordController = TextEditingController();
     bool obscure= true;
    
    // ignore: override_on_non_overriding_member
    Void  (){
      super.dispose();
      _emailController.dispose();
      _PasswordController.dispose();
    }



  @override
  Widget build(BuildContext context) {
   
    Text(
               'Sign Up now. ',
               style: GoogleFonts.robotoCondensed(
                color:Color.fromARGB(255, 195, 145, 38),
                fontWeight:FontWeight.bold,
               ),
               );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 235),
      body:SafeArea(
        child:Center(
          child:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Signup()));
                  },
                  child: Text('Sign Up',style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold,
                    color:Color.fromARGB(255, 195, 145, 38),

                  ),),
                ),
              ),
        Image.asset('images/tourist.png',height: 250,width: 450,),
        Text('Welcome back!',
        textAlign: TextAlign.start,
        style: GoogleFonts.robotoCondensed(
          fontSize:30,color:Color.fromARGB(255, 195, 145, 38),
        ),
        ),
        
        SizedBox(height:15),
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
           onChanged: (val){
              _emailController.text= val;
           },
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
        SizedBox(height:20),
        
        Padding
        (padding:const EdgeInsets.symmetric(horizontal: 28),
        child:Container(
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 255, 249, 235),
            borderRadius: BorderRadius.circular(15)
          ),
         
          child:Padding(padding:const EdgeInsets.symmetric(horizontal: 9),
        
          child:TextFormField(
            controller: _PasswordController,
            onChanged: (val){
              _PasswordController.text= val;
            },
            obscureText: obscure,
         
            decoration:InputDecoration(
              hintText: 'Password',
              label: Text('Password'),
              suffixIcon: IconButton(
                icon: obscure==true?Icon(Icons.visibility_off):Icon(Icons.visibility),
                onPressed: (){
                 setState(() {
                   obscure= !obscure;
                 });
                },
              ) ,
              enabledBorder: OutlineInputBorder(
              
                borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),
                
              )
              
              ),
              focusedBorder: OutlineInputBorder(

                  borderSide: BorderSide(color:Color.fromARGB(255, 195, 145, 38),

                  )),

            ),),),
        ),),
        SizedBox(height:25),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:GestureDetector(
          
          child:GestureDetector(
            onTap: ()async{
             try{
               await auth.signInWithEmailAndPassword(
                   email: _emailController.text,
                   password:_PasswordController.text ).then((value) {
                    SharedHelper.setstring(key: 'EMAIL', value: value.user!.uid);
                   });
               Get.snackbar('done', 'please wait',
                   snackPosition: SnackPosition.BOTTOM,
                   backgroundColor: Color.fromARGB(255, 195, 145, 38),
               );
               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
             } catch(e){
               // Get.defaultDialog(
               //   middleText: 'Error'
               // );
               Get.snackbar('Error', e.toString(),backgroundColor: Color(0xfff6d690),
                   snackPosition: SnackPosition.BOTTOM,
               );
             }
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 195, 145, 38),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child:Text('Log In' ,
                style: GoogleFonts.robotoCondensed(
            fontSize:20,color:Color.fromARGB(255, 255, 255, 255),
            fontWeight:FontWeight.bold,
                ),

              ),
            ),
            ),
          ),),
        ),
        SizedBox(height:10),
        Row(
        mainAxisAlignment: MainAxisAlignment.end,
          children:[
            GestureDetector(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context){
                  return ForgetPassword();
    }));},

            child:Text(
               'Forget Password?      ',
               style: GoogleFonts.robotoCondensed(
                color:Color.fromARGB(255, 195, 145, 38),
                fontWeight:FontWeight.bold,
               ),
               ),
            ),
          ]
        ),
        SizedBox(height:20),
          Padding(padding:const EdgeInsets.only(left: 18,right: 18),
          child: Row(mainAxisAlignment:
           MainAxisAlignment.spaceEvenly,
           children: [
            Text('---------------',style: TextStyle(color: Colors.grey,fontSize: 30),),
                Text('Or Log in with',style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,),),
            Text('---------------',style: TextStyle(color: Colors.grey,fontSize: 30),),
            ],
           ),
          ),
          SizedBox(height:20),


            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logos(imagepath:'images/google-logo-icon-png.png' ),
               SizedBox(width: 25,),
              logos(imagepath: 'images/Facebook-logo-png.png',),
              SizedBox(width: 25,),
             // logos(imagepath: 'images/apple-logo-png.png'),
            ]
          ),
          SizedBox(height:40),


          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
            "Don't have an account?  ",
              style: GoogleFonts.robotoCondensed(
                color:Color.fromARGB(255, 124, 91, 20),
                fontWeight:FontWeight.bold,
              ),
            ),
            
              Text(
            "Sign Up now. ",
              style: GoogleFonts.robotoCondensed(
                color:Color.fromARGB(255, 195, 145, 38),
                fontWeight:FontWeight.bold,
              ),
            ),
          ],
          ),
           SizedBox(height:5),
        
          ]
          ),
         ),
         ),
      ),
      ),
    );
    }

   Widget _SocialMedia({required Color color,required IconData icon}){
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        border:Border.all(color:Color.fromARGB(255, 255, 249, 235),),
        borderRadius: BorderRadius.circular(15),),
        child: Center(child: FaIcon(icon,color: color,),),
    );
   }
}
    


 