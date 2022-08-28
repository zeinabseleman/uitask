import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';

class InfoContainer extends StatelessWidget {
  final String? title;
  final String? info;
  final bool showDiv;
  final Widget? widget;

  const InfoContainer({super.key, this.title,this.showDiv=true,this.info,this.widget});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget('$title'),
                (info==null)?
                (widget==null)? Icon(Icons.arrow_forward_ios,color: AppColors.primary,size: 15,):widget!
                    :TextWidget('$info',)

              ],
            ),
          ),
          (showDiv==true)
              ?Divider(height: 5,color: AppColors.textFieldColor,):SizedBox()
        ],
      ),
    );
  }
}
