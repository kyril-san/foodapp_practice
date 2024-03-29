// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'dart:convert';

import 'package:foodapp_practice/Models/login_class.dart';
import 'package:http/http.dart' as http;

class ApiLogin {
  static Future<bool> apilogin(LoginClass loginClass) async {
    final url = Uri.parse('https://wordsdrip.onrender.com/login');
    final headers = {'Content-Type': 'application/json'};
    final body = loginClass.toJson();
    final response =
        await http.post(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200) {
      bool success = true;
      print('success');
      print(body);
      return success;
    } else {
      print('error:${response.reasonPhrase}');
      throw Exception('failed: ${response.reasonPhrase}');
    }
  }
}
