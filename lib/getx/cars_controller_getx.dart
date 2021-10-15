import 'package:get/get.dart';
import 'package:saman_project/contorller/car_controller_api.dart';
import 'package:saman_project/models/cars.dart';

class CarsGetxController extends GetxController{

  RxList<Cars> cars = <Cars>[].obs;
  RxList<Cars> newCars = <Cars>[].obs;
  RxList<Cars> oldCars = <Cars>[].obs;
  RxList<Cars> carsFilter = <Cars>[].obs;
  RxList<Cars> showCars = <Cars>[].obs;


  RxBool  selectNew = false.obs;
  RxBool selectOld = false.obs;
  RxBool selectFilter = false.obs;
  
  static CarsGetxController get to => Get.find();
  CarsControllerApi carsControllerApi = CarsControllerApi();


  @override
  void onInit() async {
    super.onInit();
    await indexCars();
    getCars();
    showList();
  }



  Future<void> indexCars() async{
    cars.value = await carsControllerApi.indexCars();
    print("From Index :${cars.value}");
  }

  void getCars(){
    if(selectNew.value){
     newCars.value = cars.where((e) => e.isOld == "0").toList();
    }else if(selectOld.value){
     oldCars.value = cars.where((e) => e.isOld == "1").toList();
    }else if(selectFilter.value){
     carsFilter.value =  cars.where((e) => e.color == "black").toList();
    }else{
       showCars.value = cars;
    }
  }

  int getListLength(){
  if(selectNew.value){
  return newCars.length;
  }else if(selectOld.value){
  return oldCars.length;
  }else if(selectFilter.value){
  return carsFilter.length;
  }else{
  return cars.length;
  }
  }
  // Future<void> indexOldCars() async{
  //   // cars.value.where((e) => e.isOld != isOld);\
  //   cars.value = await carsControllerApi.indexOldCars();
  //
  //   print("Old CARS Length: ${cars.length}");
  // }
  // Future<void> indexNewCars() async{
  //   cars.value = await carsControllerApi.indexNewCars();
  //   print("New CARS Length: ${cars.length}");
  //
  // }

  Future<void> indexFilterCars({required String isOld, required String model, required String price_from ,required String price_to,required String brand_id , required String color}) async{
    carsFilter.value = await carsControllerApi.indexCarsFilter(
      isOld: isOld,
      color: color,
      brand_id: brand_id,
      model: model,
      price_from: price_from,
      price_to: price_from,
    );

  }

  void changeNewState(bool state){
    selectNew.value = state;
    selectOld.value = !state;
    selectFilter.value = !state;
  }
  void changeOldState(bool state){
    selectOld.value = state;
    selectNew.value = !state;
    selectFilter.value = !state;
  }
  void changeFilterState(bool state){
    selectFilter.value = state;
    selectNew.value = !state;
    selectOld.value = !state;
  }


  List<Cars> showList(){
    if(selectNew.value){
      print("new selected");
        return showCars = newCars;
    }else if(selectOld.value){
      print("Old selected");
      return showCars = oldCars;
    }else if(selectFilter.value){
      print("Filter selected");
      return showCars = carsFilter;
    }else{
      print("ShowCars selected");
      print(cars.length);
      return showCars.value = cars;
    }

  }
}