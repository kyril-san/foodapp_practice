import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class Textname extends StatelessWidget {
  final String name;
  final bool isclicked;
  const Textname({super.key, required this.name, this.isclicked = false});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height / 896;
    double screenwidth = MediaQuery.of(context).size.height / 414;
    return Column(
      children: [
        GestureDetector(
          child: Text(
            name,
            style: maintextblack,
          ),
          onTap: () => isclicked,
        ),
        const SizedBox(height: 10),
        if (isclicked)
          Container(
            height: 3 * screenheight,
            width: 67 * screenwidth,
            color: secondarycolor,
          )
      ],
    );
  }
}
