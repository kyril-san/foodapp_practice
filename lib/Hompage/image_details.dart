import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  const ImageHolder({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/fruits.png'),
          radius: 70,
        ),
        Container(
          margin: const EdgeInsets.only(top: 60, right: 20),
          height: 270 * screenheight,
          width: 100 * screenwidth,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.green),
        )
      ],
    );
  }
}
