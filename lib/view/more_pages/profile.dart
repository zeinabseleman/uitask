import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/custom_text_field.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_btn.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        title: 'Profile',
        showIcon: true,
      ) ,
      backgroundColor:Colors.grey[100] ,
      body:Padding(
        padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.textFieldColor.withOpacity(0.4),
                  radius: 20,
                  child: Icon(Icons.person,color: AppColors.textFieldColor,),
                ),
                SizedBox(width: 5,),
                TextWidget('Change Photo',color: Colors.black45),

              ],
            ),
            SizedBox(height: 20,),
            TextWidget('Full Name',color: Colors.black45,),
            CustomTextFormField(
              hintText: 'Zeinab Seleman',
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            TextWidget('Email',color: Colors.black45,),
            CustomTextFormField(
              hintText: 'zeinab@email.com',
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            TextWidget('Phone',color: Colors.black45,),
            CustomTextFormField(
              hintText: '0100265456465',
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            TextWidget('BVN',color: Colors.black45,),
            CustomTextFormField(
              hintText: '11223344',
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            SizedBox(height: 20,),
            CustomButton(
              title: 'Save Changes', onPressed: () {  },
              backGroundColor: AppColors.primary,
            )
          ],
        ),
      ) ,
    );
  }
}
