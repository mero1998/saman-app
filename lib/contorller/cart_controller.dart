
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/models/cart.dart';
import 'package:saman_project/preference/user_prefernce.dart';


class CartController{


  Future<Cart?> addToCart({required String carId}) async{
    var url = Uri.parse(ApiSettings.ADDTOCART);
    var response = await http.post(url,
        headers: {
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),

        }
        , body: {
    "car_id": carId,
    });

    if(response.statusCode == 200){
      var jsonResponse =  jsonDecode(response.body)['data'];

      Get.snackbar("نجاح", "تم اضافة المنتج الى السلة", backgroundColor: Colors.green);
    print("Response :  ${jsonResponse}");
      return Cart.fromJson(jsonResponse);
    }else{
      Get.snackbar("فشل", "حدث خطأ اثناء اضافة المنتج", backgroundColor: Colors.red);

      return null;
    }
  }


  Future<List<Cart>> indexCart() async{
    var url = Uri.parse(ApiSettings.GETCART);
    var response = await http.post(url,
        headers: {
        HttpHeaders.authorizationHeader : UserPreferences().getToken(),
        });

    print("Cart : ${response.statusCode}");
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['data'] as List;
      List<Cart> cart = jsonResponse.map((e) => Cart.fromJson(e)).toList();
      return cart;
    }else{
      return [];
    }
  }


  Future<bool> removeFromCart({required String carId}) async{
    var url = Uri.parse(ApiSettings.REMOVEFROMCART);
    var response = await http.post(url,
        headers: {
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),

        }, body: {
          "car_id": carId,
        });

    print(response.statusCode);
    if(response.statusCode == 200){
      Get.snackbar("نجاح", "تم حذف المنتج من السلة", backgroundColor: Colors.green);
      return true;
    }else{
      return false;
    }
  }
}