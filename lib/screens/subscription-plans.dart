import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class SubscriptionPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'خطط الاشتراكات',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.scaleWidth(16),
              vertical: SizeConfig.scaleHeight(30)),
          child: Column(
            children: [
              PackageType(
                onTap: (){},
                packageName: 'الاشتراك الذهبي',
                packagePrice: '130 ريال عماني لمدة 13 شهر',
                column: Column(
                  children: [
                    Features(
                      title: 'خدمة إشتراك',
                    ),
                    Features(
                      title: 'مساحة خاصه في المتجر',
                    ),
                    Features(
                      title: 'لوحة تحكم قابله للتعديل',
                    ),
                    Features(
                      title: 'تسويق',
                    ),

                  ],
                ),

              ),
              PackageType(
                onTap: (){},
                packageName: 'الاشتراك البلاتيني',
                packagePrice: '230 ريال عماني لمدة 24 شهر',
                column: Column(
                  children: [
                    Features(
                      title: 'خدمة إشتراك',
                    ),
                    Features(
                      title: 'مساحة خاصه في المتجر',
                    ),
                    Features(
                      title: 'لوحة تحكم قابله للتعديل',
                    ),
                    Features(
                      title: 'تسويق',
                    ),
                    Features(
                      title: 'إعلانات',
                    ),
                    Features(
                      title: 'إدارة ورد على العملاء',
                    ),

                  ],
                ),

              ),
              PackageType(
                onTap: (){},
                packageName: 'الاشتراك الفضي',
                packagePrice: '50 ريال عماني لمدة 12 شهر',
                column: Column(
                  children: [
                    Features(
                      title: 'خدمة إشتراك',
                    ),
                    Features(
                      title: 'مساحة خاصه في المتجر',
                    ),
                    Features(
                      title: 'لوحة تحكم قابله للتعديل',
                    ),

                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}

class PackageType extends StatelessWidget {

  final String? packageName;
  final String? packagePrice;
  final Column column;
  final VoidCallback? onTap;

  const PackageType({
    this.packageName,
    this.packagePrice,
    required this.column, this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.scaleHeight(500),
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(41)),
      decoration: BoxDecoration(
        color: kSubColor,
        borderRadius: BorderRadius.circular(
          SizeConfig.scaleHeight(26),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              top: SizeConfig.scaleHeight(21),
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.scaleHeight(31),
                child: Text(
                  '$packageName',
                  style: TextStyle(
                      fontSize: SizeConfig.scaleTextFont(20),
                      color: Colors.white,
                      fontFamily: 'Bahij'),
                ),
              )),
          Positioned(
              top: SizeConfig.scaleHeight(55),
              left: SizeConfig.scaleWidth(62.5),
              right: SizeConfig.scaleWidth(62.5),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.scaleHeight(10.5),
                    horizontal: SizeConfig.scaleWidth(11.5)),
                alignment: Alignment.center,
                height: SizeConfig.scaleHeight(46),
                width: SizeConfig.scaleWidth(218),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.scaleHeight(11),
                    ),
                    border:
                        Border.all(width: 2, color: Colors.white)),
                child: Text(
                  '$packagePrice',
                  style: TextStyle(
                      fontFamily: 'Bahij',
                      fontSize: SizeConfig.scaleTextFont(16),
                      color: Colors.white),
                ),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: SizeConfig.scaleHeight(378),
                decoration: BoxDecoration(
                  color: Color(0X26FFFFFF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      SizeConfig.scaleHeight(26),
                    ),
                    bottomLeft: Radius.circular(
                      SizeConfig.scaleHeight(26),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: SizeConfig.scaleHeight(22),
                        right: SizeConfig.scaleWidth(21),
                        left: SizeConfig.scaleWidth(0),
                        child: column)
                  ],
                ),
              )),
          Positioned(
              bottom: SizeConfig.scaleHeight(16),
              left: SizeConfig.scaleWidth(92.5),
              right: SizeConfig.scaleWidth(92.5),
              child: Container(
                height: SizeConfig.scaleHeight(44),
                child: ElevatedButton(
                  onPressed: onTap,
                  child: Text(
                    'اشترك الان',
                    style: TextStyle(
                        color: Colors.black,
                    fontSize: SizeConfig.scaleTextFont(18),
    fontFamily: 'Bahij',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      minimumSize: Size(
                        SizeConfig.scaleWidth(190),
                        SizeConfig.scaleHeight(44),
                      )),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.scaleHeight(22))),
              )),
        ],
      ),
    );
  }

}

class Features extends StatelessWidget {
  final String? title;

  const Features({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(25),
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(12)),
      child: Row(children: [
        Icon(
          Icons.check,
          color: Colors.white,
          size: SizeConfig.scaleHeight(22),
        ),
        SizedBox(
          width: SizeConfig.scaleWidth(8.1),
        ),
        Text(
          '$title',
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.scaleTextFont(16),
              fontFamily: 'Bahij'),
        ),
      ]),
    );
  }
}
