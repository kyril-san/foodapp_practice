import 'package:flutter/material.dart';
import 'package:foodapp_practice/Models/login_class.dart';
import 'package:foodapp_practice/constants/constants.dart';

class ThirdLayer extends StatefulWidget {
  final String? finalemail;
  final String? finalpassword;
  const ThirdLayer(
      {super.key, required this.finalemail, required this.finalpassword});

  @override
  State<ThirdLayer> createState() => _ThirdLayerState();
}

class _ThirdLayerState extends State<ThirdLayer> {
  late LoginClass requestlogin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestlogin = LoginClass();
  }

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.height / 414;
    final double screenheight = MediaQuery.of(context).size.height / 896;
    return GestureDetector(
      onTap: () {
        print('email: ${widget.finalemail} and pass: ${widget.finalpassword}');
        requestlogin = LoginClass(
            email: widget.finalemail, password: widget.finalpassword);
        print(requestlogin.toJson());
      },
      child: Container(
        height: 70 * screenheight,
        width: screenwidth * 314,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: secondarycolor),
        child: Center(
          child: Text(
            'Login',
            style: maintextwhite,
          ),
        ),
      ),
    );
  }
}
