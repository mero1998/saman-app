import 'package:get/get.dart';
import 'package:saman_project/contorller/brand_controller_api.dart';
import 'package:saman_project/models/brands.dart';

class BrandControllerGetx extends GetxController{

  RxList<Brands> brands = <Brands>[].obs;

  BrandControllerApi brandControllerApi = BrandControllerApi();
  static BrandControllerApi get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("We are here");
    readBrands();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Future<void> readBrands() async{

  brands.value =  await brandControllerApi.indexBrands();

  }
}