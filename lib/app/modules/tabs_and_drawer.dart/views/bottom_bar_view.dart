import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/filters/views/filters_view.dart';
import 'package:getx_meals_app/app/modules/tabs_and_drawer.dart/views/drawer_view.dart';

import '../controllers/tabs_controller.dart';

class BottomTabsView extends GetView<BottomController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomController>(builder: (controller) {
      return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Meals'),
        ),
        body: controller.screens[controller.selectedScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          onTap: controller.screenChanger,
          currentIndex: controller.selectedScreenIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: 'category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border_outlined), label: 'favorites'),
          ],
        ),
      );
    });
  }
}
