// import 'package:flutter/material.dart';
// import 'package:zaarra_fashion/controller/user_api_controller.dart';
// import 'package:zaarra_fashion/utils/app_color.dart';
// import 'package:zaarra_fashion/utils/helpers.dart';
// import 'package:zaarra_fashion/utils/size_config.dart';
// import 'package:zaarra_fashion/widgets/button_app.dart';
// import 'package:zaarra_fashion/widgets/text_app.dart';
// import 'package:zaarra_fashion/widgets/text_filed_app.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// class ResetPasswordScreen extends StatefulWidget {
//
//   final String mobile;
//   final String code;
//
//   ResetPasswordScreen({required this.mobile, required this.code});
//
//   @override
//   _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
// }
//
// class _ResetPasswordScreenState extends State<ResetPasswordScreen> with Helper {
//
//   late TextEditingController _passwordTextEditingController;
//   late TextEditingController _confPasswordTextEditingController;
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _passwordTextEditingController = TextEditingController();
//     _confPasswordTextEditingController = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _passwordTextEditingController.dispose();
//     _confPasswordTextEditingController.dispose();
//     super.dispose();
//   }
//    @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: ListView(
//         padding: EdgeInsetsDirectional.only(
//           start: SizeConfig.scaleWidth(28),
//           end: SizeConfig.scaleWidth(28),
//         ),
//         children: [
//           TextApp(text:  AppLocalizations.of(context)?.change_password ?? "", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(17),),
//           TextApp(text:  AppLocalizations.of(context)?.sub_title_reset?? "", fontSize: 14, fontColor: AppColor.SUB_TITLE_PAGEVIEW, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(94),),
//
//           TextFiledApp(hint:  AppLocalizations.of(context)?.password ?? "", prefixIcon: Icons.lock_open_outlined,controller: _passwordTextEditingController, obscure: true,),
//           TextFiledApp(hint:  AppLocalizations.of(context)?.confirmation_password ?? "", prefixIcon: Icons.lock_open_outlined,controller: _confPasswordTextEditingController, obscure: true,),
//
//           SizedBox(height: SizeConfig.scaleHeight(27)),
//           ButtonApp(text:  AppLocalizations.of(context)?.change ?? "", width: double.infinity, height: 59, onPressed: () => performResetPassword(), ),
//           SizedBox(height: SizeConfig.scaleHeight(22)),
//
//
//
//
//         ],
//       ),
//     );
//   }
//
//
//   Future performResetPassword() async{
//     if(checkData()){
//       await resetPassword();
//     }
//   }
//
//   bool checkData(){
//
//     if(_passwordTextEditingController.text.isNotEmpty &&
//         _confPasswordTextEditingController.text.isNotEmpty){
//       return checkPasswordConfirmation();
//     }
//     showSnackBar(context, "Check data required" , error:  true);
//
//     return false;
//   }
//
//   bool checkPasswordConfirmation(){
//     if(_passwordTextEditingController.text == _confPasswordTextEditingController.text){
//       return true;
//     }
//     showSnackBar(context, "password is not match" , error:  true);
//     return false;
//   }
//
//   Future  resetPassword() async {
//     bool status = await UserApiController().resetPassword(context, mobile: widget.mobile, password: _passwordTextEditingController.text, code: widget.code);
//     if(status){
//       Navigator.pushReplacementNamed(context, "/login_screen");
//     }
//
//   }
//
// }
