import 'package:flutter/material.dart';
import 'package:saman_project/utils/size-config.dart';

class OnBoardingContent extends StatelessWidget {

  OnBoardingContent( { this.myColor});

  final Color? myColor;
  @override
  Widget build(BuildContext context) {
    return Container(

      color: myColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/onBoarding.jpg',
            width: double.infinity,
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(150),
          ),
          Text(
            'this is title',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20,),
          Text(
            'this is title hey hello iam boading whats hwo are you text big far ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 90,),

        ],
      ),
    );
  }
}
