import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/category/views/category_model.dart';
import 'package:getx_meals_app/app/modules/meals/views/meals_tile.dart';
import '../../category/./views/category_data.dart';
import '../controllers/meals_controller.dart';
import 'meals_model.dart';

class MealsView extends GetView<MealsController> {
  @override
  Widget build(BuildContext context) {
    var getArguments = Get.arguments as Map<String, Object>;
    late String id = Get.arguments['id'];
    final sortedList =
        mealsData.where((e) => e.categories.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(getArguments['title'] as String),
        centerTitle: true,
      ),
      body: Container(
          height: double.infinity,
          child: ListView.builder(
            itemCount: sortedList.length,
            itemBuilder: (context, index) {
              return MealsTile(meal: sortedList[index ]) ;

              // if (mealsData[index].categories.contains(id)) {
              //   return MealsTile(meal: mealsData[index]);
              // }
              // return Container();
            },
          )),
    );
  }
}
