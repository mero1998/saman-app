import 'dart:convert';
import 'dart:io';

import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/models/partners.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/models/reviews.dart';
import 'package:saman_project/preference/user_prefernce.dart';
class ReviwesControllerApi{


  Future<List<Reviews>> indexReviews() async{

    var url = Uri.parse(ApiSettings.REVIEWS);
    var response = await http.get(url,
        headers: {
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),

        });

    if(response.statusCode == 200){
      var jsonResponse =  jsonDecode(response.body)['success'];

      print("Response :  ${jsonResponse}");
      List<Reviews>  reviews =  jsonResponse.map((e) => Reviews.fromJson(e)).toList();
        return reviews;
    }else{
      return [];
    }
  }

}