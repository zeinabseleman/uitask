import 'package:flutter/material.dart';
import 'package:uitask/router.dart';
import 'package:get/get.dart';
import 'package:uitask/view_model/bottomnavbar_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BottomNavBarController(),fenix: true);
    return GetMaterialApp(
        title: 'Exchangely',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (settings) => Routes.getRoutes(settings)
    );
  }
}

