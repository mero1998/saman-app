//
//
// class User {
//  late String token;
//  late int id;
//  late String name;
//  late String email;
//  late Null emailVerifiedAt;
//  late String createdAt;
//  late String updatedAt;
//  late String contryCode;
//  late String mobile;
//  late String role;
//  late Null otp;
//  late String image;
//  late int status;
//  late bool isVerified;
//  late int loggedIn;
//
//
//   User.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//       id = json['id'];
//       name = json['name'];
//       email = json['email'];
//       emailVerifiedAt = json['email_verified_at'];
//       createdAt = json['created_at'];
//       updatedAt = json['updated_at'];
//       contryCode = json['contryCode'];
//       mobile = json['mobile'];
//       role = json['role'];
//       otp = json['otp'];
//       image = json['image'];
//       status = json['status'];
//       isVerified = json['is_verified'];
//       loggedIn = json['logged_in'];
//
//   }
//
// }


class User {
 late String? token;
 late Data? user;


  User.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new Data.fromJson(json['user']) : null;
  }

}

class Data {
 late int id;
 late String name;
 late String email;
 late Null emailVerifiedAt;
 late String createdAt;
 late String updatedAt;
 late String contryCode;
 late String mobile;
 late String role;
 late Null otp;
 late String image;
 late int status;
 late bool isVerified;
 late int loggedIn;



  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    contryCode = json['contryCode'];
    mobile = json['mobile'];
    role = json['role'];
    otp = json['otp'];
    image = json['image'];
    status = json['status'];
    isVerified = json['is_verified'];
    loggedIn = json['logged_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['contryCode'] = this.contryCode;
    data['mobile'] = this.mobile;
    data['role'] = this.role;
    data['otp'] = this.otp;
    data['image'] = this.image;
    data['status'] = this.status;
    data['is_verified'] = this.isVerified;
    data['logged_in'] = this.loggedIn;
    return data;
  }
}