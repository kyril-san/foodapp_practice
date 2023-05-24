// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:foodapp_practice/Pages/Home_page.dart';
import 'package:foodapp_practice/Pages/login_page.dart';
import 'package:foodapp_practice/Pages/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: const Color.fromARGB(255, 182, 182, 182),
      ),
      home: const Homepage(),
    );
  }
}
