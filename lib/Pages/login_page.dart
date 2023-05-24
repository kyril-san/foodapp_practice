// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodapp_practice/Login/first_layer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(child: FirstCont()),
    ));
  }
}
