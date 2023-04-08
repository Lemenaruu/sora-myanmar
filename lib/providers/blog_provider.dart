import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/models/company_api_response.dart';

import '../services/blog_service.dart';

final blogProvider =
    StateNotifierProvider<BlogNotifier, AsyncValue<List<Companies?>>>((ref) {
  return BlogNotifier(ref.watch(blogServiceProvider));
});

class BlogNotifier extends StateNotifier<AsyncValue<List<Companies?>>> {
  BlogNotifier(this._companyService) : super(const AsyncLoading()) {
    getCompanies();
  }

  final BlogService _companyService;

  Future<void> getCompanies() async {
    try {
      state = const AsyncLoading();
      final result = await _companyService.getCompanies();
      state = AsyncData(result);
    } catch (e) {
      state = AsyncError(e, StackTrace.empty);
    }
  }
}
