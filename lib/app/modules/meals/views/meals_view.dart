import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/meals_controller.dart';

class MealsView extends GetView<MealsController> {
  final getArguments = Get.arguments as Map<String,String>;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getArguments['title']as String),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MealsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
