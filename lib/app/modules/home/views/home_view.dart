import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/controllers/login_controller.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/widgets/custom_form_field.dart';
import 'package:modern_digital_indonesia_test/app/routes/app_pages.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(LoginController());
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 156,
                color: GlobalVariable.primaryColor,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                margin: EdgeInsets.only(top: 48),
                child: CustomFormField(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                  ),
                  onTap: () {
                    Get.toNamed(Routes.HOME_PAGE);
                  },
                  hintText: 'Find cake or places',
                  titleText: "",
                  fillColor: GlobalVariable.whiteColor,
                  controller: controller.searchController,
                  hintStyle: titleTextStyle,
                  enabledInputBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: GlobalVariable.whiteColor,
                      width: 1,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: GlobalVariable.whiteColor,
                      width: 1,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 42,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26, right: 21),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.HOME_PAGE);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 100,
                              width: 95,
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      color: GlobalVariable.pinkColor,
                                      child: Center(
                                        child: Image.asset(
                                          "assets/${controller.category[index]["image"]}",
                                          width: 56,
                                          height: 56,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "${controller.category[index]["name"]}",
                                    style: titleTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 36,
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.HOME_PAGE);
                      },
                      child: Row(
                        children: [
                          Text(
                            "Lorem",
                            style: titleTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: GlobalVariable.darkGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width,
                          height: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1486427944299-d1955d23e34d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FrZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: titleTextStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width,
                          height: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGNha2V8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: titleTextStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
