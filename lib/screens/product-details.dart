import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imageview360_nullsafe/imageview360_nullsafe.dart';
import 'package:saman_project/getx/car_details_getx_controller.dart';
import 'package:saman_project/models/cars.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/product-widgt.dart';

class ProductDetails extends StatefulWidget {

  Cars cars;


  ProductDetails({required this.cars});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late PageController pageController;
  int indexPage = 0;

  bool os = false;
  bool os2 = false;
  bool os3 = false;


  // bool autoRotate = true;
  // List<ImageProvider> imageList = <ImageProvider>[];
  // int rotationCount = 2;
  // int swipeSensitivity = 2;
  // bool allowSwipeToRotate = true;
  // RotationDirection rotationDirection = RotationDirection.anticlockwise;
  // Duration frameChangeDuration = Duration(milliseconds: 50);
  // bool imagePrecached = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    CarDetailsGetxController.to.carDetails.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    CarDetailsGetxController.to.carDetailsIndex(widget.cars.id);

    return GetX<CarDetailsGetxController>(
      builder: (CarDetailsGetxController controller) {
        return controller.carDetails.length != 0 ? Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: kPrimaryColor),
            title: Text(
              controller.carDetails[0]!.name,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.normal),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.scaleHeight(261),
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: pageController,
                        itemCount: controller.carDetails.first!.images.length,
                        onPageChanged: (index){
                          setState(() {
                            indexPage = index;
                          });
                        },
                        itemBuilder: (context, index){
                          var list = controller.carDetails.first!.images;
                          // imageList.add(NetworkImage(controller.carDetails.first!.images[index].picUrl));
                          return  Image.network(list[index].picUrl, fit: BoxFit.cover,);
                    // return ImageView360(
                    //   key: UniqueKey(),
                    //   imageList: imageList,
                    //   autoRotate: autoRotate,
                    //   rotationCount: rotationCount,
                    //   rotationDirection: RotationDirection.anticlockwise,
                    //   frameChangeDuration: Duration(milliseconds: 30),
                    //   swipeSensitivity: swipeSensitivity,
                    //   allowSwipeToRotate: allowSwipeToRotate,
                    //   onImageIndexChanged: (currentImageIndex) {
                    //     print("currentImageIndex: $currentImageIndex");
                    //   },
                    // );
                        },
                      ),
                      PositionedDirectional(
                        end: SizeConfig.scaleWidth(17),
                        top: SizeConfig.scaleHeight(15),
                        child: Column(
                          // shrinkWrap: true,
                          // physics: ScrollPhysics(),
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children:  [
                            IconButton(onPressed: (){
                              pageController.previousPage(duration: Duration(microseconds: 500), curve: Curves.easeInBack);
                              indexPage == 0 ? pageController.jumpToPage(controller.carDetails.first!.images.length -1) : null;
                            },
                                icon:  Icon(Icons.arrow_upward, color: Colors.white, size: SizeConfig.scaleWidth(13),)),
                          Container(
                            width: SizeConfig.scaleWidth(50),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: controller.carDetails.first!.images.length,
                              itemBuilder: (context, index) {
                              return InkWell(
                                onTap: (){
                                  for(int i = 0; i < controller.carDetails.first!.images.length; i++){
                                    pageController.jumpToPage(i);
                                  }
                                },
                                child: Container(
                                  width: SizeConfig.scaleWidth(63),
                                  height: SizeConfig.scaleHeight(41),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(10),
                                      image:  DecorationImage(
                                          image: NetworkImage(controller.carDetails.first!.images[index].picUrl),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              );
                              },
                                ),
                          ),
                            IconButton(onPressed: (){
                              pageController.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeInBack);
                              indexPage == controller.carDetails.first!.images.length -1 ? pageController.jumpToPage(0) : null;
                            }, icon:  Icon(Icons.arrow_downward,color: Colors.white, size: SizeConfig.scaleWidth(13),)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ImageWithStack(),
                TitleAndPrice(title: controller.carDetails.first!.name, price: widget.cars.price,),
                //Two Buttons
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonW(
                        onTap: (){},
                        title: Text(
                          'اشترك الان',
                          style: TextStyle(
                              fontSize: SizeConfig.scaleTextFont(18),
                              fontFamily: 'Cairo',
                              color: Colors.white),
                        ),
                        btnColor: kPrimaryColor,
                      ),
                      ButtonW(
                        onTap: (){},
                        title: Text(
                          'اضف الى السلة',
                          style: TextStyle(
                              fontSize: SizeConfig.scaleTextFont(18),
                              fontFamily: 'Cairo',
                              color: Colors.black),
                        ),
                        btnColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                //one
                DropDownButton(
                  title: 'وصف المنتج',
                  onTap: (){
                    setState(() {
                      os = true;
                      os2 = false;
                      os3 = false;
                      print('show');
                    });
                  },
                ),
                Visibility(
                  visible: os ? true : false,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(16),
                        vertical: SizeConfig.scaleHeight(20)),
                    width: SizeConfig.scaleWidth(344),
                    height: SizeConfig.scaleHeight(436),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(SizeConfig.scaleHeight(12)),
                        border: Border.all(color: kPrimaryColor, width: 1)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.scaleHeight(11),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'وصف المنتج',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: SizeConfig.scaleTextFont(16),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        os = false;
                                      });
                                    },
                                    child: Icon(Icons.close)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Text(
                              controller.carDetails.first!.description,
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: SizeConfig.scaleTextFont(14)),
                            ),
                          ),
                          DetailsLine(
                            icon: Icons.edit_road,
                            firstTitle: 'الاميال',
                            lastTitle:controller.carDetails.first!.mileage,
                          ),
                          DetailsLine(
                            icon: Icons.local_gas_station_outlined,
                            firstTitle: 'نوع الوقود',
                            lastTitle: controller.carDetails.first!.fuelType,
                          ),
                          DetailsLine(
                            icon: Icons.invert_colors_on_outlined,
                            firstTitle: 'اللون الداخلي',
                            lastTitle: controller.carDetails.first!.interColor,
                          ),
                          DetailsLine(
                            icon: Icons.invert_colors_on_outlined,
                            firstTitle: 'اللون الخارجي',
                            lastTitle: controller.carDetails.first!.color,
                          ),
                          DetailsLine(
                            icon: Icons.calendar_today_outlined,
                            firstTitle: 'موديل سنة',
                            lastTitle: controller.carDetails.first!.modelYear,
                          ),
                          DetailsLine(
                            icon: Icons.local_gas_station_outlined,
                            firstTitle: 'توفير وقود',
                            lastTitle: controller.carDetails.first!.fuelConsumption,
                          ),
                          DetailsLine(
                            icon: Icons.car_repair,
                            firstTitle: 'ناقل الحركة',
                            lastTitle:  controller.carDetails.first!.transmission,
                          ),
                          DetailsLine(
                            icon: Icons.card_membership_sharp,
                            firstTitle: 'محرك',
                            lastTitle:controller.carDetails.first!.engine,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //two
                DropDownButton(
                    title: 'وصف المنتج',
                    onTap: () {
                      setState(() {
                        os2 = true;
                        os = false;
                        os3 = false;
                      });
                    }
                ),
                Visibility(
                  visible: os2 ? true : false,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(16),
                        vertical: SizeConfig.scaleHeight(20)),
                    width: SizeConfig.scaleWidth(344),
                    height: SizeConfig.scaleHeight(150),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(SizeConfig.scaleHeight(12)),
                        border: Border.all(color: kPrimaryColor, width: 1)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.scaleHeight(11),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'مزايا اضافية',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: SizeConfig.scaleTextFont(16),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        os2 = false;
                                      });
                                    },
                                    child: Icon(Icons.close)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: SizeConfig.scaleTextFont(14)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //three
                DropDownButton(
                    title: 'وصف المنتج',
                    onTap: () {
                      setState(() {
                        os3 = true;
                        os2 = false;
                        os = false;
                      });
                    }
                ),
                Visibility(
                  visible: os3 ? true : false,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(16),
                        vertical: SizeConfig.scaleHeight(20)),
                    width: SizeConfig.scaleWidth(344),
                    height: SizeConfig.scaleHeight(150),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(SizeConfig.scaleHeight(12)),
                        border: Border.all(color: kPrimaryColor, width: 1)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.scaleHeight(11),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'ملاحظات البائع',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: SizeConfig.scaleTextFont(16),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        os3 = false;
                                      });
                                    },
                                    child: Icon(Icons.close)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.scaleWidth(15)),
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: SizeConfig.scaleTextFont(14)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin:  EdgeInsets.symmetric(
                        vertical:SizeConfig.scaleHeight(20),
                        horizontal: SizeConfig.scaleWidth(16)),
                    child: Title( title: 'سيارات قد تعجبك',)),
                // Container(
                //   height: SizeConfig.scaleHeight(285),
                //   width: double.infinity,
                //   child: ListView.builder(
                //       itemCount: 5,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (BuildContext context, int index) {
                //         return Container(
                //             margin: EdgeInsets.only(
                //                 right:SizeConfig.scaleWidth(16) ),
                //             child: ProductWidget());
                //       }),
                // ),
                SizedBox(
                  height: SizeConfig.scaleHeight(20),
                )
              ],
            ),
          ),
        ) : Scaffold(body: Center(child: CircularProgressIndicator(),));
      },
    );
  }
}

class DropDownButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  const DropDownButton({ this.title, this.onTap});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:
            EdgeInsets.symmetric(vertical: SizeConfig.scaleHeight(15)),
        height: SizeConfig.scaleHeight(36),
        width: SizeConfig.scaleWidth(343),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.scaleWidth(
                14,
              ),
              vertical: SizeConfig.scaleHeight(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$title',
                style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(18),
                    color: Colors.white,
                    fontFamily: 'Cairo'),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {

  String title;
  String price;


  TitleAndPrice({required this.title ,required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: SizeConfig.scaleTextFont(20),
            ),
          ),
          Text(
            "$price ريال",
            style: TextStyle(
              color: Color(0XFFF45F5B),
              fontFamily: 'Cairo',
              fontSize: SizeConfig.scaleTextFont(20),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageWithStack extends StatelessWidget {
  const ImageWithStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(259),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          SizeConfig.scaleHeight(28),
        ),
        image: DecorationImage(
          image: AssetImage('images/carr.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.scaleHeight(28),
              ),
              color: Colors.black26,
            ),
          ),
          Positioned(
            left: SizeConfig.scaleWidth(17),
            top: SizeConfig.scaleHeight(22),
            bottom: SizeConfig.scaleHeight(22),
            child: Container(
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.scaleHeight(2)),
                    height: SizeConfig.scaleHeight(165),
                    width: SizeConfig.scaleWidth(64),
                    // color: Colors.greenAccent,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(
                              bottom: SizeConfig.scaleHeight(5),
                            ),
                            height: SizeConfig.scaleHeight(41),
                            width: SizeConfig.scaleWidth(63),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.scaleHeight(6)),
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/carr.jpg'),
                                    fit: BoxFit.cover)),
                          );
                        }),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: SizeConfig.scaleHeight(12.5),
              left: SizeConfig.scaleWidth(140),
              right: SizeConfig.scaleWidth(140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        print('fdf');
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                  GestureDetector(
                      onTap: () {
                        print('fdf');
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                  GestureDetector(
                      onTap: () {
                        print('fdf');
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                ],
              ))
        ],
      ),
    );
  }
}

