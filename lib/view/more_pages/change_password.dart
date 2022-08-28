import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/custom_text_field.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_btn.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        title: 'Change Password',
        showIcon: true,
      ) ,
      backgroundColor:Colors.grey[100] ,
      body:Padding(
        padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget('Current Password',color: Colors.black45,),
            CustomTextFormField(
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            TextWidget('New Password',color: Colors.black45,),
            CustomTextFormField(
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            TextWidget('Confirm New Password',color: Colors.black45,),
            CustomTextFormField(
              fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
              suffixIcon: Icon(Icons.visibility_off,color: AppColors.textFieldColor,

              ),
            ),
            SizedBox(height: 40,),
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
