import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/models/register_api_response.dart';
import 'package:sora_myanmar/services/auth_service.dart';

final registerProvider =
    StateNotifierProvider<RegisterNotifier, AsyncValue<RegisterApiResponse?>>(
        (ref) {
  return RegisterNotifier(
    service: ref.watch(authServiceProvider),
  );
});

class RegisterNotifier extends StateNotifier<AsyncValue<RegisterApiResponse?>> {
  RegisterNotifier({required AuthService service})
      : _service = service,
        super(const AsyncData(null));

  final AuthService _service;

  Future<RegisterApiResponse?> register(
      {required String name,
      required String email,
      required String password}) async {
    try {
      state = const AsyncLoading();

      final user =
          await _service.register(name: name, email: email, password: password);
      print('RegisterApiResponse   $user');
      state = AsyncData(user);
      if (user!.status == 200) {
        return user;
      }
    } catch (e) {
      e.toString();
    }
    return null;
  }
}
