import 'package:flutter/material.dart';
import 'package:saman_project/api/api_settings.dart';
import 'package:saman_project/getx/car_details_getx_controller.dart';
import 'package:saman_project/getx/wishlist_getx_controller.dart';
import 'package:saman_project/models/cars.dart';
import 'package:saman_project/screens/product-details.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class ProductWidget extends StatelessWidget {
  Cars cars;

  ProductWidget({required this.cars});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: SizeConfig.scaleHeight(262),
      width: SizeConfig.scaleWidth(208),
      margin: EdgeInsets.only(left: SizeConfig.scaleWidth(11)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(20)),
        border: Border.all(color: Color(0XFFF45F5B)),
      ),
      child: Stack(
        children: [
          Container(
            width: SizeConfig.scaleWidth(208),
            height: SizeConfig.scaleHeight(139),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  SizeConfig.scaleHeight(20),
                ),
                topLeft: Radius.circular(
                  SizeConfig.scaleHeight(20),
                ),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(ApiSettings.BASE_URL + cars.image)
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.scaleHeight(7),
            left: SizeConfig.scaleWidth(6),
            child: CircleAvatar(
              radius: SizeConfig.scaleHeight(15),
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.favorite_outline,size: SizeConfig.scaleHeight(12),),
                onPressed: (){
                  WishlistGetxController.to.addToWishList(cars.id);
                },
                color: kPrimaryColor,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.scaleHeight(12),
              left: SizeConfig.scaleHeight(13),
              right: SizeConfig.scaleHeight(13),
              child: Container(
                height: SizeConfig.scaleHeight(110),
                width: SizeConfig.scaleWidth(185),
                // color: Colors.pink,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              cars.name,
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.scaleTextFont(16),
                                  fontFamily: 'Cairo'),
                            ),
                          ),
                          Text(
                            cars.price + "ريال",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: SizeConfig.scaleTextFont(16),
                                fontFamily: 'Cairo'),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.edit_road_outlined,
                              size: SizeConfig.scaleHeight(17.22),
                            ),
                            Text(
                            cars.mileage.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.scaleTextFont(16),
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_gas_station,
                                color: kPrimaryColor,
                                size: SizeConfig.scaleHeight(17.22)),
                            Text(
                              cars.fuelType,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.scaleTextFont(16),
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(19),
                    ),
                    Container(
                      height: SizeConfig.scaleHeight(29),
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(24.5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (c) => ProductDetails(cars: cars)));
                        },
                        child: Text(
                          'عرض التفاصيل',
                          style: TextStyle(
                              fontSize: SizeConfig.scaleTextFont(14),
                              fontFamily: 'Cairo'),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            minimumSize: Size(
                              SizeConfig.scaleWidth(159),
                              SizeConfig.scaleHeight(29),
                            )),
                      ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
