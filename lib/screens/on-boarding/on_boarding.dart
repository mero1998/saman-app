import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/screens/on-boarding/slider.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  List<Widget> _pages = [
    SliderPage(
        title: "شكراً لاختيارك منصة سامان ",
        description:
            "المنصة العمانية الأولى التي تربط الزبون بمعارض بيع السيارات بمختلف المناطق والولايات المتحدة سامان خيارك الأمثل للتجارة الإلكترونية الآمنة، مع سامان تستطيع عرض وبيع كافة أنواع السيارات المعروضة في معرضك بأمان وسهولة في الشراء",
        image: "images/car1.png"),
    SliderPage(
        title: "شكراً لاختيارك منصة سامان ",
        description:
            "المنصة العمانية الأولى التي تربط الزبون بمعارض بيع السيارات بمختلف المناطق والولايات المتحدة سامان خيارك الأمثل للتجارة الإلكترونية الآمنة، مع سامان تستطيع عرض وبيع كافة أنواع السيارات المعروضة في معرضك بأمان وسهولة في الشراء",
        image: "images/car2.png"),
    SliderPage(
        title: "شكراً لاختيارك منصة سامان ",
        description:
            "المنصة العمانية الأولى التي تربط الزبون بمعارض بيع السيارات بمختلف المناطق والولايات المتحدة سامان خيارك الأمثل للتجارة الإلكترونية الآمنة، مع سامان تستطيع عرض وبيع كافة أنواع السيارات المعروضة في معرضك بأمان وسهولة في الشراء",
        image: "images/car3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //TODO move to onBoarding indicator
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? kPrimaryColor
                                : kPrimaryColor.withOpacity(0.5)));
                  })),

              InkWell(
                onTap: () {
                  _currentPage == (_pages.length - 1)
                      ? Navigator.pushReplacementNamed(context, '/register_screen')
                      : _controller.nextPage(
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "البدء",
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.white,
                            fontSize: SizeConfig.scaleTextFont(25),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );

//           Visibility(
//             visible: _currentPage != 2,
//             child: Positioned(
//               right: SizeConfig.scaleWidth(15),
//               top: SizeConfig.scaleHeight(40),
//               child: TextButton(
//                 child: Text(
//                   'SKIP',
//                   style: TextStyle(
//                       fontSize: SizeConfig.scaleTextFont(18),
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black),
//                 ),
//                 onPressed: () {
//                   _controller.jumpToPage(2);
//                 },
//               ),
//             ),
//           ),
//           Visibility(
//             visible: _currentPage != 0,
//             child: Positioned(
//                 bottom: 20,
//                 left: 20,
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.arrow_back_ios,
//                   ),
//                   onPressed: () {
//                     _controller.previousPage(
//                         duration: Duration(milliseconds: 500),
//                         curve: Curves.easeIn);
//                   },
//                   color: Colors.black,
//                 )),
//           ),
//           Visibility(
//             visible: _currentPage != 2,
//             child: Positioned(
//                 bottom: 20,
//                 right: 20,
//                 child: IconButton(
//                   icon: Icon(Icons.arrow_forward_ios),
//                   onPressed: () {
//                     _controller.nextPage(
//                         duration: Duration(milliseconds: 500),
//                         curve: Curves.easeOut);
//                   },
//                   color: Colors.black,
//                 )),
//           ),
//
//           Positioned(
//               bottom: 80,
//               right: 10,
//               left: 10,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OnBoardingIndicator(indicatorColor: _currentPage == 0,),
//                   OnBoardingIndicator(indicatorColor: _currentPage == 1),
//                   OnBoardingIndicator(indicatorColor: _currentPage == 2),
//                 ],
//               )),
//           Positioned(
//               bottom: 120,
//               right: 10,
//               left: 10,
//               child: Visibility(
//                 visible: _currentPage == 2,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: 120),
//                   height: 45,
//                   child: ElevatedButton(
// style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
//     borderRadius: new BorderRadius.circular(8.0),
//     ),),
//                     child: Text('Login',style:TextStyle(fontSize: 20)),
//                     onPressed: (){
//                     Navigator.pushNamed(context, '/login_page');
//
//                   },),
//                 ),
//               )),
    // Positioned(
    //   top: 30,
    //     left: 30,
    //     child: Text('${_currentPage +1}'),)
  }
}
