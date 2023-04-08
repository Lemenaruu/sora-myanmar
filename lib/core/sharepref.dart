import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefNotifier extends StateNotifier<String?> {
  SharedPrefNotifier() : super(null) {
    getAuth;
  }

  static const String authToken = "token";

  static Future<void> setAuth(String token) async {
    final shp = await SharedPreferences.getInstance();
    shp.setString(authToken, token);
  }

  static Future<String?> getAuth() async {
    final shp = await SharedPreferences.getInstance();
    final result = shp.getString(authToken);
    return result;
  }

  static Future<void> clear() async {
    final shp = await SharedPreferences.getInstance();
    final result = shp.clear();
  }
}
