import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/tabs_and_drawer.dart/views/drawer_view.dart';

import '../controllers/filters_controller.dart';

class FiltersView extends GetView<FiltersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('FiltersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FiltersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
