import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/text_field.dart';

class FirstCont extends StatelessWidget {
  const FirstCont({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.height / 414;
    double screenheight = MediaQuery.of(context).size.height / 896;

    return Container(
      height: 382 * screenheight,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4), blurRadius: 30, color: Colors.white),
          ]),
      child: Stack(
        children: [
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo2.png'),
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Textname(name: 'Login', isclicked: true),
                  Textname(name: 'Sign-Up', isclicked: false)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
