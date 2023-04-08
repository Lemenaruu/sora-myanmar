import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:sora_myanmar/constants/api_constants.dart';
import 'package:sora_myanmar/models/company_api_response.dart';

import '../exceptions/exception_handlers.dart';

final blogServiceProvider = Provider<BlogService>((ref) {
  return BlogService();
});

class BlogService {
  Future<List<Companies?>> getCompanies() async {
    try {
      final url = Uri.parse(ApiConstants.companiesEndpoint);
      final resp = await http.get(url);
      ProcessResponse().processResponse(resp);
      final body = json.decode(resp.body)['data']['companies'] as List;

      final companyList =
          body.map((company) => Companies.fromJson(company)).toList();
      return companyList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e.toString());
    }
  }

  Future<Data?> getCompanyDetail() async {
    try {
      final url = Uri.parse("${ApiConstants.companyEndpoint}/673176");
      final resp = await http.get(url);
      ProcessResponse().processResponse(resp);
      final body = json.decode(resp.body)['data']['companies']['673176'];
      print("getCompanyDetail == $body");
      final companyDetail = body.map((company) => Data.fromJson(company));
      return companyDetail;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e.toString());
    }
  }

  // Future<Data?> getCompanyService() async {
  //   try {
  //     final url = Uri.parse("${ApiConstants.companyEndpoint}/service");
  //     final resp = await http.get(url);
  //     ProcessResponse().processResponse(resp);
  //     final body = json.decode(resp.body)['data']['company']['service'];
  //     print("get Service $body");
  //     final companyDetail = body.map((company) => Data.fromJson(company));
  //     return companyDetail;
  //   } catch (e) {
  //     throw ExceptionHandlers().getExceptionString(e.toString());
  //   }
  // }
}
