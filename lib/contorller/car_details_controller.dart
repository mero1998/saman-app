import 'dart:convert';
import 'dart:io';

import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/models/car_details.dart';
import 'package:http/http.dart' as http;
class CarDetailsController{


  Future<CarDetails?> indexCarDetails(int carId) async{
    var url = Uri.parse(ApiSettings.CARS + "/" + carId.toString());
    print("Url : ${url.toString()}");
    var response = await http.get(url);

    if(response.statusCode == 200){

      var jsonResponse = jsonDecode(response.body)['data'];
      return CarDetails.fromJson(jsonResponse);
    }
    return null;
  }

}