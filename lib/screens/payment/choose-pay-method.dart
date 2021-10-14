import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class ChoosePayMethod extends StatefulWidget {
  @override
  _ChoosePayMethodState createState() => _ChoosePayMethodState();
}

class _ChoosePayMethodState extends State<ChoosePayMethod> {
  String _selectedMethod = 'fromThawany';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.scaleWidth(16),
            ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            ),
            Text(
              'اختر طريقة الدفع المناسبة لديك',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: SizeConfig.scaleTextFont(20),
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
            RadioListTile<String>(
                title: Text(
                  'دفع من خلال بوابة ثواني',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: SizeConfig.scaleTextFont(20),
                      color: kPrimaryColor),
                ),
                value: 'fromThawany',
                groupValue: _selectedMethod,
                onChanged: (String? value) {
                  setState(() {
                    _selectedMethod = value ?? 'fromThawany';
                  });
                }),
            RadioListTile<String>(
                title: Text(
                  'دفع نقدي عند الاستلام ',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: SizeConfig.scaleTextFont(20),
                      color: kPrimaryColor),
                ),
                value: 'cash',
                groupValue: _selectedMethod,
                onChanged: (String? value) {
                  setState(() {
                    _selectedMethod = value ?? 'cash';
                  });
                }),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: SizeConfig.scaleHeight(29),
                  margin: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(10),
                    right: SizeConfig.scaleWidth(10),
                  ),
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text(
                      'رجوع',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: SizeConfig.scaleTextFont(16)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(SizeConfig.scaleWidth(130),
                          SizeConfig.scaleHeight(29),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              SizeConfig.scaleHeight(11),

                            ),
                            side:  BorderSide(width: 1.5, color: kPrimaryColor,)

                        )),
                  ),
                ),

                SmallWidthButtons(
                  onTap: (){},
                  buttonRightMargin:SizeConfig.scaleWidth(10) ,
                  buttonLeftMargin: SizeConfig.scaleWidth(10),
                  buttonColor: kPrimaryColor,
                  buttonTitle: 'منابعة',
                  buttonHeight: SizeConfig.scaleHeight(29),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(60),
            ),
          ],
        ),
      ),
    );
  }
}
class SmallWidthButtons extends StatelessWidget {

  final Color? buttonColor;
  final String? buttonTitle;
  final double? buttonHeight;
  final double buttonLeftMargin;
  final double buttonRightMargin;
  final  VoidCallback onTap;
  final Color borderColor;


  SmallWidthButtons({this.buttonColor,
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

      child: Row(
        children: [
          Container(
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
                  minimumSize: Size(SizeConfig.scaleWidth(130),
                    SizeConfig.scaleHeight(29),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.scaleHeight(11),

                      ),
                      side:  BorderSide(width: 1.0, color: borderColor,)

                  )),
            ),
          )
        ],
      ),
    );
  }
}
