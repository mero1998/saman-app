import 'dart:convert';

import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/models/plan.dart';

import 'package:http/http.dart' as http;
class PlansControllerApi{


  Future<List<Plan>> indexPlans() async{
    var url = Uri.parse(ApiSettings.PLANS);
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body)['success']['data'] as List;

      List<Plan> palns = jsonResponse.map((e) => Plan.fromJson(e)).toList();
      return palns;
    }

    return [];

  }

}