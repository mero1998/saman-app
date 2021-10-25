import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/models/cars.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/preference/user_prefernce.dart';
class CarsControllerApi{

  Future<List<Cars>> indexCars() async{
    var url = Uri.parse(ApiSettings.CARS);
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['data']['data'] as List;

      List<Cars> cars = jsonResponse.map((e) => Cars.fromJson(e)).toList();
      print(cars);
      return cars;
    }

    return [];
  }
  Future<List<Cars>> indexOldCars() async{
    var url = Uri.parse(ApiSettings.CARS + "?is_old=1");
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['data'] as List;

      List<Cars> cars = jsonResponse.map((e) => Cars.fromJson(e)).toList();
      return cars;
    }

    return [];
  }

  Future<List<Cars>> indexNewCars() async{
    print("index cars");
    var url = Uri.parse(ApiSettings.CARS + "?is_old=0");
    print("Url $url");
    var response = await http.get(url,);

    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['data'] as List;
    print("Cars : $jsonResponse");
      List<Cars> cars = jsonResponse.map((e) => Cars.fromJson(e)).toList();
      return cars;
    }

    return [];
  }

  Future<List<Cars>> indexCarsFilter({required String isOld,required String model, required String price_from ,required String price_to, required String brand_id ,required String color}) async{
    print("index filter");
    var url = Uri.parse(ApiSettings.CARS + "?is_old=$isOld&model=$model&price_form=$price_from&price_to=$price_to&brand_id=$brand_id&color=$color");

    print("Url $url");
    var response = await http.get(url,);
    print("Filter $response");
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['data'] as List;
      print("Cars : $jsonResponse");
      List<Cars> cars = jsonResponse.map((e) => Cars.fromJson(e)).toList();
      return cars;
    }

    return [];
  }

}