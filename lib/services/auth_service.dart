// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:sora_myanmar/constants/api_constants.dart';
import 'package:sora_myanmar/models/login_api_response.dart';
import 'package:sora_myanmar/models/verify_code_response.dart';

import '../models/register_api_response.dart';
import '../models/user_model.dart';

final authServiceProvider = Provider((ref) => AuthService());

class AuthService {
  String endpoint = ApiConstants.baseApiEndpoint;

  Future<LoginApiResponse?> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final url = Uri.parse("$endpoint/login");

      final response = await http.post(
        url,
        body: {
          "email": email,
          "password": password,
        },
      );
      print(response.statusCode);
      final body = json.decode(response.body);
      final data = LoginApiResponse.fromMap(body);

      print(data);

      if (response.statusCode == 200) {
        return data.copyWith(token: data.token);
      } else {
        return null;
      }
    } on Exception catch (e) {
      throw e.toString();
    } catch (e) {
      e.toString();
    }
    return null;
  }

  Future<RegisterApiResponse?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final url = Uri.parse("$endpoint/register");

      final response = await http.post(
        url,
        body: {
          "fullname": name,
          "email": email,
          "password": password,
        },
      );
      print("response.body ${response.body}");
      final body = json.decode(response.body);
      final data = RegisterApiResponse.fromMap(body);

      if (response.statusCode == 200) {
        return data;
      } else {
        return null;
      }
    } on Exception catch (e) {
      throw e.toString();
    } catch (e) {
      e.toString();
    }
    return null;

    // if (response.statusCode == 200 || response.statusCode == 201) {
    //   var data = json.decode(response.body);
    //   return RegisterApiResponse.fromMap(data);
    // } else if (response.statusCode == 400) {
    //   var data = json.decode(response.body);
    //   return RegisterApiResponse.fromMap(data);
    // } else {
    //   throw Exception(response.reasonPhrase);
    // }
  }

  Future<VerifyCodeApiResponse> verify(String code) async {
    final url = Uri.parse("$endpoint/verify-code");
    final response = await http.post(
      url,
      body: {
        "otp_code": code,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(response.body);
      return VerifyCodeApiResponse.fromMap(data);
    } else if (response.statusCode == 400) {
      var data = json.decode(response.body);
      return VerifyCodeApiResponse.fromMap(data);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<User> me(String token) async {
    final url = Uri.parse("$endpoint/me");
    final response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader: token,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(response.body)['data'];
      return User.fromMap(data);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

 // FutureEither<LoginApiResponse> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     final googleAuth = await googleUser?.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );

  //     UserCredential userCredential =
  //         await _auth.signInWithCredential(credential);
  //     print(userCredential.user?.email);
  //     return right()
  //   } catch (e) {
  //     return left(Failure(e.toString()));
  //   }
  // }
