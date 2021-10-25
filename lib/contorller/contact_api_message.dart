import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:saman_project/api/api_settings.dart';
import 'package:http/http.dart' as http;
class ContactApiMessage{

  Future<bool> sendContactMessage({required String name ,required String email, required String message})async {
    var url = Uri.parse(ApiSettings.CONTACTS);
    print(url);
    var response = await http.post(url,
        headers: {
          "Accept": "application/json"
        },
        body: {
          "name" : name,
          "email" : email,
          "message" : message,
        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.snackbar("تمت العملية بنجاح", jsonDecode(response.body)["message"], backgroundColor: Colors.green);
      return true;
    }
    print("Error ${jsonDecode(response.body)["error"]}");
    Get.snackbar("خطأ", jsonDecode(response.body)['error']);
    return false;
  }

}