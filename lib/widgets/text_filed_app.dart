import 'package:flutter/material.dart';
import 'package:saman_project/utils/app_color.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
class TextFiledApp extends StatelessWidget {

  final String hint;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool obscure;
  TextFiledApp({
   required this.hint,
   required this.prefixIcon,
   required this.controller,
    this.textInputType = TextInputType.text,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
        obscureText: obscure,
        keyboardType: textInputType,
        style: TextStyle(
          color: Colors.black,
          fontSize: SizeConfig.scaleTextFont(16),
          fontWeight: FontWeight.w300,
          fontFamily: "Cairo" ,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: AppColor.SUB_TITLE_PAGEVIEW,
            fontSize: SizeConfig.scaleTextFont(14),
            fontWeight: FontWeight.w300,
            fontFamily: "Cairo" ,
          ),
          prefixIcon: Icon(prefixIcon, color: kPrimaryColor),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.TEXT_FlIED_BORDER,
            ),
          ),
          focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
        )
    );
  }
}