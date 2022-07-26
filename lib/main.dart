import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/api_test/controllers/api_test_controller.dart';
import 'package:modern_digital_indonesia_test/app/modules/api_test/views/api_test_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ApiTestController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      // home: ApiTestView(), //Uncomment this and then comment initial route
      //to see test fetch api
      getPages: AppPages.routes,
    );
  }
}
