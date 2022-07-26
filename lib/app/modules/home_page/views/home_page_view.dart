import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/controllers/login_controller.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/widgets/custom_form_field.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: 136,
              color: GlobalVariable.primaryColor,
            ),
            Positioned(
              left: 22,
              top: 87,
              child: InkWell(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: GlobalVariable.whiteColor,
                ),
              ),
            ),
            Positioned(
              left: 36,
              right: 36,
              top: 93,
              child: CustomFormField(
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                ),
                hintText: 'Find cake or places',
                titleText: "",
                controller: controller.searchController,
                hintStyle: titleTextStyle,
                fillColor: GlobalVariable.whiteColor,
                enabledInputBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: GlobalVariable.primaryColor,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: GlobalVariable.primaryColor,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              left: 43,
              right: 43,
              top: 183,
              child: Container(
                height: Get.height,
                child: SafeArea(
                  top: false,
                  maintainBottomViewPadding: true,
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: controller.images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,
                      mainAxisExtent: 112,
                    ),
                    itemBuilder: (context, index) {
                      return Image.network(
                        controller.images[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
