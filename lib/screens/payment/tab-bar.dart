import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/screens/payment/revision.dart';
import 'package:saman_project/utils/constans.dart';

import 'adress.dart';
import 'choose-pay-method.dart';

class TapBarPage extends StatefulWidget {
  @override
  _TapBarPageState createState() => _TapBarPageState();
}

class _TapBarPageState extends State<TapBarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      print('i am lesen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kSecondaryColor),
        title: Text(
          'الدفع',
          style: TextStyle(color: kPrimaryColor),
        ),
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,),onPressed: (){
          Navigator.pop(context);
        }
        , ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          onTap: (int index) {
            print('dsd');
          },
          indicator: BoxDecoration(color: kSecondaryColor),
          unselectedLabelColor: kSecondaryColor,

          tabs: [
            Tab(

              text: 'العنوان',
            ),
            Tab(

              text: 'المراجعه',
            ),
            Tab(

              text: 'الدفع',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Address(),
          Revision(),
          ChoosePayMethod(),
        ],
      ),
    );
  }
}
