import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class Consultation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: SizeConfig.scaleWidth(16),
        left: SizeConfig.scaleWidth(16),
        top: SizeConfig.scaleHeight(33),
      ),
      height: SizeConfig.scaleHeight(115),
      width: SizeConfig.scaleWidth(343),
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(
            SizeConfig.scaleHeight(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              'images/carr.jpg',
            ),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          Container(

            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(
                SizeConfig.scaleHeight(20),
              ),
            ),
          ),
          Positioned(
              right: SizeConfig.scaleWidth(10),
              bottom: SizeConfig.scaleHeight(13),
              top:SizeConfig.scaleHeight(12),
              child: Container(
                width: SizeConfig.scaleWidth(179),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text('هل لديك استشارة فنية',style: TextStyle(color: Colors.white,fontSize: SizeConfig.scaleTextFont(14),fontFamily: 'Cairo'),),
                    Text('نقدم لك خدماتنا بما يتعلق باستشاراتك ونكون سعداء بتقديم المساعدة',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: SizeConfig.scaleTextFont(10),fontFamily: 'Cairo'),maxLines: 2,),
                    Container(
                      height: SizeConfig.scaleHeight(22) ,
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(21),
                      ),
                      child: ElevatedButton(onPressed: (){}, child: Text('أرسل استشارة',style: TextStyle(fontSize: SizeConfig.scaleTextFont(10),fontFamily: 'Cairo'),),
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            minimumSize: Size(
                              SizeConfig.scaleHeight(22),
                              SizeConfig.scaleWidth(133),
                            ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(10))
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),

      //stack image and button
    );
  }
}