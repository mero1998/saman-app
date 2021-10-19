import 'package:flutter/material.dart';
import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/utils/app_color.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/button_app.dart';
import 'package:saman_project/widgets/text_app.dart';

class VerifyAccountScreen extends StatefulWidget {
  final String mobile;
  final String countryCode;
  VerifyAccountScreen({required this.mobile, required this.countryCode});

  @override
  _VerifyAccountScreenState createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {


  late TextEditingController _firstCodeTextEditingController;
  late TextEditingController _secondCodeTextEditingController;
  late TextEditingController _thirdCodeTextEditingController;
  late TextEditingController _fourthCodeTextEditingController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstCodeTextEditingController = TextEditingController();
    _secondCodeTextEditingController = TextEditingController();
    _thirdCodeTextEditingController = TextEditingController();
    _fourthCodeTextEditingController = TextEditingController();
    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstCodeTextEditingController.dispose();
    _secondCodeTextEditingController.dispose();
    _thirdCodeTextEditingController.dispose();
    _fourthCodeTextEditingController.dispose();
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
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
      body : ListView(
        padding: EdgeInsetsDirectional.only(
          start: SizeConfig.scaleWidth(28),
          end: SizeConfig.scaleWidth(28),
        ),
        children: [
          TextApp(text:  "تأكيد الحساب", fontSize: 30, fontColor: Colors.black, fontWeight: FontWeight.w500,),
          SizedBox(height: SizeConfig.scaleHeight(17),),
          TextApp(text: "تم ارسال كود الى الرقم ${widget.mobile}", height: 2 ,fontSize: 14, fontColor: AppColor.SUB_TITLE_PAGEVIEW, fontWeight: FontWeight.w500,),
          SizedBox(height: SizeConfig.scaleHeight(94),),

          SizedBox(
            height: SizeConfig.scaleHeight(65),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _firstCodeTextEditingController,
                      focusNode: _firstFocusNode,
                      minLines: null,
                      maxLines: null,
                      maxLength: 1,
                      onChanged: (String text){
                        if(text.length == 1){

                          _secondFocusNode.requestFocus();
                        }
                      },
                      cursorColor: AppColor.INDICATOR_PAGEVIEW,
                      style: TextStyle(
                        fontFamily: "Circular Std",
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.scaleTextFont(23),
                        color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
                          hintText: "-",
                          contentPadding: EdgeInsetsDirectional.only(
                            start: SizeConfig.scaleWidth(8),
                            end: SizeConfig.scaleWidth(8),
                            top: SizeConfig.scaleHeight(3),
                            bottom: SizeConfig.scaleHeight(3),
                          ),
                          filled: true,
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _secondCodeTextEditingController,
                      focusNode: _secondFocusNode,
                      minLines: null,
                      maxLines: null,
                      onChanged: (String text){
                        if(text.length == 1){
                          _thirdFocusNode.requestFocus();
                        }
                      },
                      maxLength: 1,
                      cursorColor: AppColor.INDICATOR_PAGEVIEW,
                      style: TextStyle(
                          fontFamily: "Circular Std",
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.scaleTextFont(23),
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
                          hintText: "-",
                          contentPadding: EdgeInsetsDirectional.only(
                            start: SizeConfig.scaleWidth(8),
                            end: SizeConfig.scaleWidth(8),
                            top: SizeConfig.scaleHeight(3),
                            bottom: SizeConfig.scaleHeight(3),
                          ),
                          filled: true,
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _thirdCodeTextEditingController,
                      focusNode: _thirdFocusNode,
                      minLines: null,
                      maxLines: null,
                      maxLength: 1,
                      onChanged: (String text){
                        if(text.length == 1){
                          _fourthFocusNode.requestFocus();
                        }
                      },
                      cursorColor: AppColor.INDICATOR_PAGEVIEW,
                      style: TextStyle(
                          fontFamily: "Circular Std",
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.scaleTextFont(23),
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
                          hintText: "-",
                          contentPadding: EdgeInsetsDirectional.only(
                            start: SizeConfig.scaleWidth(8),
                            end: SizeConfig.scaleWidth(8),
                            top: SizeConfig.scaleHeight(3),
                            bottom: SizeConfig.scaleHeight(3),
                          ),
                          filled: true,
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _fourthCodeTextEditingController,
                      focusNode: _fourthFocusNode,
                      minLines: null,
                      maxLines: null,
                      maxLength: 1,
                      cursorColor: AppColor.INDICATOR_PAGEVIEW,
                      style: TextStyle(
                          fontFamily: "Circular Std",
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.scaleTextFont(23),
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          fillColor: AppColor.TEXT_SIGNUP.withOpacity(0.1),
                          hintText: "-",
                          contentPadding: EdgeInsetsDirectional.only(
                            start: SizeConfig.scaleWidth(8),
                            end: SizeConfig.scaleWidth(8),
                            top: SizeConfig.scaleHeight(3),
                            bottom: SizeConfig.scaleHeight(3),
                          ),
                          filled: true,
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: SizeConfig.scaleHeight(27),),

          ButtonApp(text: "التالي", width: double.infinity, height: 59, onPressed: () {} /*{ performVerify() },*/ ),
          SizedBox(height: SizeConfig.scaleHeight(21),),

        ],
      ),
    );
  }

  Future performVerify() async {

    if(checkData()){
      verify();
    }
  }

  bool checkData(){
    if(_firstCodeTextEditingController.text.isNotEmpty &&
      _secondCodeTextEditingController.text.isNotEmpty &&
    _thirdCodeTextEditingController.text.isNotEmpty &&
    _fourthCodeTextEditingController.text.isNotEmpty)
    {
      return true;
    }
    return false;
  }


  Future verify() async{

    bool active  = await UserApiController().verifyOtp(code: getCode(),mobile: widget.mobile, countryCode: widget.countryCode);

    if(active){
     Navigator.pushNamedAndRemoveUntil(context, "/login_screen", (route) => false);
    }

  }

  String getCode(){

    return _firstCodeTextEditingController.text +
           _secondCodeTextEditingController.text+
           _thirdCodeTextEditingController.text+
           _fourthCodeTextEditingController.text;
  }
}
