import 'package:get/get.dart';
import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/models/user.dart';
import 'package:saman_project/models/user_details.dart';
import 'package:saman_project/preference/user_prefernce.dart';

class UserGetxController extends GetxController{

  RxList<UserDetails?> user = <UserDetails>[].obs;

  UserApiController userApiController = UserApiController();
  static UserGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("USER :  $user");
    indexUserDetails();
  }


  Future<void> indexUserDetails() async{

    UserDetails? userDetails  = await userApiController.userDetails();
    user.add(userDetails);
    // user[0] = await userApiController.userDetails();
    print("We are here User GETX");

  }

  Future<void> updateUserDetails({required String email,required String firstName,required String lastName,required String mobile,required String countryCode,required String countryName,required  String? path}) async{

    UserDetails? userDetails  = await userApiController.updateProfileData(email: email, firstName: firstName, lastName: lastName, mobile: mobile, contryCode: countryCode, countryName: countryName, path: path ?? "");
    if(userDetails != null){
      user.add(userDetails);
    }
    print("We are here User GETX update user data");

  }

}