// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class date extends StatefulWidget {
  const date({super.key}); 

  @override
  State<date> createState() => _date_timeState();
}

class _date_timeState extends State<date> {
  DateTime dateTime=DateTime(2024,3,18,7,30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 255, 249, 235),
      body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/BACKGROUND_1 (1).png'))
          ),
          child: Column(
            

            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [

            Text('${dateTime.day}/${dateTime.month}/${dateTime.year}- ${dateTime.hour},${dateTime.minute}',
          style: const TextStyle(fontSize: 30),),
          
          const SizedBox(height: 10),
          
            SizedBox(height:60),
            ElevatedButton(child: const Text('Select date & Time ',
            style: TextStyle(fontSize: 20),
            ),
            onPressed: () async{
              DateTime? newDate=await
              showDatePicker(context: context,
              initialDate: dateTime,
               firstDate: DateTime(2000),
                lastDate: DateTime(2050),);
              if(newDate==null)return;
              TimeOfDay? newTime= await showTimePicker(context: context,
              initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
              );
              if(newTime==null)return; 
              // ignore: unused_local_variable
              final newDateTime=(newDate.year,
              newDate.month,
              newDate.day,
              newTime.hour,
              newTime.minute);
              setState((){
                dateTime=newDate;
              });
            },
            ),
            const SizedBox(height: 30),
            Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110),
          child:Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 195, 145, 38),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child:Text('Next.. ' ,
              style: GoogleFonts.robotoCondensed(
          fontSize:20,color:Color.fromARGB(255, 255, 255, 255),
          fontWeight:FontWeight.bold,
          
              ),
            
            ),
          ),
          ),
        ),

       
          ],
        )
              ),
    );
  }
}