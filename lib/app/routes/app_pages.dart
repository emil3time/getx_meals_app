import 'package:get/get.dart';

import 'package:getx_meals_app/app/modules/category/bindings/category_binding.dart';
import 'package:getx_meals_app/app/modules/category/views/category_view.dart';
import 'package:getx_meals_app/app/modules/favorits/bindings/favorits_binding.dart';
import 'package:getx_meals_app/app/modules/favorits/views/favorits_view.dart';
import 'package:getx_meals_app/app/modules/meal_recipes/bindings/meal_recipes_binding.dart';
import 'package:getx_meals_app/app/modules/meal_recipes/views/meal_recipes_view.dart';
import 'package:getx_meals_app/app/modules/meals/bindings/meals_binding.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_view.dart';
import 'package:getx_meals_app/app/modules/tabs/bindings/tabs_binding.dart';
import 'package:getx_meals_app/app/modules/tabs/views/tabs_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CATEGORY;

  static final routes = [
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.MEALS,
      page: () => MealView(),
      binding: MealsBinding(),
    ),
    GetPage(
      name: _Paths.MEAL_RECIPES,
      page: () => MealRecipesView(),
      binding: MealRecipesBinding(),
    ),
    GetPage(
      name: _Paths.TABS,
      page: () => TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITS,
      page: () => FavoritsView(),
      binding: FavoritsBinding(),
    ),
  ];
}
