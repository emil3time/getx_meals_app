import 'package:get/get.dart';

import 'package:getx_meals_app/app/modules/category/bindings/category_binding.dart';
import 'package:getx_meals_app/app/modules/category/views/category_view.dart';
import 'package:getx_meals_app/app/modules/favorits/bindings/favorits_binding.dart';
import 'package:getx_meals_app/app/modules/favorits/views/favorits_view.dart';
import 'package:getx_meals_app/app/modules/filters/bindings/filters_binding.dart';
import 'package:getx_meals_app/app/modules/filters/views/filters_view.dart';
import 'package:getx_meals_app/app/modules/meal_recipes/bindings/meal_recipes_binding.dart';
import 'package:getx_meals_app/app/modules/meal_recipes/views/meal_recipes_view.dart';
import 'package:getx_meals_app/app/modules/meals/bindings/meals_binding.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_view.dart';

import '../modules/tabs_and_drawer.dart/bindings/tabs_binding.dart';
import '../modules/tabs_and_drawer.dart/views/bottom_bar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TABS;

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
      page: () => BottomTabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITS,
      page: () => FavoritsView(),
      binding: FavoritsBinding(),
    ),
    GetPage(
      name: _Paths.FILTERS,
      page: () => FiltersView(),
      binding: FiltersBinding(),
    ),
  ];
}
