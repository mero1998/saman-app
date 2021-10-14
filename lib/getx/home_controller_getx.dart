import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/screens/home-screen.dart';
import 'package:saman_project/screens/my-cart.dart';
import 'package:saman_project/screens/my-info.dart';

class HomeGetxController extends GetxController{
    static HomeGetxController get to => Get.find();
    RxList<BottomNavigationBarItem> Items = <BottomNavigationBarItem>[
        const  BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
        const BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: "سلتي"),
        const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "حسابي"),
    ].obs;


    RxList<Widget> screens = <Widget>[
         HomeScreen(),
         MyCart(),
         MyInformation(),
    ].obs;

    RxInt currentIndex = 0.obs;

    RxBool newest = true.obs;

    void changeIndex(int index){
        currentIndex.value = index;
    }

    String getTitlePage(){
      if(currentIndex.value == 0){
        return "المتجر";
      }else if(currentIndex.value == 1){
        return "سلتي";
      }else{
        return "حسابي";
      }
    }

void changeStateButton(bool isNew){
      newest.value = isNew;
}
}