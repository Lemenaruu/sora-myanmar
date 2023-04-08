import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:sora_myanmar/constants/api_constants.dart';
import 'package:sora_myanmar/models/product.dart';

final categoryServiceProvider = Provider((ref) {
  return CategoryService();
});

class CategoryService {
  final endpoint = "${ApiConstants.baseApiEndpoint}/categories";

  Future<List<Category>> getCategories() async {
    final url = Uri.parse(endpoint);

    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var list = json.decode(response.body)['data']['categories'] as List;

      print(list);
      print(list.length);

      return list.map((e) => Category.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }

  Future<Category> getCategoryDetail(int id) async {
    final url = Uri.parse("$endpoint/$id");
    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('category ---- ${response.body}');
      var data = json.decode(response.body)['data']['products'][id];
      final category = Category.fromJson(data);
      return category;
    } else {
      throw Exception();
    }
  }
}
