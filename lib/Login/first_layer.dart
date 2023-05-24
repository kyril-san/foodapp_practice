// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:foodapp_practice/Login/second_layer.dart';
import 'package:foodapp_practice/constants/constants.dart';
import 'package:foodapp_practice/constants/text_field.dart';

class FirstCont extends StatefulWidget {
  const FirstCont({super.key});

  @override
  State<FirstCont> createState() => _FirstContState();
}

class _FirstContState extends State<FirstCont> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.height / 414;
    double screenheight = MediaQuery.of(context).size.height / 896;
    TabController tabController = TabController(length: 2, vsync: this);
    return Column(
      children: [
        Container(
          height: 382 * screenheight,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 30,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/logo2.png'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 54.62 * screenheight),
              TabBar(
                  controller: tabController,
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: secondarycolor,
                  labelPadding: EdgeInsets.only(bottom: 15 * screenheight),
                  indicatorPadding:
                      EdgeInsets.symmetric(horizontal: 20 * screenwidth),
                  tabs: [
                    Text(
                      'Login',
                      style: maintextblack,
                    ),
                    Text(
                      'Sign-Up',
                      style: maintextblack,
                    )
                  ]),
            ],
          ),
        ),
        SizedBox(
          height: 529 * screenheight,
          child: TabBarView(controller: tabController, children: const [
            Center(child: SecondCont()),
            Center(child: Text("hello second page")),
          ]),
        )
      ],
    );
  }
}
