// import 'package:flutter/material.dart';
// import 'package:zaarra_fashion/controller/user_api_controller.dart';
// import 'package:zaarra_fashion/screens/auth/reset_password_screen.dart';
// import 'package:zaarra_fashion/screens/auth/verify_code_screen.dart';
// import 'package:zaarra_fashion/utils/app_color.dart';
// import 'package:zaarra_fashion/utils/helpers.dart';
// import 'package:zaarra_fashion/utils/size_config.dart';
// import 'package:zaarra_fashion/widgets/button_app.dart';
// import 'package:zaarra_fashion/widgets/text_app.dart';
// import 'package:zaarra_fashion/widgets/text_filed_app.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// class ForgetPasswordScreen extends StatefulWidget {
//   const ForgetPasswordScreen({Key? key}) : super(key: key);
//
//   @override
//   _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
// }
//
// class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> with Helper {
//
//   late TextEditingController _mobileTextEditingController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _mobileTextEditingController = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _mobileTextEditingController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       iconTheme: IconThemeData(
//         color: Colors.black
//       ),
//       ),
//      body : ListView(
//         padding: EdgeInsetsDirectional.only(
//           start: SizeConfig.scaleWidth(28),
//           end: SizeConfig.scaleWidth(28),
//         ),
//         children: [
//           TextApp(text:  AppLocalizations.of(context)?.mobile_number ?? "", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(17),),
//           TextApp(text:  AppLocalizations.of(context)?.sub_title_forget ?? "", height: 2 ,fontSize: 14, fontColor: AppColor.SUB_TITLE_PAGEVIEW, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(94),),
//
//
//           TextFiledApp(hint:  AppLocalizations.of(context)?.mobile ?? "", prefixIcon: Icons.phone_android, controller: _mobileTextEditingController, textInputType: TextInputType.phone,),
//           SizedBox(height: SizeConfig.scaleHeight(27),),
//
//           ButtonApp(text:  AppLocalizations.of(context)?.next ?? "", width: double.infinity, height: 59, onPressed: () => performForget(), ),
//           SizedBox(height: SizeConfig.scaleHeight(21),),
//
//         ],
//       ),
//     );
//   }
//
//   Future performForget() async{
//     if(checkData()){
//         await  forgetPassword();
//     }
//   }
//
//   bool checkData(){
//
//     if(_mobileTextEditingController.text.isNotEmpty){
//       return true;
//     }
//     showSnackBar(context, "Enter mobile number" , error:  true);
//
//     return false;
//   }
//
//   Future forgetPassword() async{
//
//     bool status = await UserApiController().forgetPassword(context, mobile: _mobileTextEditingController.text);
//     if(status){
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyCodeScreen(mobile:_mobileTextEditingController.text)));
//     }
//   }
// }
