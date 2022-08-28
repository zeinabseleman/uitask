import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask/theme/theme.dart';
import 'package:uitask/view/widgets/custom_text_field.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_listtile.dart';
import '../widgets/transaction_container.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWidget(
          title: 'Transaction History',
        ) ,

        backgroundColor:Colors.grey[100] ,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  hintText: 'Search history',
                  prefixIcon: Icon(Icons.search,),
                  borderColor: AppColors.primary.withOpacity(0.2),
                ),
                SizedBox(
                  height: 30,
                ),

                TextWidget('Today',fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 10,
                ),
                TransContainer(
                  child: CustomListTile(
                    title: 'Sell N5,000.00',
                    coin: '580.00/USD',
                    date: '10/02/2020',
                    cost: '8.62\$',
                    status: 'Success',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                TextWidget('Past Week',fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 10,
                ),
                TransContainer(
                  child:CustomListTile(
                    title: 'Sell N5,000.00',
                    coin: '580.00/USD',
                    date: '10/02/2020',
                    cost: '8.62\$',
                    status: 'Pending',
                  ) ,
                )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
