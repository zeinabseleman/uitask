import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/info_container.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWidget(
          title: 'Contact Us',
          showIcon: true,
        ) ,
        backgroundColor:Colors.white,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget('you can reach us via phone numbers,social media ,etc',
                  align: TextAlign.left,
                  color: Colors.black45,),
                SizedBox(height: 15,),
                TextWidget('Phone Number',color: Colors.black45,),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  suffixIcon:
                    Container(
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          bottomRight:Radius.circular(5.0),
                        ),
                        color: AppColors.textFieldColor,
                      ),

                      child:Center(child: TextWidget('Copy',)),

                    ),
                  hintText: '01002215448',
                ),
                TextWidget('Email Address',color: Colors.black45,),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  suffixIcon:
                  Container(
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        bottomRight:Radius.circular(5.0),
                      ),
                      color: AppColors.textFieldColor,
                    ),

                    child:Center(child: TextWidget('Copy',)),

                  ),
                  hintText: 'zeinab@email',
                ),
                TextWidget('Social Media',color: Colors.black45,),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  prefixIcon:Image.asset('assets/images/twittericon.png'),
                  hintText: 'Twitter Page',

                ),

                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  prefixIcon:Image.asset('assets/images/instagram.png'),
                  hintText: 'Instagram Page',

                ),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  prefixIcon:Image.asset('assets/images/face.png'),
                  hintText: 'Facebook Page',

                ),
                SizedBox(height: 5,),

                Container(
                  padding: EdgeInsetsDirectional.all(15),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.textFieldColor)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/office.png',color: AppColors.textFieldColor,
                          width: 30,height: 30,
                          ),
                          TextWidget('Visit Our Office',fontSize: 15,),


                        ],
                      ),
                      SizedBox(height: 5,),

                      TextWidget('Egypt,Tanta',color: Colors.black87,),
                      SizedBox(height: 10,),
                      TextWidget('quhafa, metwaly elshaarawy street',color: Colors.black45,),

                    ],
                  ),
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}
