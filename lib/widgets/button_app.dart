import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/text_app.dart';
import 'package:saman_project/utils/constans.dart';

class ButtonApp extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color buttonColor;
  final double fontSize;
  final Color fontColor;
  final Color colorBorder;

  ButtonApp({
   required this.text,
   required this.onPressed,
   required this.width,
  required this.height,
    this.buttonColor=  kPrimaryColor,
    this.fontSize  = 16,
    this.fontColor = Colors.white,
    this.colorBorder = Colors.transparent
  });

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      child: TextApp(text: text , fontColor: fontColor, fontWeight: FontWeight.bold, fontSize: fontSize,),
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: Size(SizeConfig.scaleWidth(width), SizeConfig.scaleHeight(height)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
            side: BorderSide(
              color: colorBorder,
            )
          ),
      ),
    );
  }
}
