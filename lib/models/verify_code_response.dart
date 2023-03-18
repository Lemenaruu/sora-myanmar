// ignore_for_file: public_member_api_docs, sort_constructors_first






class VerifyCodeApiResponse {
  bool? success;
  String? message;
  int? status;
  VerifyCodeApiResponse({
    this.success,
    this.message,
    this.status,
  });

  VerifyCodeApiResponse copyWith({
    bool? success,
    String? message,
    int? status,
  }) {
    return VerifyCodeApiResponse(
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

  factory VerifyCodeApiResponse.fromMap(Map<String, dynamic> map) {
    return VerifyCodeApiResponse(
      success: map['success'] != null ? map['success'] as bool : null,
      message: map['message'] != null ? map['message'] as String : null,
      status: map['status'] != null ? map['status'] as int : null,
    );
  }


  @override
  String toString() => 'VerifyCodeApiResponse(success: $success, message: $message, status: $status)';

  @override
  bool operator ==(covariant VerifyCodeApiResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.success == success &&
      other.message == message &&
      other.status == status;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode ^ status.hashCode;
}
