import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/home/views/home_view.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<Widget> bodyPages = [
    HomeView(),
    Center(
      child: Text("Activities"),
    ),
    Center(
      child: Text("Messages"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  List<BottomNavigationBarItem> navBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.menu_book_sharp,
      ),
      label: "Activities",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message_rounded),
      label: "Messages",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: "Profile",
    ),
  ];
}
