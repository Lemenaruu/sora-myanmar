// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/services/category_service.dart';

import '../models/product.dart';

final allCategoryProvider = FutureProvider<List<Category>>((ref) async {
  return ref.read(categoryControllerProvider.notifier).getCategories();
});

final getCategoryDetail = FutureProvider.family<Category, int>((ref, id) async {
  return ref.read(categoryControllerProvider.notifier).getCategoryDetail(id);
});

final categoryControllerProvider =
    StateNotifierProvider<CategoryController, bool>((ref) {
  final categoryService = ref.watch(categoryServiceProvider);
  return CategoryController(categoryService: categoryService);
});

class CategoryController extends StateNotifier<bool> {
  final CategoryService _categoryService;
  CategoryController({
    required CategoryService categoryService,
  })  : _categoryService = categoryService,
        super(false);

  Future<List<Category>> getCategories() async {
    return await _categoryService.getCategories();
  }

  Future<Category> getCategoryDetail(int id) async {
    return await _categoryService.getCategoryDetail(id);
  }
}
