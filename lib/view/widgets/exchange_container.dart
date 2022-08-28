import 'package:flutter/material.dart';
import 'package:uitask/theme/theme.dart';

class ExchangeContainer extends StatelessWidget {
  const ExchangeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 45,
     //height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primary.withOpacity(0.3),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/liberia.png',width: 20,height: 20,),
          SizedBox(height: 5,),
          Divider(
            height: 5,
            color: AppColors.primary,
          ),
          SizedBox(height: 5,),
          Image.asset('assets/images/freanch.png',width: 20,height: 20)
        ],
      ),
    );
  }
}
