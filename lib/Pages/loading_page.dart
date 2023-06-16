import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

void nextPage(BuildContext context) {
  // Navigator.pushReplacement(
  //     context, MaterialPageRoute(builder: (context) => const Login()));
  Navigator.pushReplacementNamed(context, '/get');
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      nextPage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height / 896;
    double screenwidth = MediaQuery.of(context).size.height / 414;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
              child: Container(
            padding: EdgeInsets.only(
                left: pagepadding * screenwidth,
                right: pagepadding * screenwidth,
                top: pagepadding * screenheight),
            height: 301 * screenheight,
            width: 245 * screenwidth,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Column(children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              Text('Food for Everyone', style: maintext),
              SizedBox(height: screenheight * 20),
              const CircularProgressIndicator(
                color: secondarycolor,
                // value: 0.5,
                strokeWidth: 2,
              ),
            ]),
          )),
        ),
      ),
    );
  }
}
