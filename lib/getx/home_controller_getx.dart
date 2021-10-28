import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/screens/home-screen.dart';
import 'package:saman_project/screens/my-cart.dart';
import 'package:saman_project/screens/my-info.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class HomeGetxController extends GetxController{
    static HomeGetxController get to => Get.find();
    RxList<BottomNavyBarItem> Items = <BottomNavyBarItem>[
      BottomNavyBarItem(
        icon: Icon(Icons.home_outlined),
        title: Text('الرئيسية',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)), ),
        activeColor: Colors.red,
        textAlign: TextAlign.center,


      ),

      BottomNavyBarItem(
        icon: Icon(Icons.shopping_bag_outlined),
        title: Text('سلتي',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)),),
        activeColor: Colors.red,
        textAlign: TextAlign.center,
        inactiveColor: kPrimaryColor,


      ),
      BottomNavyBarItem(
        icon: Icon(Icons.person_outline),
        title: Text('حسابي',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)),),
        activeColor: Colors.red,
        textAlign: TextAlign.center,
        inactiveColor: kPrimaryColor,
      ),
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