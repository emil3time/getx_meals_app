import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/tabs_and_drawer.dart/views/drawer_view.dart';

import '../controllers/tabs_controller.dart';

class BottomTabsView extends GetView<BottomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Meals'),
        ),
        body:
            Obx(() => controller.screens[controller.selectedScreenIndex.value]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            onTap: controller.screenChanger,
            currentIndex: controller.selectedScreenIndex.value,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: 'category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star_border_outlined), label: 'favorites'),
            ],
          ),
        ));
  }
}
