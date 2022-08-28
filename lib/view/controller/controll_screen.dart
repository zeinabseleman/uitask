
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitask/theme/theme.dart';

import '../../view_model/bottomnavbar_controller.dart';
import '../more_pages/more.dart';
import '../transaction_pages/transaction_history.dart';




class ControllScreen extends GetView<BottomNavBarController> {

  BottomNavBarController controller = Get.put(BottomNavBarController());

  final screens = [
    Center(child: Text('Home')),
    Center(child: Text('exchange')),
    TransactionHistory(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       body: Container(
         color: Colors.white,
         child: SingleChildScrollView(
           child: Column(
              children: [
                Obx(()=>
                    Container(
                      width:  MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: IndexedStack(
                        index: controller.selectedIndex.value,
                        children: screens
                      ),
                    ),
                ),

              ],
           ),
         ),
       ),
      backgroundColor: Colors.white,
      bottomNavigationBar:
       Obx(
           () =>  BottomNavigationBar(


            backgroundColor: AppColors.secondary,
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.white,
            iconSize: 21.5,
            showSelectedLabels: true,

            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(color: AppColors.primary
                ),
            unselectedLabelStyle: TextStyle(color:Colors.white
            ),

               currentIndex: controller.selectedIndex.value,
               onTap:(index){
              controller.changeIndex(index);
               },
            items:[

              BottomNavigationBarItem(
                  icon:Image.asset('assets/images/290149_building_estate_home_house_real_icon.png',
                      width: 20,height: 20,
                      color: Colors.white),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon:Image.asset('assets/images/8725865_exchange_icon.png',
                      width: 20,height: 20,
                      color: Colors.white),
                  label: 'Exchange '
              ),
              BottomNavigationBarItem(
                  icon:Image.asset(''
                      'assets/images/7013421_marketing_finance_business_money_payment_icon.png',
                      width: 20,height: 20,
                    color:Colors.white),
                  label: 'Transaction'
              ),
              BottomNavigationBarItem(
                  icon:Image.asset('assets/images/211781_more_icon.png',
                    width: 20,height: 20,
                    color: Colors.white,),
                  label: 'More'
              ),


            ]
      ),
       ),

  ),
   );
  }
}
