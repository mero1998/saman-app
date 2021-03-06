import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:saman_project/contorller/user_api_controller.dart';
import 'package:saman_project/getx/user_getx_controller.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return GetX<UserGetxController>(
          builder: (UserGetxController controller) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    height: SizeConfig.scaleHeight(739),
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(16)
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(SizeConfig.scaleHeight(37)),
                          bottomLeft: Radius.circular(SizeConfig.scaleHeight(37))),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 30.0,
                          spreadRadius: -10.0,
                          offset: Offset(-1, -1), // shadow direction: bottom right
                        )
                      ],

                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom:  SizeConfig.scaleHeight(17),
                          left:  SizeConfig.scaleWidth(16),
                          right:  SizeConfig.scaleWidth(16),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // SizedBox(
                              //   height: MediaQuery.of(context).size.height * .47,
                              // ),
                              ListTileRefactor(
                                title:'?????????????? ??????????' ,
                                icon: Icons.person_outline,
                                onTap: (){
                                  Navigator.pushNamed(context, '/account-info');
                                },
                              ),
                              ListTileRefactor(
                                title:'?????????? ???????? ????????????' ,
                                icon: Icons.lock_open,
                                onTap: (){
                                  Navigator.pushNamed(context, '/change-password');
                                },
                              ),
                              ListTileRefactor(
                                title:  '????????????',
                                icon:Icons.shopping_bag_outlined,
                                onTap: (){
                                  Navigator.pushNamed(context, '/my-orders');
                                },
                              ),
                              ListTileRefactor(
                                title:  '???????????? ??????????',
                                icon:Icons.credit_card_outlined,
                                onTap: (){
                                  Navigator.pushNamed(context, '/tab-bar-screen');
                                },
                              ),
                              ListTileRefactor(
                                title:  '??????????????????',
                                icon:Icons.settings,
                                onTap: (){
                                  Navigator.pushNamed(context, '/tab-bar-screen');
                                },
                              ),
                              SizedBox(
                                height: SizeConfig.scaleHeight(13),
                              ),


                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.scaleWidth(80),
                                ),
                                width: double.infinity,
                                height: SizeConfig.scaleHeight(58),
                                child: ElevatedButton(
                                  onPressed: () {
                                    UserApiController().logout(context);
                                  },
                                  child: Text(
                                    '?????????? ????????????',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: SizeConfig.scaleTextFont(20)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(29),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    width: double.infinity,
                    height: SizeConfig.scaleHeight(344),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(SizeConfig.scaleHeight(37)),
                          bottomLeft: Radius.circular(SizeConfig.scaleHeight(37))),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 0), // shadow direction: bottom right
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage('images/gh.jpg'),
                          fit: BoxFit.cover
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                  Positioned(
                    top: SizeConfig.scaleHeight(290),
                    left: SizeConfig.scaleWidth(22),
                    child: Stack(
                        children:[
                          CachedNetworkImage(
                            imageUrl: UserGetxController.to.user.first!.image ?? "",
                            imageBuilder: (context, imageProvider) => Container(
                              width: SizeConfig.scaleWidth(95),
                              height: SizeConfig.scaleHeight(95),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            placeholder: (context, url) => CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.person, size: SizeConfig.scaleWidth(95), color: Colors.white,)),
                          ),
                          Positioned(
                            bottom: SizeConfig.scaleHeight(15),
                            right: SizeConfig.scaleWidth(1),
                            child: CircleAvatar(
                              backgroundColor: Colors.green,radius: SizeConfig.scaleHeight(8),
                            ),
                          )
                        ]
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.scaleHeight(316),
                    left: SizeConfig.scaleWidth(121),
                    child: Text(controller.user.first!.firstName + controller.user.first!.lastName,
                        style: TextStyle(
                            fontSize: SizeConfig.scaleTextFont(20),
                            color: Colors.white)),
                  )

                ],
              ),
            );
          },
        );
  }
}

class ListTileRefactor extends StatelessWidget {

  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;

  const ListTileRefactor({this.title, this.icon, this.onTap}) ;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.scaleHeight(37.5),
      child: ListTile(
        minLeadingWidth: SizeConfig.scaleWidth(19),
        onTap: onTap,
        leading: Icon(
          icon,
          color: kPrimaryColor,
          size: SizeConfig.scaleHeight(24),
        ),
        title: Text(
          '$title',
          style:
          TextStyle(color: Colors.black, fontFamily: 'Bahij',fontSize: SizeConfig.scaleTextFont(20),),
        ),
      ),
    );
  }
}
