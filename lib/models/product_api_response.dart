



import 'package:sora_myanmar/models/pagination.dart';
import 'package:sora_myanmar/models/product.dart';

class ProductApiResponse {
  bool? success;
  Data? data;
  String? message;
  int? status;
}


class Data {
  List<Product>? products;
  Pagination? pagination;
}