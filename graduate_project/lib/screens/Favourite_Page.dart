import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "package:graduate_project/core/SharedPref/shared_helper.dart";
import "package:graduate_project/screens/RateBlokes.dart";

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<dynamic> data = [];
  void getData() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(SharedHelper.getstring(key: 'EMAIL'))
        .collection('favorite')
        .get()
        .then((value) {
      setState(() {
        data = value.docs;
      });
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 235),
          leading: BackButton(
            color: Color.fromARGB(255, 117, 76, 14),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 73),
            child: Image.asset(
              'images/Logo Picture.png',
              width: 150,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 249, 235),
        body: Expanded(
          child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FavWidget(
                  onFav: () async {
                    FirebaseFirestore.instance
                        .collection('Users')
                        .doc(SharedHelper.getstring(key: 'EMAIL'))
                        .collection('favorite')
                        .doc(data[index].id)
                        .delete();

                    data.removeAt(index);
                    setState(() {});
                  },
                  image1: data[index]['image'],
                  text1: data[index]['text'],
                  number1: data[index]['number'],

                  ontap1: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return BabZuweillaDescription();
                    //     },
                    //   ),
                    // );
                  },
                  ontap2: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return OperaHouseDescription();
                    //     },
                    //   ),
                    // );
                  },
                ),
              );
            },
          ),
        ));
  }
}

class FavWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  FavWidget(
      {this.image1,
      this.text1,
      this.number1,
      this.ontap1,
      this.ontap2,
      this.onFav});
  String? image1;
  String? text1;
  double? number1;
  VoidCallback? ontap1;
  VoidCallback? ontap2;
  void Function()? onFav;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
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
                onPressed: onFav ?? () {},
                icon: const Icon(Icons.favorite_border_outlined),
                alignment: Alignment.topRight,
              ),
            ],
          ),
          Text(
            text1!,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold),
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
                          fontSize: 13,
                          color: Color.fromARGB(255, 255, 255, 255)),
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
                    style: TextStyle(color: Color.fromARGB(255, 117, 76, 14)),
                  ),
                  onPressed: ontap1,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 214, 144),
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
    );
  }
}
