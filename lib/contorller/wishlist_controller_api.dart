import 'package:saman_project/api/api_settings.dart';
import 'package:http/http.dart' as http;
class wishlistControllerApi{

  Future<bool> addToWishlist(String carId) async{
    var url = Uri.parse(ApiSettings.ADDTOWISHLIST + '/' + carId);

    var response = await http.post(url);
    if(response.statusCode == 200){

      return true;
    }else{
      return false;
    }
  }
}