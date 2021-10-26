import 'package:get/get.dart';
import 'package:saman_project/contorller/partners_controller_api.dart';
import 'package:saman_project/contorller/reviwes_controller_api.dart';
import 'package:saman_project/models/partners.dart';
import 'package:saman_project/models/reviews.dart';

class  ReviwesControllerGetx extends GetxController{

  RxList<Reviews> reviews = <Reviews>[].obs;

  ReviwesControllerApi reviwesControllerApi = ReviwesControllerApi();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    indexReviews();
  }


  Future<void> indexReviews() async{
    reviews.value = await reviwesControllerApi.indexReviews();

  }



}

