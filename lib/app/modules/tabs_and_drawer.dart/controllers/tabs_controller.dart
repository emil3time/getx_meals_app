import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../category/views/category_view.dart';
import '../../favorits/views/favorits_view.dart';

class BottomController extends GetxController {
  //TODO: Implement TabsController

int selectedScreenIndex = 0;

 void screenChanger(int index) {
    selectedScreenIndex = index;
    screens[selectedScreenIndex];
    update();
  }
 final List<Widget> screens = [
    CategoryView(),
    FavoritsView(),
  ];


  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
