import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class SecondCont extends StatelessWidget {
  const SecondCont({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: pagepadding * screenwidth),
      width: double.infinity,
      color: const Color.fromARGB(255, 242, 242, 242),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              label: Text('Email'),
            ),
            style: maintextblack,
            autofocus: false,
          )
        ],
      ),
    );
  }
}
