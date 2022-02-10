import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/category/views/category_model.dart';
import 'package:getx_meals_app/app/modules/filters/controllers/filters_controller.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_tile.dart';
import '../../../data/meals_data.dart';
import '../controllers/meals_controller.dart';
import 'meal_model.dart';

class MealView extends GetView<MealsController> {
  @override
  Widget build(BuildContext context) {

    late String title = Get.arguments['title'];
    late String id = Get.arguments['id'];
    controller.sortingList(id);
    controller.filtering();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
            itemCount: controller.sortedList.length,
            itemBuilder: (context, index) {
              return MealTile(sortedMeal: controller.sortedList[index]);
            },
          ),
      ),
    );
  }
}
