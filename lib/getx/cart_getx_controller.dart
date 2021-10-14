import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:saman_project/contorller/cart_controller.dart';
import 'package:saman_project/models/cart.dart';

class CartGetxController extends GetxController {

  RxList<Cart> closets = <Cart>[].obs;
  RxInt amount = 0.obs;
   CartController closetController = CartController();
  static CartGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    readCloset();
    // amount.value = closets.map((element) => element.total_amount).reduce((value, element) => value + element);
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    // closets.clear();
    super.onClose();
  }


  Future<bool> create(Cart cart) async {
    int id = await closetController.create(cart);
    if(id != 0){
      print(id);
      cart.id = id;
      closets.add(cart);
      return true;
    }
    return false;
  }

  Future<void> readCloset() async {
    closets.value = await closetController.read();

  }


  // Future<int> totalAmount(Closet closet) async{
  //   int index = closets.indexWhere((element) => element.id == closet.id);
  //   return await closets[index].price * closets[index].product_quantity;
  //
  // }




  Future<bool> deleteProductFromCart(int id ) async {
print(closets.length);
    bool deleted = await closetController.delete(id);
print(closets.length);
print(deleted);
 if(deleted){
      int index = closets.indexWhere((element) => element.id == id);
      print(index);
      if(index != -1){
        closets.removeAt(index);
        closets.refresh();
        return true;
      }
    }
    return false;
  }


  Future<bool> deleteProductAllProducts() async {
    print(closets.length);
    bool deleted = await closetController.deleteAll();
    if(deleted){
      closets.refresh();
        return true;
    }
    return false;
  }
}