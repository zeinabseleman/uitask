



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.backGroundColor ,
    required this.onPressed,
    this.textColor = Colors.black,
    this.isOpen = true,
    this.width,
    this.height,
    this.textSize=14,
    this.fontWeight=FontWeight.w700,
    this.radius=5.0

  }) : super(key: key);
  final String title;
  final Color? backGroundColor;
  final Color textColor;
  final double textSize;
  final VoidCallback? onPressed;
  final bool isOpen;
  final double? width;
  final double? height;
  final FontWeight fontWeight;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: width,
        height: height,
        child: TextButton(
          style:  ElevatedButton.styleFrom(
              primary: backGroundColor,
              shape:   RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              side: BorderSide(
                width: 1,
                color: Colors.transparent
              )
          ),
          onPressed: onPressed,
          child:
          Center(
            child: TextWidget(
              title,
              fontSize: textSize,
              color: textColor,
              fontWeight: fontWeight
            ),
          ),
        ),
      );
  }

}
