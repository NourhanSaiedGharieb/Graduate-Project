import "package:flutter/material.dart";
class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 249, 235),
        leading: BackButton(color: Color.fromARGB(255, 117, 76, 14),),
        title:Padding(
          padding: const EdgeInsets.only(left: 73),
          child: Image.asset(
            'images/Logo Picture.png',
            width: 150,
          ),
        ),
      ),

      backgroundColor: Color.fromARGB(255, 255, 249, 235),
      body: ListView(
          children: [
      const Padding(
      padding: EdgeInsets.only(left: 105),
      child: Text(
        'Favourite Page',
        style: TextStyle(
            color: Color(0xffc39126),
            fontSize: 35,
            fontWeight: FontWeight.bold),
      ),
    ),
    ]),
    );
  }
}
