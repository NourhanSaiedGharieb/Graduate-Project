// ignore_for_file: file_names

import "package:flutter/material.dart";

// ignore: must_be_immutable
class ratingBLOCK extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ratingBLOCK({
    this.image1,
    this.text1,
    this.image2,
    this.text2,
    this.number1, 
    this.number2,
    this.ontap1,
    this.ontap2,
     this.onFav,
     this.onFav2
  });
  String? image1;
  String? text1;
  String? image2;
  String? text2;
  double? number1;
  double? number2;
  VoidCallback? ontap1;
  VoidCallback? ontap2;
  void Function()? onFav;
   void Function()? onFav2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(children: [
        const Spacer(
          flex: 1,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 195, 145, 38),
          ),
          height: MediaQuery.sizeOf(context).height / 4.9,
          child: Column(
            children: [
              Stack(
                children: [
                  IconButton(onPressed: () {}, icon: Image.asset(image1!)),
                  IconButton(
                    onPressed: onFav ?? (){},
                    icon: const Icon(Icons.favorite_border_outlined),
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              Text(
                text1!,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.5),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Rate.png',
                          width: 23,
                        ),
                        Text(
                          '$number1',
                          style: const TextStyle(
                              fontSize: 13, color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                      ),
                      onPressed: ontap1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Container(
          padding: const EdgeInsets.only(left: 2),
          width: MediaQuery.sizeOf(context).width / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 195, 145, 38),
          ),
          height: MediaQuery.sizeOf(context).height / 4.9,
          child: Column(
            children: [
              Stack(
                children: [
                  IconButton(onPressed: () {}, icon: Image.asset(image2!)),
                  IconButton(
                    onPressed: onFav2 ?? (){},
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.5),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Rate.png',
                          width: 23,
                        ),
                        Text(
                          '$number2',
                          style: const TextStyle(
                              fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ElevatedButton.icon(
                      
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20.0,
                      ),
                      label: const Text(
                        'Explore',
                        style:
                            TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                            
                      ),

                       onPressed: ontap2,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                                    const Color.fromARGB(255, 246, 214, 144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                      ),
                    ),
                    
                    )
                    
                ],
              )
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
