
import 'package:get/get.dart';

class BottomNavBarController  extends GetxController{

  final selectedIndex =2.obs;

  void changeIndex(int index){
    selectedIndex.value=index;
  }

}