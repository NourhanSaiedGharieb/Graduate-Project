import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xfffff9eb),
      title: Padding(
        padding: const EdgeInsets.only(left: 74),
        child: Image.asset(
          'images/Logo Picture.png',
          width: 150,
        ),
      ),
    );
  }
}
