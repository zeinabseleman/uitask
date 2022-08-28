import 'package:flutter/material.dart';

import '../../theme/theme.dart';


class TransContainer extends StatelessWidget {
final Widget child;

  const TransContainer({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10,bottom: 10,start: 10,end: 10),
      height: 300,
      width: double.infinity,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: AppColors.textFieldColor,
                blurRadius: 1,
                spreadRadius: 1.2,
                offset: Offset(0,3)
            )
          ]
      ),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 10,
            color: AppColors.textFieldColor,
          );
        },
        itemBuilder: (BuildContext context, int index) => child,
        itemCount: 5,

      ),
    );
  }
}
