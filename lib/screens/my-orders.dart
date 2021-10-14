import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/my-small-button.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Text(
                    'طلباتي',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Cairo',
                      fontSize: SizeConfig.scaleTextFont(20),
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.scaleHeight(62),
                  color: kGrayColor,
                  child: Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.scaleWidth(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(text: TextSpan(
                          //create varibale to change price
                            text:'المجموع  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.scaleTextFont(16),
                                fontFamily: 'Cairo'
                            ),
                            children: [
                              TextSpan(
                                text: '5 عنصر',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: SizeConfig.scaleTextFont(16),
                                    fontFamily: 'Cairo'
                                ),
                              )
                            ]

                        ),),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.scaleHeight(40),
                ),
                Container(
                  height: SizeConfig.scaleHeight(500),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(16),
                          vertical: SizeConfig.scaleHeight(10),
                        ),
                        height: SizeConfig.scaleHeight(139),
                        width: double.infinity,
                        // margin: EdgeInsets.symmetric(
                        //   horizontal:SizeConfig.scaleWidth(40),
                        //   vertical: SizeConfig.scaleHeight(10),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.scaleHeight(139),
                              width: SizeConfig.scaleWidth(127),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.scaleHeight(20)),
                                border: Border.all(color: Color(0XFFF45F5B)),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.scaleWidth(19),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:SizeConfig.scaleHeight(19)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'سيارة حديثة بشكل عصري',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: SizeConfig.scaleTextFont(13),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.scaleHeight(20),
                                  ),
                                  Text(
                                    '5000 ريال',
                                    style: TextStyle(
                                      color: Color(0XFFF45F5B),
                                      fontFamily: 'Cairo',
                                      fontSize: SizeConfig.scaleTextFont(13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.scaleWidth(31),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.document_scanner_outlined,color: kPrimaryColor,))
                          ],
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          )),
    );
  }
}


