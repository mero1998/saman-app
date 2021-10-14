import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/my-small-button.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child:   Padding(
    padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
    child:   Column(
  
      children: [
  SizedBox(
    height: SizeConfig.scaleHeight(10),
  ),
        InfoTextField(hint: 'الاسم الاول', textInputType: TextInputType.text,),
        InfoTextField(hint: 'الاسم الثاني',textInputType: TextInputType.text,),
        InfoTextField(hint: 'البريد الالكتروني',textInputType: TextInputType.emailAddress,),
        InfoTextField(hint: 'رقم الهاتف',textInputType: TextInputType.number,),
        InfoTextField(hint: 'الدولة',textInputType: TextInputType.text,),
        InfoTextField(hint: 'المدينة',textInputType: TextInputType.text,),
        InfoTextField(hint: 'الشارع',textInputType: TextInputType.text,),
        InfoTextField(hint: 'المحافظة',textInputType: TextInputType.text,),
        InfoTextField(hint: 'الرمز البريدي',textInputType: TextInputType.text,),


        SizedBox(
          height: SizeConfig.scaleHeight(90),
        ),
        MySButton(
          onTap: (){

          },
          buttonLeftMargin: SizeConfig.scaleWidth(100),
          buttonRightMargin: SizeConfig.scaleWidth(100),
          buttonTitle:'متابعة' ,
          buttonHeight: SizeConfig.scaleHeight(29),
          buttonColor: kSecondaryColor,
        ),


      ],
  
    ),
  ),
),
    );
  }
}



class InfoTextField extends StatelessWidget {
final String? hint;
final TextEditingController? textEditingController;
final TextInputType? textInputType;
  const InfoTextField({this.hint, this.textEditingController, this.textInputType});


  @override
  Widget build(BuildContext context) {
    return TextField(

      controller:textEditingController ,

      keyboardType: textInputType,

      decoration: InputDecoration(

        hintText: hint,

        hintStyle: TextStyle(color: kPrimaryColor,



        )

      ),

    );
  }
}
