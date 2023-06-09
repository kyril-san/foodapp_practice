import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class ImageHolder extends StatefulWidget {
  final String image;
  final String text;
  const ImageHolder({super.key, required this.image, required this.text});

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60, left: 10, right: 10),
          height: 250 * screenheight,
          width: 100 * screenwidth,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    color: Color.fromRGBO(57, 57, 57, 0.1),
                    blurRadius: 15)
              ]),
        ),
        Container(
          decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                offset: Offset(0, 40),
                color: Color.fromRGBO(0, 0, 0, 0.07),
                blurRadius: 40)
          ]),
          child: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
            radius: 70,
          ),
        ),
        Positioned(
          bottom: screenheight * 110,
          child: Center(
              child: Text(
            widget.text,
            style: maintextblack,
          )),
        ),
        Positioned(
          bottom: screenheight * 90,
          child: Center(
              child: Text(
            'Tomato Mix',
            style: maintextblack,
          )),
        ),
        Positioned(
          bottom: screenheight * 50,
          child: Center(
              child: Text(
            '\$1,900',
            style: maintext2,
          )),
        ),
      ],
    );
  }
}
