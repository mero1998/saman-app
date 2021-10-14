import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/my-small-button.dart';

class Revision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.scaleHeight(40),
            ),
            Container(
              height: SizeConfig.scaleHeight(425),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(
                  SizeConfig.scaleHeight(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.scaleWidth(16),
                    vertical: SizeConfig.scaleHeight(14)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RowText(
                      infoAsked: 'الاسم الاول : ',
                      answers: 'محمد',
                    ),
                    RowText(
                      infoAsked: ' الاسم الثاني : ',
                      answers: 'جبريل',
                    ),
                    RowText(
                      infoAsked: 'البريد الالكتروني : ',
                      answers: 'example@hotmail.com',
                    ),
                    RowText(
                      infoAsked: 'رقم الهاتف : ',
                      answers: '0123456789',
                    ),
                    RowText(
                      infoAsked: 'الدولة : ',
                      answers: 'فلسطين',
                    ),
                    RowText(
                      infoAsked: 'المدينة : ',
                      answers: 'غزة',
                    ),
                    RowText(
                      infoAsked: 'الشارع : ',
                      answers: 'النصر',
                    ),
                    RowText(
                      infoAsked: 'المحافظة : ',
                      answers: 'غزة',
                    ),
                    RowText(
                      infoAsked: 'الرمز البريدي : ',
                      answers: '00972',
                    ),
                  ],
                ),
              ),
            ),
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
                    onPressed: (){},
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
            )
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
class RowText extends StatelessWidget {
  final String? infoAsked;
  final String? answers;

  const RowText({this.infoAsked, this.answers});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(17)),
      child: RichText(
        text: TextSpan(
            text: infoAsked,
            style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(16), fontFamily: 'Cairo'),
            children: [
              TextSpan(
                text: answers,
                style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(16), fontFamily: 'Cairo'),
              )
            ]),
      ),
    );
  }
}
