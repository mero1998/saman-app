import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/screens/about-saman.dart';
import 'package:saman_project/screens/account-info.dart';
import 'package:saman_project/screens/auth/login_screen.dart';
import 'package:saman_project/screens/auth/register_screen.dart';
import 'package:saman_project/screens/bolgs.dart';
import 'package:saman_project/screens/change-password.dart';
import 'package:saman_project/screens/contact-us.dart';
import 'package:saman_project/screens/home-screen.dart';
import 'package:saman_project/screens/latest-show.dart';
import 'package:saman_project/screens/launch_screen.dart';
import 'package:saman_project/screens/bottom-navigation-bar.dart';
import 'package:saman_project/screens/my-cart.dart';
import 'package:saman_project/screens/my-info.dart';
import 'package:saman_project/screens/my-orders.dart';
import 'package:saman_project/screens/on-boarding/on_boarding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:saman_project/screens/payment/adress.dart';
import 'package:saman_project/screens/payment/choose-pay-method.dart';
import 'package:saman_project/screens/payment/revision.dart';
import 'package:saman_project/screens/payment/tab-bar.dart';
import 'package:saman_project/screens/product-details.dart';
import 'package:saman_project/screens/subscription-plans.dart';
import 'package:saman_project/storage/db_provider.dart';
import 'package:saman_project/widgets/product-widgt.dart';

import 'main_screen.dart';


void main() async {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();
  await DbProvider().initDatabase();
  await UserPreferences().initPreferences();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('ar' , ''),
        Locale('en',' ')
      ],
      debugShowCheckedModeBanner: false,
      locale: Locale('ar',''),
      initialRoute: '/launch-screen',
      routes: {
        '/launch-screen' :  (context )=> LaunchScreen(),
        '/on-boarding' : (context) => OnBoarding(),
        '/register_screen' : (context) => RegisterScreen(),
        '/login_screen' : (context) => LoginScreen(),
        '/main_screen' : (context) => MainScreen(),
        '/my-info' : (context) => MyInformation(),
        '/bottom-nav' : (context) => BottomNavBar(),
        '/my-cart' : (context) => MyCart(),
        '/home_screen' : (context) => HomeScreen(),
        '/tab-bar-screen' : (context) => TapBarPage(),
        '/revision' : (context) => Revision(),
        '/address' : (context) => Address(),
        '/choose-pay-method' : (context) => ChoosePayMethod(),
        // '/product-widget' : (context) => ProductWidget(),
        '/account-info' : (context) => AccountInfo(),
        '/change-password' : (context) => ChangePassword(),
        '/my-orders' : (context) => MyOrders(),
        // '/product-details' : (context) => ProductDetails(),
        '/about-us' : (context) => AboutUs(),

        '/blogs' : (context) => Blogs(),
        '/latest-show' : (context) => LatestShow(),
        '/subscription-plans' : (context) => SubscriptionPlans(),
        '/contact-us' : (context) => ContactUs(),

      },

    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


