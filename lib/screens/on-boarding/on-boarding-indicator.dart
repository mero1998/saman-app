import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';

class OnBoardingIndicator extends StatelessWidget {

  final bool indicatorColor ;
  OnBoardingIndicator({
    this.indicatorColor = true
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 10,

      decoration: BoxDecoration(
        color: indicatorColor ? kPrimaryColor : Colors.transparent,
        shape:  BoxShape.circle,
        border: !indicatorColor ? Border.all(color: Colors.black,width: 1) : null
      ),
    );
  }
}
