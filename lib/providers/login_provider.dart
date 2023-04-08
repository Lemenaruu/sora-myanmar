import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/models/login_api_response.dart';
import 'package:sora_myanmar/providers/auth_provider.dart';
import 'package:sora_myanmar/services/auth_service.dart';

final loginProvider =
    StateNotifierProvider<LoginNotifier, AsyncValue<LoginApiResponse?>>((ref) {
  return LoginNotifier(service: ref.watch(authServiceProvider));
});

class LoginNotifier extends StateNotifier<AsyncValue<LoginApiResponse?>> {
  LoginNotifier({required AuthService service})
      : _service = service,
        super(const AsyncData(null));
  final AuthService _service;

  Future<bool> loginWithEmail(
      {required String email, required String password}) async {
    try {
      state = const AsyncLoading();
      final user =
          await _service.loginWithEmail(email: email, password: password);
      print('LoginApiResponse   $user');
      state = AsyncData(user);
      if (user?.token != null) {
        await TokenNotifier().setToken(user!.token!);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      e.toString();
      return false;
    }
  }
}
