import "package:flutter/material.dart";

class logos extends StatelessWidget {
  final String imagepath;
  const logos({super.key,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 195, 145, 38)),
      borderRadius:BorderRadius.circular(18),
      ),
      child: Image.asset(imagepath,height: 40,),
    );
  }
}