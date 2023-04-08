import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';
import '../models/product.dart';

final productServiceProvider = Provider((ref) => ProductService());

class ProductService {
  String endpoint = "${ApiConstants.baseApiEndpoint}/products";

  Future<List<Product>> getProducts() async {
    final url = Uri.parse(endpoint);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      var list = json.decode(response.body)['data']['products'] as List;

      final products = list.map((data) {
        final a = Product.fromJson(data);
        log(a.toString());
        return a;
      }).toList();

      return products;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<Product> getProductDetail(int id) async {
    final url = Uri.parse("$endpoint/$id");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('product ---- ${response.body}');
      var data = json.decode(response.body)['data']['products'][id];
      final product = Product.fromJson(data);
      return product;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
