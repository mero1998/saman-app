import 'package:get/get.dart';
import 'package:saman_project/contorller/partners_controller_api.dart';
import 'package:saman_project/models/partners.dart';

class  PartnersControllerGetx extends GetxController{

  RxList<Partners> partners = <Partners>[].obs;

  PartnersControllerApi partnersControllerApi = PartnersControllerApi();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    indexPartners();
  }


  Future<void> indexPartners() async{
    partners.value = await partnersControllerApi.indexPartners();
  print("partners: ${partners.length}");

  }



}

