import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';

class MoreContainer extends StatelessWidget {
   final IconData? iconData;
   final String? text;
   final bool showDiv;
   final Function()? onTap;

  const MoreContainer({super.key, this.iconData, this.text,this.showDiv=true,this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
              child: Row(
                children: [
                    Icon(iconData,color: AppColors.primary,),
                  SizedBox(width: 10,),
                  TextWidget('$text')
                ],
              ),
            ),
            (showDiv==true)
            ?Divider(height: 5,color: AppColors.textFieldColor,):SizedBox()
          ],
        ),
      ),
    );
  }
}
