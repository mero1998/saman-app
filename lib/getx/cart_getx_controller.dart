import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:saman_project/contorller/cart_controller.dart';
import 'package:saman_project/models/cart.dart';

class CartGetxController extends GetxController {

  RxList<Cart> carts = <Cart>[].obs;
  RxInt amount = 0.obs;
   CartController cartController = CartController();
  static CartGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    indexCart();
    // amount.value = cart.map((element) => element.).reduce((value, element) => value + element);
    super.onInit();
  }

  Future<bool> addToCart({required String carId}) async {
    print("************ add");
  Cart? cart =  await cartController.addToCart(carId: carId);
      if(cart != null){
        carts.add(cart);
      }
      return cart != null;
  }

  Future<void> indexCart()async{
    carts.value = await cartController.indexCart();
  }

  Future<bool> removeFromCart({required String carId}) async{
   bool deleted = await cartController.removeFromCart(carId: carId);
   int index = carts.indexWhere((element) => element.car!.id == carId);
   print(index);
   if(index != -1) {
     print(deleted);
     carts.removeAt(index);
    carts.refresh();
   }
     return deleted;
   }
  }
