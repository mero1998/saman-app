import 'dart:io';

import 'package:saman_project/api/api_settings.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/preference/user_prefernce.dart';
class WishListControllerApi{

  Future<bool> addToWishlist(int carId) async{
    var url = Uri.parse(ApiSettings.ADDTOWISHLIST);
    var response = await http.post(url, body: {
      "car_id": carId.toString(),
    },
        headers: {
          "X-Requested-With" : "XMLHttpRequest",
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),
        }
        );
    if(response.statusCode == 200){
      print("Add To Wishlist");
      return true;
    }else{
      print(response.statusCode);
      return false;
    }
  }
}