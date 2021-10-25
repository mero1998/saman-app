import 'package:get/get.dart';
import 'package:saman_project/contorller/wishlist_controller_api.dart';
import 'package:saman_project/models/cars.dart';

class WishlistGetxController extends GetxController{

  List<Cars> wishlist = <Cars>[];
  WishListControllerApi wishListControllerApi = WishListControllerApi();
  static WishlistGetxController get to => Get.find();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> addToWishList(int carId) async{
  await wishListControllerApi.addToWishlist(carId);
  }
}