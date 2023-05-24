import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

import '../Hompage/page1.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int _currentindex = 0;

const pages = [
  Page1(),
  Center(child: Text('Second Page')),
  Center(child: Text('Third Page')),
  Center(child: Text('Fourth Page')),
];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // final double screenwidth = MediaQuery.of(context).size.height / 414;
    // final double screenheight = MediaQuery.of(context).size.height / 896;
    return SafeArea(
      child: Scaffold(
        backgroundColor: greycolor,
        body: pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: greycolor,
            elevation: 0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: secondarycolor,
            iconSize: 24,
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
            ]),
      ),
    );
  }
}
