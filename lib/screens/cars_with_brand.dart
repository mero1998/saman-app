import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/getx/cars_controller_getx.dart';
import 'package:saman_project/models/cars.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class CarsWithBrands extends StatefulWidget {
  int brandId;

  CarsWithBrands({required this.brandId});

  @override
  _CarsWithBrandsState createState() => _CarsWithBrandsState();
}

class _CarsWithBrandsState extends State<CarsWithBrands> {

  @override
  void initState() {
    // TODO: implement initState
    CarsGetxController controller = Get.put(CarsGetxController());
    CarsGetxController.to.getCarsWithBrand(brandId: widget.brandId.toString());
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    CarsGetxController.to.carsWithBrand.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<CarsGetxController>(
      builder: (CarsGetxController controller) {
        print(controller.carsWithBrand.length);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
            "سيارات",
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
          body: Padding(
            padding:  EdgeInsets.only(top: SizeConfig.scaleHeight(30)),
            child: Container(
              width: double.infinity,
              child: Container(
                height:MediaQuery.of(context).size.height *1,
                width: SizeConfig.scaleWidth(256),
                child: ListView.builder(
                    itemCount: controller.carsWithBrand.length,
                    itemBuilder: (BuildContext context, int index) {
                      // Container have product
                      return ProductWidgetTh(car: controller.carsWithBrand[index],);
                    }),
              ),
            ),
          ),
        );
      },
    );
  }
}


class ProductWidgetTh extends StatefulWidget {


  Cars car;
  ProductWidgetTh({required this.car});

  @override
  _ProductWidgetThState createState() => _ProductWidgetThState();
}

class _ProductWidgetThState extends State<ProductWidgetTh> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(322),
      width: SizeConfig.scaleWidth(256),
      margin: EdgeInsets.only(bottom: SizeConfig.scaleWidth(45)),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(26)),
        border: Border.all(color: Color(0XFFF45F5B)),
      ),
      child: Stack(
        children: [
          Container(
            width: SizeConfig.scaleWidth(256),
            height: SizeConfig.scaleHeight(171),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  SizeConfig.scaleHeight(26),
                ),
                topLeft: Radius.circular(
                  SizeConfig.scaleHeight(26),
                ),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.car.imageUrl),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.scaleHeight(9),
            left: SizeConfig.scaleWidth(8 ),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isFav = true;
                  print('go to favorites products');
                });
              },
              child: CircleAvatar(
                radius: SizeConfig.scaleHeight(18),
                backgroundColor: Colors.white,
                child: Icon(
                  isFav ? Icons.favorite_outline : Icons.favorite,
                  color: kPrimaryColor,
                  size: SizeConfig.scaleHeight(11.76),
                ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'سيارة حديثة',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.scaleTextFont(16),
                            fontFamily: 'Cairo'),
                      ),
                      Text(
                        '5000 ريال',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: SizeConfig.scaleTextFont(16),
                            fontFamily: 'Cairo'),
                      )
                    ],
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
                            '32012',
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
                            'Hybrid',
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
                        Navigator.pushNamed(context, "/product-details");
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
                          ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(13)))
                      ),
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
