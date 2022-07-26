import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/routes/app_pages.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FrZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=800&q=60",
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.softLight,
            color: GlobalVariable.whiteColor,
          ),
          PageView.builder(
            onPageChanged: (int value) {
              controller.onPageChanged(value);
            },
            controller: controller.pageController,
            physics: BouncingScrollPhysics(),
            itemCount: controller.onBoardingPage.length,
            itemBuilder: (context, index) {
              var data = controller.onBoardingPage[index];

              return Column(
                children: [
                  SizedBox(
                    height: 174,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    height: 259,
                    width: 388,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(
                          "${data["image"]}",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "${data["title"]}",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: GlobalVariable.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 64,
                    ),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: GlobalVariable.darkGreyColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 626,
            child: GetBuilder<OnboardingController>(
              init: OnboardingController(),
              builder: (onBoardC) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    1,
                    (indexD) {
                      return buildDots(indexD);
                    },
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 736,
            child: Obx(() {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: controller.currentIndex.value == 2
                    ? ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(356, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: GlobalVariable.primaryColor,
                        ),
                        child: Text(
                          "Let's Get Started",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.skipFunction();
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: GlobalVariable.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 78,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(168, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              primary: GlobalVariable.primaryColor,
                            ),
                            onPressed: () {
                              controller.nextFunction();
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            }),
          ),
        ],
      ),
    );
  }

  DotsIndicator buildDots(int index) {
    return DotsIndicator(
      dotsCount: controller.onBoardingPage.length,
      position: controller.currentIndex.value.toDouble(),
      decorator: DotsDecorator(
        activeColor: GlobalVariable.primaryColor,
        color: GlobalVariable.secondaryPurple,
        size: Size(12, 12),
        activeSize: Size(12, 12),
      ),
    );
  }
}
