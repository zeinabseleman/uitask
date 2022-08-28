import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/text_widget.dart';

import '../../theme/theme.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/info_container.dart';

class FreqAskedQuestion extends StatelessWidget {
  const FreqAskedQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWidget(
          title: 'Frequently Asked Questions',
          showIcon: true,
        ) ,
        backgroundColor:Colors.white,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/faq.png',width: 30,height: 30,),
                    SizedBox(width: 10,),
                    TextWidget('hi,how can we help you ?')
                  ],
                ),
                SizedBox(height: 15,),
                CustomTextFormField(
                  hintText: 'Search FAQ',
                  prefixIcon: Icon(Icons.search,),
                  borderColor: AppColors.textFieldColor,

                ),
                SizedBox(height: 15,),
                InfoContainer(
                  title: 'How to Change Your Password',
                ),
                InfoContainer(
                  title: 'How to reset Your Password',

                ),
                InfoContainer(
                  title: 'How to Change Your Password',
                ),
                InfoContainer(
                  title: 'How to reset Your Password',

                ),
                InfoContainer(
                  title: 'How to reset Your Password',

                ),
                InfoContainer(
                  title: 'How to Change Your Password',
                ),
                InfoContainer(
                  showDiv: false,
                  title: 'How to reset Your Password',

                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
