
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/screens/auth/verify_account_screen.dart';
import 'package:saman_project/utils/app_color.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/button_app.dart';
import 'package:saman_project/widgets/text_app.dart';
import 'package:saman_project/widgets/text_filed_app.dart';
class RegisterScreen extends StatefulWidget {


  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _firstNameTextEditingController;
  late TextEditingController _lastNameTextEditingController;
  late TextEditingController _mobileTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _confPasswordTextEditingController;
  late TextEditingController _emailEditingController;

 late TapGestureRecognizer _gestureRecognizer;

  String? countryCode;

  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  String countryName = "";

  int? cityId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameTextEditingController = TextEditingController();
    _lastNameTextEditingController = TextEditingController();
    _mobileTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _confPasswordTextEditingController = TextEditingController();
    _gestureRecognizer = TapGestureRecognizer()..onTap = navigateToLoginScreen;
  }

  void navigateToLoginScreen(){
    Navigator.pushNamed(context, "/login_screen");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTextEditingController.dispose();
    _lastNameTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _emailEditingController.dispose();
    _confPasswordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
        color: Colors.black,
    ),
    ),
    body: ListView(
      physics: ScrollPhysics(),
    shrinkWrap: true,
    padding: EdgeInsetsDirectional.only(
    start: SizeConfig.scaleWidth(28),
    end: SizeConfig.scaleWidth(28),
    ),
    children: [
    TextApp(text: "انشاء حساب جديد", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
    SizedBox(height: SizeConfig.scaleHeight(17),),
    // SizedBox(height: SizeConfig.scaleHeight(94),),

      TextFiledApp(hint:  "الاسم الأول", prefixIcon: Icons.person_outline, controller: _firstNameTextEditingController),
      TextFiledApp(hint:  "الاسم الأخير", prefixIcon: Icons.person_outline, controller: _lastNameTextEditingController),
    TextFiledApp(hint:  "البريد الالكتروني", prefixIcon: Icons.email, controller: _emailEditingController),

      SizedBox(height: SizeConfig.scaleHeight(21),),
      InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber number) {
          print(number.phoneNumber);
          print(number.dialCode);
          print(number.isoCode);
        setState(() {
          countryCode = number.dialCode;
          countryName = number.isoCode!;
        });
          },
        hintText: "رقم الموبايل",
        onInputValidated: (bool value) {
          print(value);
        },
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: TextStyle(color: Colors.black),
        initialValue: number,
        textFieldController: _mobileTextEditingController,
        formatInput: false,
        keyboardType:
        TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade700,
          ),
        ),
        inputDecoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.TEXT_FlIED_BORDER,
            ),
          ),
        ),
        cursorColor: kPrimaryColor,
        onSaved: (PhoneNumber number) {
          print('On Saved: $number');
          setState(() {
            countryCode = number.dialCode;
            countryName = number.isoCode!;
          });
        },
      ),
      SizedBox(height: SizeConfig.scaleHeight(21),),
      TextFiledApp(hint: "كلمة المرور", prefixIcon: Icons.lock_open_outlined,controller: _passwordTextEditingController, obscure: true,),
      TextFiledApp(hint: "تأكيد كلمة المرور", prefixIcon: Icons.lock_open_outlined,controller: _confPasswordTextEditingController, obscure: true,),
      SizedBox(height: SizeConfig.scaleHeight(21),),

      SizedBox(height: SizeConfig.scaleHeight(27)),
      ButtonApp(text: "تسجيل", width: double.infinity, height: 59, onPressed: () => PerformRegister(),),
      SizedBox(height: SizeConfig.scaleHeight(22)),
      Center(
        child: RichText(text: TextSpan(
          children: [
            TextSpan(text: "هل تمتلك حساب؟", style: TextStyle(
              fontFamily: "Cairo",
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.scaleTextFont(15),
              color: Colors.black38,
            )),
            TextSpan(text: " "),
            TextSpan(text: "سجل دخول الان",
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.scaleTextFont(15),
                  color: Colors.black,
                ),
                recognizer: _gestureRecognizer)
          ]
        )),
      ),
    ],
    ),
    );
  }



  Future PerformRegister() async {
    if(checkData()){
      register();

    }

  }

  bool checkData(){
    if(_mobileTextEditingController.text.isNotEmpty &&
        _firstNameTextEditingController.text.isNotEmpty &&
        _lastNameTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty &&
        _emailEditingController.text.isNotEmpty &&
        _confPasswordTextEditingController.text.isNotEmpty &&
         countryCode != ""){
      if(_passwordTextEditingController.text == _confPasswordTextEditingController.text){
        return true;
      }else{
        Get.snackbar("خطأ", "كلمة المرور غير متطابقة" , backgroundColor: Colors.red, colorText: Colors.white);

        return false;
      }
    }
    Get.snackbar("خطأ", "من فضلك ادخل البيانات المطلوبة" , backgroundColor: Colors.red, colorText: Colors.white);
    return false;
  }
 //
  Future register()async {
    print(_mobileTextEditingController.text);
    print(countryCode);
    print(_emailEditingController.text);
    print(_firstNameTextEditingController.text);
    print(_lastNameTextEditingController.text);
    print(_passwordTextEditingController.text);
    print(_confPasswordTextEditingController.text);
    print(countryName);
 bool success =  await UserApiController().register(
        mobile: _mobileTextEditingController.text,
      contryCode: countryCode!,
        email: _emailEditingController.text,
        firstName: _firstNameTextEditingController.text,
        lastName: _lastNameTextEditingController.text,
        password: _passwordTextEditingController.text,
        countryName: countryName,
 );
  print("We are here");
  if(success) {
   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>
       VerifyAccountScreen(mobile: _mobileTextEditingController.text, countryCode: countryCode!,)), (
       route) => false);


 }


  }

}



