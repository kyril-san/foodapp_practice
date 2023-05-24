import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class Layer1 extends StatelessWidget {
  const Layer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    // final double screenheight = MediaQuery.of(context).size.height / 896;
    return Padding(
      padding: EdgeInsets.only(right: pagepadding * screenwidth),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Vector.png'),
          IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: 0.3,
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ))
        ],
      ),
    );
  }
}
