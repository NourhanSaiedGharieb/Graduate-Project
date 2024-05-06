// ignore_for_file: must_be_immutable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SettingTextField extends StatelessWidget {
  SettingTextField({this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  '$text',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 46, 81, 110),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Image.asset('images/icon personal.png'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: SizedBox(
            width: 290,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
