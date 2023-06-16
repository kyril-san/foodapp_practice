// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: const Color.fromARGB(255, 255, 75, 58),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.20,
                  width: size.width * 0.20,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo2.png',
                    height: size.height * 0.1,
                    width: size.width * 0.1,
                    scale: 3,
                    fit: BoxFit.none,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Food for\nEveryone',
                    style: GoogleFonts.varelaRound(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        left: size.width * 0.48,
                        child: SizedBox(
                          height: size.height * 0.4,
                          child: Transform.rotate(
                            angle: 8.57 * pi / 180,
                            child: Image.asset(
                              'assets/images/secondface.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: size.width * 0.34,
                        child: SizedBox(
                          height: size.height * 0.5,
                          child: Transform.rotate(
                            angle: -3.1 * pi / 180,
                            child: Image.asset(
                              'assets/images/firstface.png',
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.low,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.08,
                        bottom: size.height * 0.08,
                        child: Opacity(
                          opacity: 0.9,
                          child: Container(
                            height: size.height,
                            width: size.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    const Color.fromARGB(255, 255, 71, 11)
                                        .withOpacity(0.1),
                                    const Color.fromARGB(255, 255, 71, 11),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  tileMode: TileMode.clamp,
                                  stops: const [0.45, 0.6]),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: size.height * 0.05,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              height: size.height * 0.08,
                              width: size.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.varelaRound(
                                  color: const Color.fromARGB(255, 255, 70, 10),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
