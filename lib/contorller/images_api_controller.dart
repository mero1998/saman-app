import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/utils/helpers.dart';
class ImageApiController with Helper{

  Future<bool> uploadImage( BuildContext context , String path) async {
    var url = Uri.parse(ApiSettings.UPDATEPROFILEIMAGE);
    var request  = http.MultipartRequest("POST" , url);
    var image = await http.MultipartFile.fromPath("image" , path);
    request.files.add(image);
    request.headers[HttpHeaders.authorizationHeader] = UserPreferences().getToken();

    var response = await request.send();
    response.stream.transform(utf8.decoder).listen((event) {
      print(event);
      // showSnackBar(context, jsonDecode(event)["error"]);
    });

    print(response.statusCode);
    if(response.statusCode == 200){
      print(response.statusCode);
      return true;
    }
    return false;
  }

  // Future<List<StudentImage>> getImages() async {
  //
  //   var url = Uri.parse(ApiSettings.STUDENT_IMAGE);
  //   var response = await http.get(url , headers: {
  //     HttpHeaders.authorizationHeader : StudentSharedPrefController().getToken(),
  //   });
  //
  //   if(response.statusCode == 200){
  //     var jsonArray = jsonDecode(response.body)["data"]  as List;
  //     List<StudentImage> images = jsonArray.map((e) => StudentImage.fromJson(e)).toList();
  //     return images;
  //   }
  //
  //   return [];
  // }
}