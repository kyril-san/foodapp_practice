// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:foodapp_practice/constants/constants.dart';

class InputField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool isobscure;
  String finalinput;
  InputField({
    super.key,
    required this.title,
    required this.isobscure,
    required this.controller,
    required this.finalinput,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isobscure,
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
              widget.title,
              style: maintextblack,
            )),
      ),
      style: maintextblack,
      autofocus: false,
      onChanged: (value) {
        widget.finalinput = value;
        print(widget.finalinput);
      },
      // onSaved: (input) {
      //   setState(() {
      //     input = widget.finalinput;
      //     print(widget.finalinput);
      //   });
      // },
    );
  }
}
