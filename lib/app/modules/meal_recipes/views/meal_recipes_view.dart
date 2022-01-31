import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';

import '../controllers/meal_recipes_controller.dart';

Widget buildListTitle(context, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
    ),
  );
}

Widget buildListContainer(Widget widget) {
  return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 200,
      child: widget);
}

class MealRecipesView extends GetView<MealRecipesController> {
  @override
  Widget build(BuildContext context) {
    var getArguments = Get.arguments as Meal;
    final List<String> ingredients = Get.arguments.ingredients as List<String>;
    final List<String> steps = Get.arguments.steps as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          getArguments.title,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  getArguments.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildListTitle(context, 'Ingridients'),
              buildListContainer(
                ListView.builder(
                    itemCount: ingredients.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ingredients[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ArchitectsDaughter',
                              fontSize: 23,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              buildListTitle(context, 'Steps'),
              buildListContainer(
                ListView.builder(
                    itemCount: steps.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              steps[index],
                              style:
                                  TextStyle(fontFamily: 'ArchitectsDaughter'),
                            ),
                            leading: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              child: Text('#${index + 1}'),
                            ),
                          ),
                          Divider(),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
