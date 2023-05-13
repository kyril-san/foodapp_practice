import 'package:flutter/material.dart';
import 'package:foodapp_practice/Login/first_layer.dart';
import 'package:foodapp_practice/Login/second_layer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Column(
        children: [
          const FirstCont(),
          SizedBox(height: 64 * screenheight),
          const SecondCont(),
        ],
      ),
    ));
  }
}
