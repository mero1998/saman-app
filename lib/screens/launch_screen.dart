import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/getx/blog_controller_getx.dart';
import 'package:saman_project/getx/brand_controller_getx.dart';
import 'package:saman_project/getx/car_details_getx_controller.dart';
import 'package:saman_project/getx/cars_controller_getx.dart';
import 'package:saman_project/getx/cart_getx_controller.dart';
import 'package:saman_project/getx/home_controller_getx.dart';
import 'package:saman_project/getx/paln_getx_controller.dart';
import 'package:saman_project/getx/partners_controller_getx.dart';
import 'package:saman_project/getx/reviwes_controller_getx.dart';
import 'package:saman_project/getx/user_getx_controller.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/utils/size-config.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    Future.delayed(Duration(seconds: 3), () {
      String route = UserPreferences().isLoggedIn ? "/bottom-nav" : "/on-boarding";
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Image.asset(
        'images/splach.jpg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
