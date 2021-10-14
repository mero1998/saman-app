import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'التواصل',
          style: TextStyle(
              fontSize: SizeConfig.scaleTextFont(16),
              fontFamily: 'Cairo',
              color: kPrimaryColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.scaleHeight(20),
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: SizeConfig.scaleHeight(405),
        width: SizeConfig.scaleWidth(343),
        padding: EdgeInsets.only(top: SizeConfig.scaleHeight(39)),
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.scaleWidth(16),
            vertical: SizeConfig.scaleHeight(30)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              SizeConfig.scaleHeight(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        child: Column(
          children: [
            InputField(
              hintText: 'الاسم',
              height: SizeConfig.scaleHeight(49),
            ),
            InputField(
              hintText: 'البريد الالكتروني',
              height: SizeConfig.scaleHeight(49),
              linesNumber: 2,
              keyboardType: TextInputType.emailAddress,
            ),
            InputField(
              hintText: 'اكتب الرسالة هنا',
              height: SizeConfig.scaleHeight(112),
            ),
            Spacer(),
            Container(
              height: SizeConfig.scaleHeight(44),
              width: SizeConfig.scaleWidth(159),
              margin: EdgeInsets.only(
                bottom: SizeConfig.scaleHeight(12),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ارسال',
                  style: TextStyle(
                      fontFamily: 'Bahij',
                      fontSize: SizeConfig.scaleTextFont(16),
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.scaleHeight(12),
                      ),
                    ),
                    minimumSize: Size(SizeConfig.scaleWidth(159),
                        SizeConfig.scaleHeight(44))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String? hintText;
  final double? height;
  final int linesNumber;
  final TextInputType keyboardType;

  const InputField(
      {this.hintText,
      this.height,
      this.linesNumber = 1,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: SizeConfig.scaleHeight(16),
        left: SizeConfig.scaleWidth(17.5),
        right: SizeConfig.scaleWidth(17.5),
      ),
      decoration: BoxDecoration(
        color: kGrayColor,
        borderRadius: BorderRadius.circular(
          SizeConfig.scaleHeight(25),
        ),
      ),
      height: height,
      child: TextField(
          // controller: textEditingController,
          maxLines: 5,
          minLines: linesNumber,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                right: SizeConfig.scaleHeight(11),

                top: SizeConfig.scaleWidth(13.5),
                bottom: SizeConfig.scaleWidth(13.5),
            ),
            hintText: '$hintText',
            hintStyle: TextStyle(
                fontSize: SizeConfig.scaleTextFont(14), fontFamily: 'Bahij'),
            border: InputBorder.none,
          )),
    );
  }
}
