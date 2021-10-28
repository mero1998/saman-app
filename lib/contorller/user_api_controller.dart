

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/getx/blog_controller_getx.dart';
import 'package:saman_project/getx/brand_controller_getx.dart';
import 'package:saman_project/getx/cars_controller_getx.dart';
import 'package:saman_project/getx/cart_getx_controller.dart';
import 'package:saman_project/getx/home_controller_getx.dart';
import 'package:saman_project/getx/user_getx_controller.dart';
import 'package:saman_project/models/user.dart';
import 'package:saman_project/models/user_details.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/utils/helpers.dart';



class UserApiController with Helper{

  Future<bool> register({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
    required String mobile,
    required String contryCode,
    required String countryName,
  }) async {
    var url = Uri.parse(ApiSettings.REGISTER_USER);
    print(url);
    var response = await http.post(url,
        headers: {
        "Accept": "application/json"
        },
        body: {
          "first_name" : firstName,
          "last_name" : lastName,
          "email" : email,
          "mobile" : mobile,
          "contryCode" : contryCode,
          "password" : password,
          "c_password" : password,
          "countryName" : countryName,
        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.snackbar("تمت العملية بنجاح", jsonDecode(response.body)["Message"], backgroundColor: Colors.green);
      return true;
    }
    Get.snackbar("فشل", jsonDecode(response.body)["message"], backgroundColor: Colors.red);

    print("Error ${jsonDecode(response.body)["message"]}");
    // Get.snackbar("خطأ", jsonDecode(response.body));
    return false;
  }
  Future<User?> verifyOtp(BuildContext context,{required String code,required String mobile,required String countryCode}) async{
    print( {
        "mobile":mobile,
        "contryCode":countryCode,
        "otp":code,
       });
    var url = Uri.parse(ApiSettings.OTPVERIFY);
    var response = await http.post(url,headers: {
      "Accept" : "application/json",
    }, body: {
      "mobile":mobile,
      "contryCode":countryCode,
      "otp":code,
     });
print(response.body);
    if(response.statusCode == 200){
  print(response.statusCode);
//1341
  var jsonResponse = jsonDecode(response.body)['success'];
  print(jsonDecode(response.body)['error']);
  return User.fromJson(jsonResponse);

 }else{
      Get.snackbar("خطأ", "البيانات المدخلة غير صحيحة" , backgroundColor: Colors.red);
      showSnackBar(context, jsonDecode(response.body)['error'], error: true);
      return null;
    }
}

  Future<User?> login(BuildContext context ,{required String email,required String password}) async{

    var url = Uri.parse(ApiSettings.LOGIN_USER);
    var response = await http.post(url, body: {
      "email":  email,
      "password" :  password,
    },
    );

    if(response.statusCode == 200){
      print(response.statusCode);
      var jsonResponse  = jsonDecode(response.body)['success'];
      print(jsonResponse);
      return User.fromJson(jsonResponse);
    }else{
      Get.snackbar("خطأ", "البيانات المدخلة غير صحيحة" , backgroundColor: Colors.red);
      showSnackBar(context, jsonDecode(response.body)['message'], error: true);
      return null;
    }
  }

  Future<UserDetails?> userDetails() async{
    var url = Uri.parse(ApiSettings.USERDETAILS);
    print("User URL : $url");
    print(UserPreferences().getToken());
    var response = await http.get(url,headers: {
        HttpHeaders.authorizationHeader : UserPreferences().getToken(),
    }
    );

    print("user details ${response.statusCode}");
    if(response.statusCode == 200){
      print(response.statusCode);
      var jsonResponse  = jsonDecode(response.body)['success'];
      print(jsonResponse);
      print("Finish");
      return UserDetails.fromJson(jsonResponse);
    }
    return null;
  }
  // Future<bool> refreshToken({
  //   required String token,}) async {
  //   var url = Uri.parse(ApiSettings.REFRESH_TOKEN);
  //   print("we are here");
  //   var response = await http.post(url, body: {
  //     "fcm_token": token,
  //   });
  //   print("are here");
  //   if (response.statusCode == 200) {
  //     print(response.statusCode);
  //     return true;
  //   }
  //   print("Erorr : ${response.body}");
  //   return false;
  // }

  // Future<bool> forgetPassword(BuildContext context , {required String mobile})async {
  //   var url = Uri.parse(ApiSettings.FORGET_PASSWORD);
  //   var response = await http.post(url, body: {
  //     "mobile" : mobile
  //   });
  //
  //   if(response.statusCode == 200){
  //     showSnackBar(context, jsonDecode(response.body)['message']);
  //     return true;
  //   }
  //   showSnackBar(context, jsonDecode(response.body)['message'], error:  true);
  //
  //   return false;
  // }


  Future<bool> resetPassword(BuildContext context,{required String oldPassword,required String newPassword}) async{

    var url = Uri.parse(ApiSettings.CHANGEPASSWORD);
    var response = await http.post(url , headers: {
      HttpHeaders.authorizationHeader : UserPreferences().getToken(),
    }, body: {
      "old_password" : oldPassword,
      "password" : newPassword,
      "password_confirmation" : newPassword
    }

    );
    if(response.statusCode == 200){
      return true;
    }
    return false;
  }


  Future<UserDetails?> updateProfileData({
    required String email,
    required String firstName,
    required String lastName,
    required String mobile,
    required String contryCode,
    required String countryName,
    required String path,
}) async{
    var url = Uri.parse(ApiSettings.UPDATEPROFIE);
    print(url);

    var response = await http.post(url,
        headers: {
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),
          "Accept": "application/json"
        },
        body: {
          "first_name" : firstName,
          "last_name" : lastName,
          "email" : email,
          "phone" : mobile,
          "countryCode" : contryCode,
          "countryName" : countryName,
        });

    print("User Data : ${response.statusCode}");
    if (response.statusCode == 200) {
      var jsonResponse  = jsonDecode(response.body)['data'];
      print(jsonResponse);
      print("Update Successfull");
      return UserDetails.fromJson(jsonResponse);
    }
    print("Error ${jsonDecode(response.body)["message"]}");
    // Get.snackbar("خطأ", jsonDecode(response.body));
    return null;
  }



  Future logout(BuildContext context) async{

    var url  = Uri.parse(ApiSettings.LOGOUT);
    var response = await http.get(url , headers: {
      HttpHeaders.authorizationHeader : UserPreferences().getToken(),
      // "Accept" : "application/json"
    });
    if(response.statusCode == 200){
      UserPreferences().logout();
      await Get.delete<CartGetxController>();
      await Get.delete<BrandControllerGetx>();
      await Get.delete<CarsGetxController>();
      await Get.delete<BlogControllerGetx>();
      await Get.delete<HomeGetxController>();
      await Get.delete<UserGetxController>();
      Navigator.pushNamedAndRemoveUntil(context, "/login_screen", (route) => false);
      return true;
    }
    return false;

  }


}
