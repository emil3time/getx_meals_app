import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';
import 'package:getx_meals_app/app/data/meals_data.dart';

import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';
import 'package:getx_meals_app/app/routes/app_pages.dart';

import '../../favorits/views/favorits_view.dart';
import '../../meals/controllers/meals_controller.dart';
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
  late final _globalControler = controller.globalControler;
  @override
  Widget build(BuildContext context) {
    var getArguments = Get.arguments as Meal;
    int index = 0;

    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_sharp),
        //   // onPressed: () => Get.off(MealRecipesView()),
        // ),
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
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      getArguments.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Positioned(
                  //     top: 15,
                  //     left: 320,
                  //     child: FloatingActionButton(
                  //       // heroTag: 'btn1',
                  //       backgroundColor: Colors.purple,
                  //       onPressed: () {
                  //         controller.deleteSortedListItem(getArguments.id);
                  //         Get.back();
                  //       },
                  //       child: Icon(Icons.delete),
                  //     )),
                  Positioned(
                    top: 230,
                    left: 320,
                    child: FloatingActionButton(
                      // heroTag: 'btn2',
                      backgroundColor: Colors.purple,
                      onPressed: () {
                        Get.offAndToNamed(Routes.TABS);

                         _globalControler.addToFavorites(getArguments.id);
                        getArguments.toggleFavorite(getArguments);
                        index = mealsData.indexWhere(
                            (element) => element.id == getArguments.id);

                        mealsData[index].toggleFavorite(getArguments);
                        print(mealsData[index].isFavorite);
                      },
                      child: mealsData[index].isFavorite
                          ? Icon(
                              Icons.star_border,
                              size: 50,
                            )
                          : Icon(
                              Icons.radar,
                              size: 50,
                            ),
                    ),
                  ),
                ],
              ),
              buildListTitle(context, 'Ingridients'),
              buildListContainer(
                ListView.builder(
                    itemCount: getArguments.ingredients.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            getArguments.ingredients[index],
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
                    itemCount: getArguments.steps.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              getArguments.steps[index],
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
