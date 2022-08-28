import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_btn.dart';
import '../widgets/info_container.dart';

class ExchangeDetails extends StatelessWidget {
  const ExchangeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        title: 'Exchange Details',
        showIcon: true,
      ) ,
      backgroundColor:Colors.grey[100] ,
      body:Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 20,bottom: 5,start: 20,end: 20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(7)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget('Sell N5,000.00',color: Colors.white,fontWeight: FontWeight.bold,),
                SizedBox(height: 5,),
                TextWidget('Expected rate your got',
                  color: Colors.white,),
                SizedBox(height: 5,),
                CustomButton(
                  width: 80,
                 height: 25,
                  radius: 20,
                  textSize: 10,
                  title: '\$8.62',textColor: Colors.white,
                  onPressed: () {  },
                  backGroundColor: AppColors.primary,
                )

              ],
            ),
          ),
          Expanded(child:
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10,),
                topLeft: Radius.circular(10,),

              )
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 20,start: 20,end: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InfoContainer(
                      title: 'Date',
                      info: 'oct 29th,2020 @5:40am',

                    ),
                    InfoContainer(
                      title: 'Purpose of Payment',
                      info: 'RFX123',

                    ),
                    InfoContainer(
                      title: 'Rate',
                      info: 'N590/USD',

                    ),
                    InfoContainer(
                      title: 'Payment Type',
                      info: 'Online Transfer',

                    ),
                    InfoContainer(
                      title: 'Exchange',
                      widget: Row(
                        children: [
                          Image.asset('assets/images/liberia.png',width: 20,height: 20,),
                          SizedBox(width: 5,),
                          Container(
                           width: 20,
                            height: 1,
                           color:AppColors.primary
                          ),
                          SizedBox(width: 5,),
                          Image.asset('assets/images/freanch.png',width: 20,height: 20,),

                        ],
                      ),
                    ),
                    InfoContainer(
                      title: 'Payment Type',
                      info: 'Online Transfer',

                    ),
                    InfoContainer(
                      showDiv: false,
                      title: 'Status',
                     widget:CustomButton(onPressed: () {  },
                       title: 'Success',
                       width: 90,
                       height: 25,
                       radius: 20,
                       textSize: 10,
                       fontWeight: FontWeight.w500,
                       textColor: Colors.white,
                       backGroundColor: Colors.green,

                     ) ,

                    ),


                  ],
                ),
              ),
            ),
          )
          )


        ],
      ) ,
    );
  }
}
