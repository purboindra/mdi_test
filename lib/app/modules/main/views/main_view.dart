import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.bodyPages[controller.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          onTap: (int index) {
            controller.currentIndex.value = index;
          },
          items: controller.navBarItem,
          selectedItemColor: GlobalVariable.primaryColor,
          unselectedItemColor: GlobalVariable.darkGreyColor,
          selectedLabelStyle: TextStyle(
            color: GlobalVariable.primaryColor,
          ),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedLabelStyle: TextStyle(
            color: GlobalVariable.darkGreyColor,
          ),
        ),
      ),
    );
  }
}
