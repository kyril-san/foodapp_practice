import 'package:flutter/material.dart';
import 'package:foodapp_practice/Login/third_layer.dart';
import 'package:foodapp_practice/constants/constants.dart';
import 'package:foodapp_practice/constants/input_field.dart';

class SecondCont extends StatelessWidget {
  const SecondCont({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: pagepadding * screenwidth,
          vertical: pagepadding * screenheight),
      width: double.infinity,
      color: const Color.fromARGB(255, 242, 242, 242),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InputField(isobscure: false, title: 'Email Address'),
          SizedBox(height: 52.5 * screenheight),
          const InputField(isobscure: true, title: 'Password'),
          SizedBox(height: 34 * screenheight),
          Text(
            'Forgot Password?',
            style: maintext2,
          ),
          SizedBox(height: 68 * screenheight),
          const ThirdLayer()
        ],
      ),
    );
  }
}
