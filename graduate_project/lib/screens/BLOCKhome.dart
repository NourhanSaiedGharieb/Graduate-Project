import "package:flutter/material.dart";

// ignore: must_be_immutable
class BLOCK extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  BLOCK({
    this.image1,
    this.text1,
    this.image2,
    this.text2,
    this.ontap1,
    this.ontap2,
  });
  String? image1;
  String? text1;
  String? image2;
  String? text2;
  VoidCallback? ontap1;
  VoidCallback? ontap2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(children: [
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 20,
          child: Container(
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffc68c2d),
            ),
            height: 185,
            child: Column(
              children: [
                Stack(
                  children: [
                    IconButton(onPressed: () {}, icon: Image.asset(image1!)),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined),
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
                Text(
                  text1!,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 20.0,
                  ),
                  label: const Text(
                    'Explore',
                    style: TextStyle(color:  Color.fromARGB(255, 117, 76, 14)),
                  ),
                  onPressed: ontap1,
                  style: ElevatedButton.styleFrom(
                     backgroundColor: const Color.fromARGB(255, 246, 214, 144) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Expanded(
          flex: 20,
          child: Container(
            padding: const EdgeInsets.only(left: 2),
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffc68c2d),
            ),
            height: 185,
            child: Column(
              children: [
                Stack(
                  children: [
                    IconButton(onPressed: () {}, icon: Image.asset(image2!)),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined),
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
                Text(
                  text2!,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 20.0,
                  ),
                  label: const Text(
                    'Explore',
                    style: TextStyle(color:  Color.fromARGB(255, 117, 76, 14)),
                  ),
                  onPressed: ontap2,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 214, 144) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
