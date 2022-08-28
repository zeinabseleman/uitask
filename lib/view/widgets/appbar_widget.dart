import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';
import 'package:get/get.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showIcon;

  const AppBarWidget({super.key, this.title,this.showIcon=false});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.grey[100] ,
      elevation: (showIcon==false)?4.0:0.5,
      centerTitle: true,
      title:TextWidget('$title',fontWeight: FontWeight.bold,fontSize: 15,) ,
        leading: (showIcon==false)?SizedBox():IconButton(onPressed: (){
          Get.back();
        },
            icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 15, )),

    );
  }
}


