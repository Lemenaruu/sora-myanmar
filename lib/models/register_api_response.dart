// ignore_for_file: public_member_api_docs, sort_constructors_first

class RegisterApiResponse {
  bool? success;
  String? message;
  int? status;
  RegisterApiResponse({
    this.success,
    this.message,
    this.status,
  });

  RegisterApiResponse copyWith({
    bool? success,
    String? message,
    int? status,
  }) {
    return RegisterApiResponse(
      success: success ?? this.success,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'status': status,
    };
  }

  factory RegisterApiResponse.fromMap(Map<String, dynamic> map) {
    return RegisterApiResponse(
      success: map['success'] != null ? map['success'] as bool : null,
      message: map['message'] != null ? map['message'] as String : null,
      status: map['status'] != null ? map['status'] as int : null,
    );
  }

  @override
  String toString() =>
      'RegisterApiResponse(success: $success, message: $message, status: $status)';

  @override
  bool operator ==(covariant RegisterApiResponse other) {
    if (identical(this, other)) return true;

    return other.success == success &&
        other.message == message &&
        other.status == status;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode ^ status.hashCode;
}
