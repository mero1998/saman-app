import 'package:flutter/material.dart';
import 'package:saman_project/utils/size-config.dart';

class SliderPage extends StatelessWidget {
  final String? title;
  final String? description;
  final String ? image;

  SliderPage({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
//TODO moved to onBoarding content
    return Container(
      color: Colors.white,
      child: Column(
        
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              '$image',
              width: width * 0.6,
            ),
          ),

          Text(
            '$title',

            style: TextStyle(fontSize: SizeConfig.scaleTextFont(25),fontFamily: 'Cairo',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:40),
            child: Text(
              '$description',
              style: TextStyle(
fontFamily: 'Cairo',
                fontWeight: FontWeight.normal,
                fontSize: SizeConfig.scaleHeight(15),

              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(60),
          ),
        ],
      ),
    );
  }
}