import 'dart:math';


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/models/user.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/utils/app_color.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/button_app.dart';
import 'package:saman_project/widgets/text_app.dart';
import 'package:saman_project/widgets/text_filed_app.dart';
class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  late TapGestureRecognizer _tapGestureRecognizer;
  // String fcmToken = '';
  // void initializeFcmToken() {
  //   NotificationsApp().getToken().then((value) => fcmToken = value);
  // }
 @override
  void initState() {
    // TODO: implement initState
   _emailTextEditingController = TextEditingController();
   _passwordTextEditingController = TextEditingController();
   _tapGestureRecognizer = TapGestureRecognizer()..onTap =  navigateToRegister;
   // initializeFcmToken();
    super.initState();

 }

 navigateToRegister(){
   Navigator.pushNamed(context, "/register_screen");
 }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(
          start: SizeConfig.scaleWidth(28),
          end: SizeConfig.scaleWidth(28),
        ),
        children: [
          TextApp(text: "أهلا بك", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
          SizedBox(height: SizeConfig.scaleHeight(17),),
          TextApp(text:  "أدخل بريدك الالكتروني وكلمة المرور للدخول", fontSize: 14, fontColor: AppColor.SUB_TITLE_PAGEVIEW, fontWeight: FontWeight.w500,),
          SizedBox(height: SizeConfig.scaleHeight(94),),


          TextFiledApp(hint: "البريد الالكتروني", prefixIcon: Icons.phone_android, controller: _emailTextEditingController, textInputType: TextInputType.emailAddress,),
          SizedBox(height: SizeConfig.scaleHeight(21),),
          TextFiledApp(hint: "كلمة المرور", prefixIcon: Icons.lock,controller: _passwordTextEditingController, obscure: true,),
          SizedBox(height: SizeConfig.scaleHeight(11),),
         Align(alignment: AlignmentDirectional.topEnd, child: TextButton(onPressed: (){ Navigator.pushNamed(context, "/forget_password_screen");}, child:TextApp(text: "هل نسيت كلمة المرور؟", fontSize: 14, fontColor: AppColor.INDICATOR_PAGEVIEW, fontWeight: FontWeight.w500, textAlign: TextAlign.end,),)),
          SizedBox(height: SizeConfig.scaleHeight(7),),
          ButtonApp(text:  "تسجيل دخول", width: double.infinity, height: 59, onPressed: () => PerformLogin(), ),
          SizedBox(height: SizeConfig.scaleHeight(21),),
        Center(
          child: RichText(text: TextSpan(text:  "لا تمتلك حساب؟", style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.scaleTextFont(14),
            fontWeight: FontWeight.w500,
            fontFamily: "Cairo",
          ),
          children: [
            TextSpan(text: " "),
            TextSpan(text:  "أنشىء حساب الان",
              recognizer: _tapGestureRecognizer,
              style: TextStyle(
              color: AppColor.TEXT_SIGNUP,
              fontSize: SizeConfig.scaleTextFont(14),
              fontWeight: FontWeight.w500,
              fontFamily: "Cairo",
            ),),
          ]
          ),
          ),
        ),


        ],
      ),
    );
  }
  //
  Future PerformLogin() async {
   // Navigator.pushNamed(context, "/main_screen");
   if(checkData()){
    login();
    }
  }


  bool checkData(){
   if(_emailTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty){
    print("Success");
     return true;
   }
   print("Error");
   return false;
  }

  Future login() async {


    print("We are Here");

    User? user = await UserApiController().login(context , email: _emailTextEditingController.text, password : _passwordTextEditingController.text);
    if(user != null){
      print("We are here2");
        UserPreferences().save(user);
        Future.delayed(Duration(seconds: 2), (){
          Navigator.pushReplacementNamed(context,"/bottom-nav");
        });
      }
 }
}
