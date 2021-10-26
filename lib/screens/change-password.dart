import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/getx/user_getx_controller.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class ChangePassword extends StatefulWidget {

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

late  TextEditingController _oldPasswordTextEditingController;
late  TextEditingController _newPasswordTextEditingController;
late  TextEditingController _confNewPasswordTextEditingController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _oldPasswordTextEditingController = TextEditingController();
    _newPasswordTextEditingController = TextEditingController();
    _confNewPasswordTextEditingController = TextEditingController();
}

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _newPasswordTextEditingController.dispose();
    _confNewPasswordTextEditingController.dispose();
    _oldPasswordTextEditingController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.scaleHeight(344),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(SizeConfig.scaleHeight(37)),
                    bottomLeft: Radius.circular(SizeConfig.scaleHeight(37))),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    spreadRadius: 0.0,
                    offset: Offset(0, 0), // shadow direction: bottom right
                  )
                ],
                image: DecorationImage(
                    image: AssetImage('images/gh.jpg'),
                    fit: BoxFit.cover
                ),
              ),
              clipBehavior: Clip.antiAlias,
            ),
            Positioned(

              bottom: SizeConfig.scaleHeight(46),
              left: SizeConfig.scaleWidth(16),
              right: SizeConfig.scaleWidth(16),
              child: Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(9),
                    right: SizeConfig.scaleWidth(9),
                    top: SizeConfig.scaleHeight(43)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(37),
                  ),
                  border: Border.all(color: kPrimaryColor,width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 6.0,
                      spreadRadius: 1.0,
                      offset: Offset(0, 8), // shadow direction: bottom right
                    )
                  ],
                ),
                height: SizeConfig.scaleHeight(365),

                child: Column(
                  children: [
//TODO REFACTOR
                    Container  (
                      height: SizeConfig.scaleHeight(49),
                      width: SizeConfig.scaleWidth(325),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                        border: Border.all(color: kPrimaryColor ,width: 1),
                      ),
                      child: TextField(
                        controller: _oldPasswordTextEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye,color: kPrimaryColor,),
                          hintText: 'كلمة المرور الحالية',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),
                    Container(
                      height: SizeConfig.scaleHeight(49),
                      width: SizeConfig.scaleWidth(325),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                        border: Border.all(color: kPrimaryColor ,width: 1),
                      ),
                      child: TextField(
                        controller: _newPasswordTextEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye,color: kPrimaryColor,),
                          hintText: 'كلمة المرور الجديدة',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),
                    Container(
                      height: SizeConfig.scaleHeight(49),
                      width: SizeConfig.scaleWidth(325),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                        border: Border.all(color: kPrimaryColor ,width: 1),
                      ),
                      child: TextField(
                        controller: _confNewPasswordTextEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye,color: kPrimaryColor,),
                          hintText: 'اعد تعيين كلمة المرور',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(80)),
                      width: double.infinity,
                      height: SizeConfig.scaleHeight(40),
                      child: ElevatedButton(
                        onPressed: () {
                          performChangePassword();
                        },
                        child: Text(
                          'حفظ',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: SizeConfig.scaleTextFont(20)),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.scaleHeight(290),
              left: SizeConfig.scaleWidth(22),
              child: Stack(
                  children:[
                    CircleAvatar(
                      radius: SizeConfig.scaleHeight(50),
                      backgroundImage: NetworkImage(UserGetxController.to.user.first!.image!),
                    ),
                    Positioned(
                      bottom: SizeConfig.scaleHeight(15),
                      right: SizeConfig.scaleWidth(1),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,radius: SizeConfig.scaleHeight(8),
                      ),
                    )
                  ]
              ),
            ),
            Positioned(
              top: SizeConfig.scaleHeight(315),
              left: SizeConfig.scaleWidth(121),
              child: Text(UserGetxController.to.user.first!.firstName + UserGetxController.to.user.first!.lastName,
                  style: TextStyle(
                      fontSize: SizeConfig.scaleTextFont(20),
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }

  void performChangePassword(){
    if(checkData()){
      changePassword();
    }
  }
  bool checkData(){
  if(_oldPasswordTextEditingController.text.isNotEmpty && _newPasswordTextEditingController.text.isNotEmpty && _confNewPasswordTextEditingController.text.isNotEmpty) {
    if (_newPasswordTextEditingController.text ==
        _confNewPasswordTextEditingController.text) {
      return true;
    }else{
      Get.snackbar("خطأ", "كلمة المرور غير متطابقة", backgroundColor: Colors.red);
      return false;
    }
  }
    Get.snackbar("خطأ", "يرجى ملىء الحقول المطلوبة", backgroundColor: Colors.red);
    return false;
  }

  void changePassword(){

      UserApiController().resetPassword(context, oldPassword: _oldPasswordTextEditingController.text, newPassword: _newPasswordTextEditingController.text);
      Get.snackbar("نجاح", "تم تغيير كلم المرور بنجاح", backgroundColor: Colors.green);
      Navigator.pop(context);
}

}
