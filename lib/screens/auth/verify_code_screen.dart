// import 'package:flutter/material.dart';
// import 'package:zaarra_fashion/controller/user_api_controller.dart';
// import 'package:zaarra_fashion/getx_controller/language_getx_controller.dart';
// import 'package:zaarra_fashion/screens/auth/reset_password_screen.dart';
// import 'package:zaarra_fashion/utils/app_color.dart';
// import 'package:zaarra_fashion/utils/size_config.dart';
// import 'package:zaarra_fashion/widgets/button_app.dart';
// import 'package:zaarra_fashion/widgets/text_app.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// class VerifyCodeScreen extends StatefulWidget {
//   final String mobile;
//
//   VerifyCodeScreen({required this.mobile});
//
//   @override
//   _VerifyCodeScreenState createState() => _VerifyCodeScreenState();
// }
//
// class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
//
//
//
//
//   late TextEditingController _firstCodeTextEditingController;
//   late TextEditingController _secondCodeTextEditingController;
//   late TextEditingController _thirdCodeTextEditingController;
//   late TextEditingController _fourthCodeTextEditingController;
//
//   late FocusNode _firstFocusNode;
//   late FocusNode _secondFocusNode;
//   late FocusNode _thirdFocusNode;
//   late FocusNode _fourthFocusNode;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _firstCodeTextEditingController = TextEditingController();
//     _secondCodeTextEditingController = TextEditingController();
//     _thirdCodeTextEditingController = TextEditingController();
//     _fourthCodeTextEditingController = TextEditingController();
//     _firstFocusNode = FocusNode();
//     _secondFocusNode = FocusNode();
//     _thirdFocusNode = FocusNode();
//     _fourthFocusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _firstCodeTextEditingController.dispose();
//     _secondCodeTextEditingController.dispose();
//     _thirdCodeTextEditingController.dispose();
//     _fourthCodeTextEditingController.dispose();
//     _firstFocusNode.dispose();
//     _secondFocusNode.dispose();
//     _thirdFocusNode.dispose();
//     _fourthFocusNode.dispose();
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
//         color: Colors.black,
//       ),
//       ),
//       body : ListView(
//         padding: EdgeInsetsDirectional.only(
//           start: SizeConfig.scaleWidth(28),
//           end: SizeConfig.scaleWidth(28),
//         ),
//         children: [
//           TextApp(text:  AppLocalizations.of(context)?.verify_account ?? "", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(17),),
//           TextApp(text: "${ AppLocalizations.of(context)?.sub_title_verify ?? ""} +91 99999XXXXX", height: 2 ,fontSize: 14, fontColor: AppColor.SUB_TITLE_PAGEVIEW, fontWeight: FontWeight.w500,),
//           SizedBox(height: SizeConfig.scaleHeight(94),),
//
//           SizedBox(
//             height: SizeConfig.scaleHeight(65),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     clipBehavior: Clip.antiAlias,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: TextField(
//                       textDirection: LanguageGetXController.to.languageCode.value == "en" ? TextDirection.ltr : TextDirection.rtl,
//                       keyboardType: TextInputType.number,
//                       controller: _firstCodeTextEditingController,
//                       focusNode: _firstFocusNode,
//                       minLines: null,
//                       maxLines: null,
//                       maxLength: 1,
//                       onChanged: (String text){
//                         if(text.length == 1){
//
//                           _secondFocusNode.requestFocus();
//                         }
//                       },
//                       cursorColor: AppColor.INDICATOR_PAGEVIEW,
//                       style: TextStyle(
//                         fontFamily: "Circular Std",
//                         fontWeight: FontWeight.w500,
//                         fontSize: SizeConfig.scaleTextFont(23),
//                         color: Colors.black
//                       ),
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                         fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
//                           hintText: "-",
//                           contentPadding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(8),
//                             end: SizeConfig.scaleWidth(8),
//                             top: SizeConfig.scaleHeight(3),
//                             bottom: SizeConfig.scaleHeight(3),
//                           ),
//                           filled: true,
//                           counterText: "",
//                           enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                         )
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     clipBehavior: Clip.antiAlias,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: TextField(
//                       textDirection: LanguageGetXController.to.languageCode.value == "en" ? TextDirection.ltr : TextDirection.rtl,
//                       keyboardType: TextInputType.number,
//                       controller: _secondCodeTextEditingController,
//                       focusNode: _secondFocusNode,
//                       minLines: null,
//                       maxLines: null,
//                       onChanged: (String text){
//                         if(text.length == 1){
//                           _thirdFocusNode.requestFocus();
//                         }
//                       },
//                       maxLength: 1,
//                       cursorColor: AppColor.INDICATOR_PAGEVIEW,
//                       style: TextStyle(
//                           fontFamily: "Circular Std",
//                           fontWeight: FontWeight.w500,
//                           fontSize: SizeConfig.scaleTextFont(23),
//                           color: Colors.black
//                       ),
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                           fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
//                           hintText: "-",
//                           contentPadding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(8),
//                             end: SizeConfig.scaleWidth(8),
//                             top: SizeConfig.scaleHeight(3),
//                             bottom: SizeConfig.scaleHeight(3),
//                           ),
//                           filled: true,
//                           counterText: "",
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           )
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     clipBehavior: Clip.antiAlias,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: TextField(
//                       textDirection: LanguageGetXController.to.languageCode.value == "en" ? TextDirection.ltr : TextDirection.rtl,
//                       keyboardType: TextInputType.number,
//                       controller: _thirdCodeTextEditingController,
//                       focusNode: _thirdFocusNode,
//                       minLines: null,
//                       maxLines: null,
//                       maxLength: 1,
//                       onChanged: (String text){
//                         if(text.length == 1){
//                           _fourthFocusNode.requestFocus();
//                         }
//                       },
//                       cursorColor: AppColor.INDICATOR_PAGEVIEW,
//                       style: TextStyle(
//                           fontFamily: "Circular Std",
//                           fontWeight: FontWeight.w500,
//                           fontSize: SizeConfig.scaleTextFont(23),
//                           color: Colors.black
//                       ),
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                           fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
//                           hintText: "-",
//                           contentPadding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(8),
//                             end: SizeConfig.scaleWidth(8),
//                             top: SizeConfig.scaleHeight(3),
//                             bottom: SizeConfig.scaleHeight(3),
//                           ),
//                           filled: true,
//                           counterText: "",
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           )
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     clipBehavior: Clip.antiAlias,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: TextField(
//                       textDirection: LanguageGetXController.to.languageCode.value == "en" ? TextDirection.ltr : TextDirection.rtl,
//                       keyboardType: TextInputType.number,
//                       controller: _fourthCodeTextEditingController,
//                       focusNode: _fourthFocusNode,
//                       minLines: null,
//                       maxLines: null,
//                       maxLength: 1,
//                       cursorColor: AppColor.INDICATOR_PAGEVIEW,
//                       style: TextStyle(
//                           fontFamily: "Circular Std",
//                           fontWeight: FontWeight.w500,
//                           fontSize: SizeConfig.scaleTextFont(23),
//                           color: Colors.black
//                       ),
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                           fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
//                           hintText: "-",
//                           contentPadding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(8),
//                             end: SizeConfig.scaleWidth(8),
//                             top: SizeConfig.scaleHeight(3),
//                             bottom: SizeConfig.scaleHeight(3),
//                           ),
//                           filled: true,
//                           counterText: "",
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                           )
//                       ),
//                     ),
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//           SizedBox(height: SizeConfig.scaleHeight(27),),
//
//           ButtonApp(text:  AppLocalizations.of(context)?.next ?? "", width: double.infinity, height: 59, onPressed: () => { performVerify() }, ),
//           SizedBox(height: SizeConfig.scaleHeight(21),),
//
//         ],
//       ),
//     );
//   }
//
//   Future performVerify() async {
//
//     if(checkData()){
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen(mobile: widget.mobile , code: getCode(),)));
//     }
//   }
//
//   bool checkData(){
//     if(_firstCodeTextEditingController.text.isNotEmpty &&
//       _secondCodeTextEditingController.text.isNotEmpty &&
//     _thirdCodeTextEditingController.text.isNotEmpty &&
//     _fourthCodeTextEditingController.text.isNotEmpty)
//     {
//       return true;
//     }
//     return false;
//   }
//
//   String getCode(){
//
//     return _firstCodeTextEditingController.text +
//            _secondCodeTextEditingController.text+
//            _thirdCodeTextEditingController.text+
//            _fourthCodeTextEditingController.text;
//   }
// }
