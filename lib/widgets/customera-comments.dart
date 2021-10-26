import 'package:flutter/material.dart';
import 'package:saman_project/models/reviews.dart';
import 'package:saman_project/utils/size-config.dart';

class CustomersComments extends StatelessWidget {

  Reviews reviews;


  CustomersComments({required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: SizeConfig.scaleHeight(12),
        right:  SizeConfig.scaleWidth(14.5),
        left:  SizeConfig.scaleWidth(14.5),
        bottom: SizeConfig.scaleHeight(33),
      ),
      margin: EdgeInsets.only(
          left: SizeConfig.scaleWidth(21),

      ),
      height: SizeConfig.scaleHeight(194),
      width: SizeConfig.scaleWidth(257),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: SizeConfig.scaleHeight(40),
            backgroundImage: NetworkImage(reviews.image),
          ),
          Text(
            reviews.name,
            style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(12),
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold),
          ),
          Text(
            reviews.reviews,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(12),
                fontFamily: 'Cairo'),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
