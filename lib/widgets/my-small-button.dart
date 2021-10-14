import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class MySButton extends StatelessWidget {

  final Color? buttonColor;
  final String? buttonTitle;
  final double? buttonHeight;
  final double buttonLeftMargin;
  final double buttonRightMargin;
  final  VoidCallback onTap;
  final Color borderColor;


 const  MySButton({this.buttonColor,
   this.buttonTitle,
   this.buttonHeight,
   required this.buttonLeftMargin,
   required this.buttonRightMargin,
   required this.onTap,
   this.borderColor = Colors.transparent,


 });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      margin: EdgeInsets.only(
        left: buttonLeftMargin,
        right: buttonRightMargin,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          '$buttonTitle',
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.scaleTextFont(16)),
        ),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            minimumSize: Size(SizeConfig.scaleWidth(190),
                SizeConfig.scaleHeight(35),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizeConfig.scaleHeight(11),

              ),
              side:  BorderSide(width: 1.0, color: borderColor,)

            )),
      ),
    );
  }
}