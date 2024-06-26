// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";

class CUSTRowICON extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CUSTRowICON({this.image, this.text1, this.ontap});
  String? image;
  String? text1;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xfff6d690)),
      height: MediaQuery.sizeOf(context).height / 7,
      width: MediaQuery.sizeOf(context).width / 4.5,
      child: Column(children: [
        IconButton(
          color: const Color(0xfff6d690),
          icon: Image.asset(image!),
          iconSize: 14,
          onPressed: ontap,
        ),
        Text(
          '$text1',
          style: const TextStyle(color: Color.fromARGB(255, 194, 144, 37)),
        ),
      ]),
    );
  }
}