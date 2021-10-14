import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:saman_project/contorller/car_controller_api.dart';
import 'package:saman_project/contorller/car_details_controller.dart';
import 'package:saman_project/models/car_details.dart';

class CarDetailsGetxController extends GetxController{

  RxList<CarDetails?> carDetails = <CarDetails>[].obs;

  CarDetailsController carDetailsController = CarDetailsController();

 static CarDetailsGetxController get to => Get.find();


  Future<void> carDetailsIndex(int carId) async{

    CarDetails? carDetailsObj = await carDetailsController.indexCarDetails(carId);

    carDetails.add(carDetailsObj);
    print("List details :  ${carDetails[0]!.name}");
  }


}