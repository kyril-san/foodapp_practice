// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// import 'package:foodapp_practice/Models/login_class.dart';
import 'package:foodapp_practice/constants/constants.dart';

class ThirdLayer extends StatefulWidget {
  final Function ontap;
  const ThirdLayer({super.key, required this.ontap});

  @override
  State<ThirdLayer> createState() => _ThirdLayerState();
}

class _ThirdLayerState extends State<ThirdLayer> {
  // late LoginClass requestlogin;

  @override
  void initState() {
    super.initState();
    // requestlogin = LoginClass();
  }

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return GestureDetector(
      onTap: () => widget.ontap(),
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
    );
  }
}
