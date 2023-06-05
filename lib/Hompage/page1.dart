import 'package:flutter/material.dart';
import 'package:foodapp_practice/Hompage/image_details.dart';
import 'package:foodapp_practice/Hompage/page1/layer1.dart';
import 'package:foodapp_practice/Hompage/page1/search.dart';
import 'package:foodapp_practice/Hompage/page1/text_out.dart';
import 'package:foodapp_practice/Models/food_list.dart';
import 'package:foodapp_practice/Models/get_food_list.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  late Future<List<FoodList>> food;

  @override
  void initState() {
    super.initState();
    food = GetFoodList.getfoodlist();
  }

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    // ignore: no_leading_underscores_for_local_identifiers
    TabController _controller = TabController(length: 4, vsync: this);

    return Container(
      padding: EdgeInsets.only(
          left: pagepadding * screenwidth, top: pagepadding * screenheight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Layer1(),
          SizedBox(height: 43.33 * screenheight),
          const Textout(),
          SizedBox(height: 28 * screenheight),
          const SearchBox(),
          SizedBox(height: 46 * screenheight),
          SingleChildScrollView(
            child: TabBar(
                controller: _controller,
                isScrollable: true,
                labelPadding: EdgeInsets.only(
                    bottom: 10 * screenheight,
                    left: 11 * screenwidth,
                    right: 11 * screenwidth),
                indicatorColor: secondarycolor,
                labelColor: secondarycolor,
                unselectedLabelColor: const Color.fromARGB(255, 154, 154, 157),
                tabs: [
                  Text('Foods',
                      style: GoogleFonts.varelaRound(
                          fontSize: 17, fontWeight: FontWeight.w400)),
                  Text('Drinks',
                      style: GoogleFonts.varelaRound(
                          fontSize: 17, fontWeight: FontWeight.w400)),
                  Text('Snacks',
                      style: GoogleFonts.varelaRound(
                          fontSize: 17, fontWeight: FontWeight.w400)),
                  Text('Sauce',
                      style: GoogleFonts.varelaRound(
                          fontSize: 17, fontWeight: FontWeight.w400))
                ]),
          ),
          SizedBox(height: 58 * screenheight),
          Padding(
            padding: EdgeInsets.only(right: pagepadding * screenwidth),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('See more', style: maintext),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: [
              FutureBuilder(
                  future: food,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final food = snapshot.data;
                      return ListView.builder(
                          itemCount: food!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ImageHolder(
                              image: food[index].image,
                              text: food[index].title.substring(0, 10),
                            );
                          });
                    } else {
                      if (snapshot.hasError) {
                        return const Center(child: Text('Error'));
                      }
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
              const Center(child: Text("fill2")),
              const Center(child: Text("fill3")),
              const Center(child: Text("fill4")),
            ]),
          )
        ],
      ),
    );
  }
}
