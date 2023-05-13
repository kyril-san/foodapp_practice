import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class Textname extends StatelessWidget {
  final String name;
  final bool isclicked;
  const Textname({super.key, required this.name, required this.isclicked});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height / 896;
    double screenwidth = MediaQuery.of(context).size.height / 414;
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Text(
            name,
            style: maintextblack,
          ),
          const SizedBox(height: 10),
          Container(
            height: 3 * screenheight,
            width: 67 * screenwidth,
            color: isclicked ? secondarycolor : Colors.white,
          )
        ],
      ),
    );
  }
}
