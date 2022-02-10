import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';
import 'package:getx_meals_app/app/modules/meals/controllers/meals_controller.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';

import '../../../routes/app_pages.dart';
import '../../meals/views/meal_tile.dart';
import '../controllers/favorits_controller.dart';

class FavoritsView extends GetView<FavoritsController> {
  Widget build(BuildContext context) {
    var globalControler = Get.find<GlobalController>();
    var controller = Get.put(FavoritsController());
    List<Meal?> fav = controller.favoritesList;
    /* List<Meal> fav1 = globalControler.favoriteList; */

    return Scaffold(
      body: InkWell(
        onTap: () {
          /* Get.toNamed(Routes.MEAL_RECIPES, arguments: sortedMeal  ); */
        },
        child: Scaffold(
          body: Container(
            height: double.infinity,
            child: ListView.builder(
              itemCount: fav.length,
              itemBuilder: (context, index) {
                /* print(fav); */
                return MealTile(sortedMeal:  fav[index]!);
              },
            ),
          ),
        ),
      ),
    );
  }
}
