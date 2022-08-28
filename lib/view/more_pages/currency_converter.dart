import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_btn.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/info_container.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWidget(
          title: 'Currency Converter',
          showIcon: true,
        ) ,
        backgroundColor:Colors.white,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget('Select and calculate currency ',
                  align: TextAlign.left,
                  color: Colors.black45,),
                SizedBox(height: 15,),
                TextWidget('Select Currency Type',color: Colors.black45,),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  prefixIcon:Image.asset('assets/images/liberia.png'),
                  hintText: 'USD',
                  suffixIcon: IconButton(onPressed: (){}, 
                      icon: Icon(Icons.keyboard_arrow_down_outlined)),


                ),
                TextWidget('Amount',color: Colors.black45,),
                CustomTextFormField(
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  hintText: '\$Amount',
                ),

                TextWidget('Select converted currency Type',color: Colors.black45,),
                CustomTextFormField(
                  enabled: false,
                  fillColor:AppColors.textFieldColor.withOpacity(0.4) ,
                  prefixIcon:Image.asset('assets/images/freanch.png'),
                  hintText: 'NGN',
                  suffixIcon: IconButton(onPressed: (){},
                      icon: Icon(Icons.keyboard_arrow_down_outlined)),


                ),


                SizedBox(height: 50,),
                CustomButton(
                  title: 'Convert', onPressed: () {  },
                  backGroundColor: AppColors.primary,
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
