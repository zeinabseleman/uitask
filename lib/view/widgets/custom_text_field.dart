import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final VoidCallback? onEditingComplete;
  final int maxLine;
  final int minLine;
  final bool enabled;
  final VoidCallback? onTap;
  final FocusNode? searchFocusNode;
  final double? width;
  final double? height;
  final double startPadding;
  final double? topPadding;
  final Color borderColor;
  final Color fillColor;
  const CustomTextFormField({
    Key? key,
    this.borderColor=Colors.transparent,
    this.fillColor=Colors.white,
    this.hintText,
    this.onEditingComplete,
    this.searchFocusNode,
    this.onTap,
    this.maxLine = 5,
    this.minLine = 1,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmit,
    this.enabled = true,
    this.width,
    this.height,
    this.startPadding=0.0,
    this.topPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 5,bottom: 10),
      height: 40,
      child: TextFormField(
        onFieldSubmitted:onSubmit,onEditingComplete:onEditingComplete ,
        onTap: onTap,
        focusNode: searchFocusNode,
        enabled:enabled,
        maxLines: maxLine,
        minLines: minLine,
        showCursor: false,
        obscureText: obscureText,
        keyboardType: keyboardType,
        autocorrect: false,
        onChanged:onChanged,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: fillColor,
          hintText:hintText,
          hintStyle:
          TextStyle(color: Colors.black45,
              fontSize: 13,fontWeight: FontWeight.w300),
          prefixIcon:prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconConstraints: BoxConstraints(
            maxHeight: 30,
            maxWidth: 35,
            minHeight: 30,
            minWidth: 35
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius. circular(5.0),


          ),
        // contentPadding: EdgeInsetsDirectional.only(top: 11.h,bottom: 9.h,end:startPadding),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius. circular(5.0),
            borderSide:
            BorderSide(color: borderColor ),

          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius. circular(5.0),
            borderSide:  BorderSide(color: Colors.transparent),

          ),
          focusedErrorBorder: InputBorder.none,
          errorBorder: InputBorder.none,

        ),
      ),
    );
  }
}


