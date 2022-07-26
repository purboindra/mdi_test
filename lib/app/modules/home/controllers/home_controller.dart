import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();

  List<Map<String, String>> category = [
    {
      "image": 'butter.png',
      "name": "Buttercake",
    },
    {
      "image": 'chiffon.png',
      "name": "Chiffon",
    },
    {
      "image": 'sponge.png',
      "name": "Sponge",
    },
    {
      "image": 'poundcake.png',
      "name": "Poundcake",
    },
  ];

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
