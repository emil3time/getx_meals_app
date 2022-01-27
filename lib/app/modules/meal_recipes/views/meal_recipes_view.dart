import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';

import '../controllers/meal_recipes_controller.dart';

class MealRecipesView extends GetView<MealRecipesController> {
  @override
  Widget build(BuildContext context) {
    var getArguments = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getArguments.title,

        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(getArguments.imageUrl,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingridients',style:  Theme.of(context).textTheme.subtitle1,),
          )
        ],
      ),
    );
  }
}
