// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class RowWithIconAndCategoryText extends StatelessWidget {
  RowWithIconAndCategoryText({
    required this.categoryName,
    required this.categoryIcon,
    this.ontap,
  });
  final String? categoryName;
  final String? categoryIcon;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 14),
      child: GestureDetector(
        onTap: ontap,
        child: Row(
          children: [
            ImageIcon(
              AssetImage('$categoryIcon'),
              color: const Color.fromARGB(255, 153, 112, 23),
              size: 40,
            ),
            Text(
              '$categoryName',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color.fromARGB(255, 153, 112, 23),
              ),
            )
          ],
        ),
      ),
    );
  }
}