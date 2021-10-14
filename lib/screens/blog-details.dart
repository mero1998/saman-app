import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:saman_project/getx/blog_controller_getx.dart';
import 'package:saman_project/models/blog.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/how-to-safe-card.dart';


class BlogDetails extends StatelessWidget {
  Blog blog;


  BlogDetails({required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          blog.title,
          style: TextStyle(
              fontSize: SizeConfig.scaleTextFont(16),
              fontFamily: 'Cairo',
              color: kPrimaryColor
          ),


        ),
        leading: IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.scaleHeight(20),
            color: kPrimaryColor,),onPressed: (){
          Navigator.pop(context);
        },),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
                blog.title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(24),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
               blog.description,
                style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),fontFamily:'Cairo'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.scaleHeight(20),
                bottom: SizeConfig.scaleHeight(27),
              ),
              child: Title(
                title: 'أحدث التدوينات',
              ),
            ),


            //stack
            Container(
              height: SizeConfig.scaleHeight(321),
              child: GetX<BlogControllerGetx>(
                builder: (BlogControllerGetx controller) {
                  return ListView.builder(
                    itemCount: controller.blogs.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Blog blog = controller.blogs[index];
                      return HowToSafeCard(
                        blog: blog,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            )

          ],
        ),
      ),

    );
  }
}
class Title extends StatelessWidget {
  final String? title;

  const Title({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        '$title',
        style: TextStyle(
            fontSize: SizeConfig.scaleTextFont(18), fontFamily: 'Cairo'),
      ),
    );
  }
}
