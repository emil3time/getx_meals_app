import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/category/bindings/category_binding.dart';
import 'package:getx_meals_app/app/modules/category/views/category_view.dart';


import 'package:getx_meals_app/app/modules/meals/bindings/meals_binding.dart';
import 'package:getx_meals_app/app/modules/meals/views/meals_view.dart';

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
      page: () => MealsView(),
      binding: MealsBinding(),
    ),
  ];
}
