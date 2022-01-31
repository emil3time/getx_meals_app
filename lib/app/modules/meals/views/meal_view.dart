import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/category/views/category_model.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_tile.dart';
import '../../../data/meals_data.dart';
import '../controllers/meals_controller.dart';
import 'meal_model.dart';

class MealView extends GetView<MealsController> {
  @override
  Widget build(BuildContext context) {
    var getArguments = Get.arguments ;
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
              return MealTile(meal: sortedList[index]) ;

              // if (mealsData[index].categories.contains(id)) {
              //   return MealsTile(meal: mealsData[index]);
              // }
              // return Container();
            },
          )),
    );
  }
}
