import 'package:flutter/material.dart';
import 'package:foodapp_practice/Login/third_layer.dart';
import 'package:foodapp_practice/Models/api_login.dart';
import 'package:foodapp_practice/Models/login_class.dart';
import 'package:foodapp_practice/constants/constants.dart';
import 'package:foodapp_practice/constants/input_field.dart';

class SecondCont extends StatefulWidget {
  const SecondCont({super.key});

  @override
  State<SecondCont> createState() => _SecondContState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
String? finalemail;
String? finalpass;

void nextpage(BuildContext context) {
  Navigator.pushReplacementNamed(context, '/home');
}

class _SecondContState extends State<SecondCont> {
  _actionbutton() async {
    finalemail = email.text;
    finalpass = password.text;
    final response = await ApiLogin.apilogin(
        LoginClass(email: finalemail, password: finalpass));
    if (response == true) {
      nextpage(context);
    }
  }

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
          InputField(
            isobscure: false,
            title: 'Email Address',
            controller: email,
          ),
          SizedBox(height: 52.5 * screenheight),
          InputField(
            isobscure: true,
            title: 'Password',
            controller: password,
          ),
          SizedBox(height: 34 * screenheight),
          Text(
            'Forgot Password?',
            style: maintext2,
          ),
          SizedBox(height: 68 * screenheight),
          ThirdLayer(
            ontap: () => _actionbutton(),
          )
        ],
      ),
    );
  }
}