class DetailsLine extends StatelessWidget {
  final IconData? icon;
  final String? firstTitle;
  final String? lastTitle;

  const DetailsLine({this.icon, this.firstTitle, this.lastTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.scaleHeight(2)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: SizeConfig.scaleWidth(14)),
            width: SizeConfig.scaleWidth(135),
            child: Row(
              children: [
                Expanded(
                  child: Icon(
                    icon,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.scaleWidth(3),
                ),
                Expanded(
                  child: Text(
                    '$firstTitle',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: kPrimaryColor,
              width: SizeConfig.scaleWidth(147),
              height: 2,
              child: Divider(
                color: kPrimaryColor,
                thickness: 1.0,
                indent: 1,
                height: SizeConfig.scaleHeight(20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: SizeConfig.scaleWidth(58),
              child: Text('$lastTitle',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: SizeConfig.scaleTextFont(18))),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonW extends StatelessWidget {
  final Widget? title;
  final Color? btnColor;
  final VoidCallback? onTap;

  const ButtonW({this.title, this.btnColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onTap,
      child: title,
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        minimumSize: Size(
          SizeConfig.scaleWidth(165),
          SizeConfig.scaleHeight(36),
        ),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConfig.scaleHeight(12),
          ),
        ),
      ),
    );
  }
}
class Title extends StatelessWidget {
  final String ? title;

  const Title({this.title}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: Text(
        '$title',
        style: TextStyle(
            fontSize: SizeConfig.scaleTextFont(20),
            fontFamily: 'Cairo'),
      ),
    );
  }
}
