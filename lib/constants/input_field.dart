import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class InputField extends StatelessWidget {
  final String title;
  final bool isobscure;
  const InputField({
    super.key,
    required this.title,
    required this.isobscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobscure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const UnderlineInputBorder(),
        label: Opacity(
            opacity: 0.4,
            child: Text(
              title,
              style: maintextblack,
            )),
      ),
      style: maintextblack,
      autofocus: false,
    );
  }
}
