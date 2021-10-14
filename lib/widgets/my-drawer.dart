import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/utils/size-config.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(SizeConfig.scaleHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/hhr.jpg'),
                    ),
                    SizedBox(
                      width: SizeConfig.scaleWidth(20),
                    ),
                    Text('Mohammed Jebreel',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(20),


                      ),),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.scaleHeight(20),
                ),
                Column(
                  children: [
                    MenuListItems(
                      title:   'عن الشركة' ,
                      onTap: (){
                        Navigator.pushNamed(context, '/about-us');
                      },
                    ),
                    MenuListItems(
                      title:   'المدونة' ,
                      onTap: (){
                        Navigator.pushNamed(context, '/blogs');

                      },
                    ),
                   MenuListItems(
                     title: 'الاحدث عرضاًً',
                     onTap: (){
                       Navigator.pushNamed(context, '/latest-show');

                     },
                   ),
                   MenuListItems(
                     title: 'خطط الاشتراكاتًً',
                     onTap: (){
                       Navigator.pushNamed(context, '/subscription-plans');

                     },
                   ),
                   MenuListItems(
                     title: 'اتصل بنا',
                     onTap: (){
                       Navigator.pushNamed(context, '/contact-us');

                     },
                   ),
                   MenuListItems(
                     title: 'تسجيل خروج',
                     onTap: (){

                     },
                   ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuListItems extends StatelessWidget {

  final String? title;
  final VoidCallback? onTap;

  const MenuListItems({this.title, this.onTap}) ;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Cairo',
          fontSize: SizeConfig.scaleTextFont(16),
        ),
      ),
      onTap:onTap,
    );
  }
}
