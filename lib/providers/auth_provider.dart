// NOTE: Token Provider
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../core/common/utils.dart';
import '../models/login_api_response.dart';
import '../services/auth_service.dart';

final tokenProvider = StateNotifierProvider<TokenNotifier, String?>(
  (ref) => TokenNotifier(),
);

class TokenNotifier extends StateNotifier<String?> {
  TokenNotifier() : super(null) {
    loadToken();
  }

  Future<void> loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    state = token;
  }

  Future<void> setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    state = token;
  }

  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    state = null;
  }
}

final userProvider = StateProvider<LoginApiResponse?>((ref) => null);

final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) =>
      AuthController(authService: ref.watch(authServiceProvider), ref: ref),
);

class AuthController extends StateNotifier<bool> {
  final AuthService _authService;
  final Ref _ref;
  AuthController({required AuthService authService, required Ref ref})
      : _authService = authService,
        _ref = ref,
        super(false);

  void loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    // state = true;

    final res =
        await _authService.loginWithEmail(email: email, password: password);
    // state = false;

    res.fold((l) {
      showSnackBar(context, l.message.toString());
    }, (r) {
      showSnackBar(context, r!.message.toString());
      context.goNamed(home);
    });
  }
  void signUp({  
    required String name,
    required String email,
    required String password,
    required BuildContext context,})async{
      final res =await _authService.register(name: name, email: email, password: password);
      res.fold((l) {
         showSnackBar(context, l.message.toString());

      }, (r) {
         showSnackBar(context, r.message.toString());
      context.goNamed(home);

      });


  }
}
