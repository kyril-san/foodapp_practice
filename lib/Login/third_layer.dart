import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class ThirdLayer extends StatelessWidget {
  const ThirdLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return GestureDetector(
      child: Container(
        height: 70 * screenheight,
        width: screenwidth * 314,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: secondarycolor),
        child: Center(
          child: Text(
            'Login',
            style: maintextwhite,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
