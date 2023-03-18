// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/services/product_service.dart';

import '../models/product.dart';

final productControllerProvider =
    StateNotifierProvider<ProductController, bool>((ref) {
  final productService = ref.watch(productServiceProvider);
  return ProductController(productService: productService, ref: ref);
});

final allProductProvider = FutureProvider<List<Product>>((ref) async {
  return ref.watch(productControllerProvider.notifier).getProducts();
});
final productDetailsProvider = FutureProvider.family<Product, int>((ref, id) {
  return ref.watch(productControllerProvider.notifier).getProductDetail(id);
});

class ProductController extends StateNotifier<bool> {
  final ProductService _productService;
  final Ref _ref;
  ProductController({
    required ProductService productService,
    required Ref ref,
  })  : _productService = productService,
        _ref = ref,
        super(false);

  Future<List<Product>> getProducts() async {
    return await _productService.getProducts();
  }

  Future<Product> getProductDetail(int id) async {
    return await _productService.getProductDetail(id);
  }
}
