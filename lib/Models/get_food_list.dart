// ignore_for_file: avoid_print

import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:foodapp_practice/Models/food_list.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class GetFoodList {
  static Future<List<FoodList>> getfoodlist() async {
    final url = Uri.parse(
        'https://api.spoonacular.com/recipes/complexSearch?apiKey=ab265dd23567462a8b044704de34ec2c');
    final response = await http.get(url);
    final body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print('Connection successful');
      final List<FoodList> list = (body['results'] as List<dynamic>)
          .map((e) => FoodList.fromJson(e))
          .toList();
      //print(body);
      print(list);
      return list;
    } else {
      print('Failed to Load Foodlist');
      throw Exception('Failed to Load Foodlist');
    }
  }
}
