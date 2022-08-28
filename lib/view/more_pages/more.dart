import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/more_container.dart';
import 'package:get/get.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWidget(
          title: 'More',
        ) ,
        backgroundColor:Colors.grey[100] ,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 25),
          child: SingleChildScrollView(
            child: Column(

              children: [
                MoreContainer(iconData: Icons.person,text: 'Profile',
                onTap: (){
                  Get.toNamed('/profile');
                },
                ),
                MoreContainer(iconData: Icons.lock_outline ,text: 'Change Password',
                onTap: (){
                  Get.toNamed('/change/password');
                },
                ),
                MoreContainer(iconData: Icons.person,text: 'Currency Converter',
                  onTap: (){
                    Get.toNamed('/currency/converter');
                  },

                ),
                MoreContainer(iconData: Icons.contacts_outlined ,text: 'Contact Us',
                  onTap: (){
                    Get.toNamed('/contact/us');
                  },),
                MoreContainer(iconData: Icons.person,text: 'About Us',),
                MoreContainer(iconData: Icons.question_mark_outlined ,text: 'Frequently Asked Questions',
                  onTap: (){
                    Get.toNamed('/freq/ques');
                  },
                ),
                MoreContainer(iconData: Icons.person,text: 'Rate the App',),
                MoreContainer(iconData: Icons.logout_rounded,text: 'Logout',showDiv: false,),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
