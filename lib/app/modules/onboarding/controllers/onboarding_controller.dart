import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt currentIndex = 0.obs;

  PageController? pageController;

  List<Map<String, String>> onBoardingPage = [
    {
      "image":
          "https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
      "title": "First Page",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1486427944299-d1955d23e34d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FrZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60",
      "title": "Second Page",
    },
    {
      "image":
          'https://images.unsplash.com/photo-1607478900766-efe13248b125?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FrZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
      "title": "Third Page",
    },
  ];

  void onPageChanged(int value) {
    currentIndex.value = value;
    update();
  }

  void skipFunction() {
    pageController!.jumpToPage(2);
  }

  void nextFunction() {
    pageController!
        .nextPage(duration: Duration(microseconds: 200), curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController!.dispose();
    super.onClose();
  }
}
