// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';
// import 'dart:io';

class User {
  int? guid;
  String? fullname;
  String? email;
  String? phNo;
  int? isActive;
  String? lastLogin;
  String? role;
  String? createdBy;
  String? createdWhen;
  String? updatedBy;
  String? updatedWhen;
  int? status;
  dynamic isReset;
  String? dob;
  String? gender;
  String? profilPic;
  String? secreteCode;
  String? roomId;
  int? isGuest;
  int? isBroker;
  dynamic hash;
  String? googleId;
  String? fbId;
  String? referralCode;
  String? mPoint;
  User({
    this.guid,
    this.fullname,
    this.email,
    this.phNo,
    this.isActive,
    this.lastLogin,
    this.role,
    this.createdBy,
    this.createdWhen,
    this.updatedBy,
    this.updatedWhen,
    this.status,
    required this.isReset,
    this.dob,
    this.gender,
    this.profilPic,
    this.secreteCode,
    this.roomId,
    this.isGuest,
    this.isBroker,
    required this.hash,
    this.googleId,
    this.fbId,
    this.referralCode,
    this.mPoint,
  });

  User copyWith({
    int? guid,
    String? fullname,
    String? email,
    String? phNo,
    int? isActive,
    String? lastLogin,
    String? role,
    String? createdBy,
    String? createdWhen,
    String? updatedBy,
    String? updatedWhen,
    int? status,
    dynamic? isReset,
    String? dob,
    String? gender,
    String? profilPic,
    String? secreteCode,
    String? roomId,
    int? isGuest,
    int? isBroker,
    dynamic? hash,
    String? googleId,
    String? fbId,
    String? referralCode,
    String? mPoint,
  }) {
    return User(
      guid: guid ?? this.guid,
      fullname: fullname ?? this.fullname,
      email: email ?? this.email,
      phNo: phNo ?? this.phNo,
      isActive: isActive ?? this.isActive,
      lastLogin: lastLogin ?? this.lastLogin,
      role: role ?? this.role,
      createdBy: createdBy ?? this.createdBy,
      createdWhen: createdWhen ?? this.createdWhen,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedWhen: updatedWhen ?? this.updatedWhen,
      status: status ?? this.status,
      isReset: isReset ?? this.isReset,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      profilPic: profilPic ?? this.profilPic,
      secreteCode: secreteCode ?? this.secreteCode,
      roomId: roomId ?? this.roomId,
      isGuest: isGuest ?? this.isGuest,
      isBroker: isBroker ?? this.isBroker,
      hash: hash ?? this.hash,
      googleId: googleId ?? this.googleId,
      fbId: fbId ?? this.fbId,
      referralCode: referralCode ?? this.referralCode,
      mPoint: mPoint ?? this.mPoint,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
      'fullname': fullname,
      'email': email,
      'phNo': phNo,
      'isActive': isActive,
      'lastLogin': lastLogin,
      'role': role,
      'createdBy': createdBy,
      'createdWhen': createdWhen,
      'updatedBy': updatedBy,
      'updatedWhen': updatedWhen,
      'status': status,
      'isReset': isReset,
      'dob': dob,
      'gender': gender,
      'profilPic': profilPic,
      'secreteCode': secreteCode,
      'roomId': roomId,
      'isGuest': isGuest,
      'isBroker': isBroker,
      'hash': hash,
      'googleId': googleId,
      'fbId': fbId,
      'referralCode': referralCode,
      'mPoint': mPoint,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      guid: map['guid'] != null ? map['guid'] as int : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phNo: map['phNo'] != null ? map['phNo'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as int : null,
      lastLogin: map['lastLogin'] != null ? map['lastLogin'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      createdBy: map['createdBy'] != null ? map['createdBy'] as String : null,
      createdWhen:
          map['createdWhen'] != null ? map['createdWhen'] as String : null,
      updatedBy: map['updatedBy'] != null ? map['updatedBy'] as String : null,
      updatedWhen:
          map['updatedWhen'] != null ? map['updatedWhen'] as String : null,
      status: map['status'] != null ? map['status'] as int : null,
      isReset: map['isReset'] as dynamic,
      dob: map['dob'] != null ? map['dob'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      profilPic: map['profilPic'] != null ? map['profilPic'] as String : null,
      secreteCode:
          map['secreteCode'] != null ? map['secreteCode'] as String : null,
      roomId: map['roomId'] != null ? map['roomId'] as String : null,
      isGuest: map['isGuest'] != null ? map['isGuest'] as int : null,
      isBroker: map['isBroker'] != null ? map['isBroker'] as int : null,
      hash: map['hash'] as dynamic,
      googleId: map['googleId'] != null ? map['googleId'] as String : null,
      fbId: map['fbId'] != null ? map['fbId'] as String : null,
      referralCode:
          map['referralCode'] != null ? map['referralCode'] as String : null,
      mPoint: map['mPoint'] != null ? map['mPoint'] as String : null,
    );
  }

  @override
  String toString() {
    return 'User(guid: $guid, fullname: $fullname, email: $email, phNo: $phNo, isActive: $isActive, lastLogin: $lastLogin, role: $role, createdBy: $createdBy, createdWhen: $createdWhen, updatedBy: $updatedBy, updatedWhen: $updatedWhen, status: $status, isReset: $isReset, dob: $dob, gender: $gender, profilPic: $profilPic, secreteCode: $secreteCode, roomId: $roomId, isGuest: $isGuest, isBroker: $isBroker, hash: $hash, googleId: $googleId, fbId: $fbId, referralCode: $referralCode, mPoint: $mPoint)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.guid == guid &&
        other.fullname == fullname &&
        other.email == email &&
        other.phNo == phNo &&
        other.isActive == isActive &&
        other.lastLogin == lastLogin &&
        other.role == role &&
        other.createdBy == createdBy &&
        other.createdWhen == createdWhen &&
        other.updatedBy == updatedBy &&
        other.updatedWhen == updatedWhen &&
        other.status == status &&
        other.isReset == isReset &&
        other.dob == dob &&
        other.gender == gender &&
        other.profilPic == profilPic &&
        other.secreteCode == secreteCode &&
        other.roomId == roomId &&
        other.isGuest == isGuest &&
        other.isBroker == isBroker &&
        other.hash == hash &&
        other.googleId == googleId &&
        other.fbId == fbId &&
        other.referralCode == referralCode &&
        other.mPoint == mPoint;
  }

  @override
  int get hashCode {
    return guid.hashCode ^
        fullname.hashCode ^
        email.hashCode ^
        phNo.hashCode ^
        isActive.hashCode ^
        lastLogin.hashCode ^
        role.hashCode ^
        createdBy.hashCode ^
        createdWhen.hashCode ^
        updatedBy.hashCode ^
        updatedWhen.hashCode ^
        status.hashCode ^
        isReset.hashCode ^
        dob.hashCode ^
        gender.hashCode ^
        profilPic.hashCode ^
        secreteCode.hashCode ^
        roomId.hashCode ^
        isGuest.hashCode ^
        isBroker.hashCode ^
        hash.hashCode ^
        googleId.hashCode ^
        fbId.hashCode ^
        referralCode.hashCode ^
        mPoint.hashCode;
  }
}
