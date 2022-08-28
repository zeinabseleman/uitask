import 'package:flutter/material.dart';
import 'package:uitask/theme/theme.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../transaction_pages/exchange_details.dart';
import 'exchange_container.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  final String? date;
  final String? status;
  final String? coin;
  final String? cost;
  final String? title;

  const CustomListTile({super.key, this.date, this.status, this.coin,this.cost,this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      
      contentPadding: EdgeInsetsDirectional.only(top: 5,bottom: 5),
      enabled: false,
      dense: false,
      visualDensity: VisualDensity(vertical: 4),
      leading: InkWell(
        onTap: (){
          Get.toNamed('/exchange/details');
        },
        child: Container(
          width: 150,
          child: Row(
            children: [
              ExchangeContainer(),
                SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextWidget('$title',fontSize: 13,),
                    Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          color: AppColors.secondary.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Center(
                        child: TextWidget('$coin',fontSize: 12,color: Colors.white,
                        ),
                      ),

                    ),
                    TextWidget('$date',fontSize: 13,color: AppColors.textFieldColor),
                  ],
                ),

            ],
          ),
        ),
      ),

      trailing: Column(

        children: [
          TextWidget('$cost',fontSize: 13,fontWeight: FontWeight.bold,),
          SizedBox(height: 10,),
          TextWidget('$status',fontSize: 12,
            color: (status=='Pending')?Colors.red:Colors.green,

          ),

        ],
      ),
    );
  }
}
