
class UserDetails {
 late int id;
 late String first_name;
 late String last_name;
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


  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    first_name = json['first_name'];
    last_name = json['last_name'];
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
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;
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