import 'package:get/get.dart';
import 'package:saman_project/contorller/plans_controller_api.dart';
import 'package:saman_project/models/plan.dart';

class PlanGetxController extends GetxController{


  RxList<Plan> plans = <Plan>[].obs;

  PlansControllerApi plansControllerApi = PlansControllerApi();
  @override
  void onInit() async{
    super.onInit();
    await indexPlans();

  }

  Future indexPlans()async{
     plans.value = await plansControllerApi.indexPlans();
    print("Plans: ${plans.first.name}");
  }


}