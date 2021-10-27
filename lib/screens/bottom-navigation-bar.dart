import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/screens/my-cart.dart';
import 'package:saman_project/screens/my-info.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

import 'home-screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
 late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavyBar(
        backgroundColor: Color(0XFFF0F0F0),
iconSize: SizeConfig.scaleHeight(28),
        containerHeight: SizeConfig.scaleHeight(60),
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
              title: Text('الرئيسية',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)), ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,


          ),

          BottomNavyBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              title: Text('سلتي',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)),),
            activeColor: Colors.red,
              textAlign: TextAlign.center,
            inactiveColor: kPrimaryColor,


          ),
          BottomNavyBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('حسابي',style: TextStyle(fontFamily: 'Cairo',fontSize: SizeConfig.scaleTextFont(15)),),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
              inactiveColor: kPrimaryColor,
          ),
        ],
      ),
      body: SizedBox.expand(
    child: PageView(
    controller: _pageController,
      onPageChanged: (index) {
        setState(() => _selectedIndex = index);
      },
      children: <Widget>[
        HomeScreen(),
        MyCart(),
        MyInformation(),
      ],
    ),
    ),

    );
  }
}
