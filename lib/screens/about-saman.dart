import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/getx/blog_controller_getx.dart';
import 'package:saman_project/models/blog.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/customera-comments.dart';
import 'package:saman_project/widgets/how-to-safe-card.dart';

class AboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('عن الشركة',
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageContainer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),

              child: Text(
                'RENTAL REVOLUTION',
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(18),
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
                'متجر سامان',
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
                  'متجر سامان '
              'المنصة العمانية الأولى التي تربط الزبون بمعارض بيع السيارات بمختلف المناطق والولايات'
                  'سامان خيارك الأمثل للتجارة الإلكترونية الآمنة، مع سامان تستطيع عرض وبيع كافة أنواع السيارات المعروضة في معرضك بأمان وسهولة في الشراء'
                                'في متجر سامان نقوم بعرض خدماتك ومنتجاتك بطريقة احترافية، وبخطة تسويقية متميزة لترويج وعرض منتجاتكم على المتجر من خلال حساب خاص لكل مستأجر يستطيع من خلاله التحكم بمنتجاته ومتابعة عمليات البيع' ,
                style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),fontFamily:'Cairo'),
                ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
                '\nأهداف المتجر : ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(18),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
                ' • توفير منصة واحدة تربط الزبون بمعارض بيع وشراء السيارات . '
                ' \n• تقديم منتجات ذات جودة عالية مع سعر منافس حيث يساعد على المنافسة بين التجار بتقديم عروضهم وخصوماتهم .'
                ' \n• طلب المنتج المستهدف من قبل العميل وتوصيله إليه من خلال الحجز والدفع المباشر للسيارة .'
                ' \n• توفير الوقت الذي يحتاجه العميل في التنقل بين معارض بيع السيارات .'
                ' \n• توفير جميع المنتجات بمكان واحد بمختلف المواصفات وعروض الأسعار مما يتيح خيار المفاضلة . '
                ' \n• مساعدةالتجار في تسويق منتجاتهم والوصول إلى أكبر عدد من العملاء داخل السلطنة لزيادة حجم مبيعاتهم . '
                ' \n• تحقيق أعلى معدلات ومؤشرات ربحية ممكنة مقارنة بنفس النوع من المتاجر الافتراضية أو الواقعية بالسوق المحلي'
                ' \n• التسويق بشكل احترافي لمعارض السيارات من مختلف الولايات.',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(16),
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(32),
            ),
            ImageContainer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),

              child: Text(
                'OUR MISSION',
              style: TextStyle(
                fontSize: SizeConfig.scaleTextFont(18),
                fontFamily: 'Cairo',
              ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
              child: Text(
                'A note from the founders ',
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
                'Driven by a belief that fashion should be enjoyed not consumed, we’re on a mission to bring you wardrobe freedom. Freedom from having to purchase the more sensible option and freedom from being weighed down by your ghosts of style’s past.'
                '\n'
                    '\n'
                    'We see a future where women invest in a capsule wardrobe of high quality staple pieces. Leaving them free to rent that bold new style they couldn’t commit to purchase or that OTT glitter dress that’ll only be worn once.'
                  '\n'
                      '\n'
                  'To that end, we’ve curated the best pieces from the coolest closets across our city for you to simply enjoy and return.'
            '\n'
                  '\n'
                  'So join us in this rental revolution, we bet renting looks great on you.',




                style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),fontFamily:'Cairo'),
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(32),
            ),
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.scaleHeight(20),
                bottom: SizeConfig.scaleHeight(27),
              ),
              child: Title(
                title: 'تقيمات عملائنا',
              ),
            ), //customer Comment
            // Container(
            //   margin: EdgeInsets.only(right: SizeConfig.scaleWidth(16)),
            //   height: SizeConfig.scaleHeight(194),
            //   width: double.infinity,
            //   child: ListView.builder(
            //       clipBehavior: Clip.none,
            //       itemCount: 5,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (BuildContext context, int index) {
            //         return CustomersComments();
            //       }),
            // ),
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.scaleHeight(20),
                bottom: SizeConfig.scaleHeight(27),
              ),
              child: Title(
                title: 'أحدث التدوينات',
              ),
            ), //stack
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
                        return HowToSafeCard(blog: blog,);

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

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: SizeConfig.scaleHeight(15),
      ),
      width: double.infinity,
      height: SizeConfig.scaleHeight(156),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/carr.jpg'),
          fit: BoxFit.cover,
        )
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
