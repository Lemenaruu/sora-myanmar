// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:sora_myanmar/models/user_model.dart';

class LoginApiResponse {
  bool? success;
  String? token;
  String? message;
  User? data;
  int? status;
  LoginApiResponse({
    this.success,
    this.token,
    this.message,
    this.data,
    this.status,
  });


  LoginApiResponse copyWith({
    bool? success,
    String? token,
    String? message,
    User? data,
    int? status,
  }) {
    return LoginApiResponse(
      success: success ?? this.success,
      token: token ?? this.token,
      message: message ?? this.message,
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'token': token,
      'message': message,
      'data': data?.toMap(),
      'status': status,
    };
  }

  factory LoginApiResponse.fromMap(Map<String, dynamic> map) {
    return LoginApiResponse(
      success: map['success'] != null ? map['success'] as bool : null,
      token: map['token'] != null ? map['token'] as String : null,
      message: map['message'] != null ? map['message'] as String : null,
      data: map['data'] != null ? User.fromMap(map['data'] as Map<String,dynamic>) : null,
      status: map['status'] != null ? map['status'] as int : null,
    );
  }

  @override
  String toString() {
    return 'LoginApiResponse(success: $success, token: $token, message: $message, data: $data, status: $status)';
  }

  @override
  bool operator ==(covariant LoginApiResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.success == success &&
      other.token == token &&
      other.message == message &&
      other.data == data &&
      other.status == status;
  }

  @override
  int get hashCode {
    return success.hashCode ^
      token.hashCode ^
      message.hashCode ^
      data.hashCode ^
      status.hashCode;
  }
}
