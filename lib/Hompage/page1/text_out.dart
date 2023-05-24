// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textout extends StatelessWidget {
  const Textout({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Delicious\nFood For You',
      style: GoogleFonts.varelaRound(
          fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
