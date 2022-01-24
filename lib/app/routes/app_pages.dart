import 'package:get/get.dart';

import 'package:getx_meals_app/app/modules/home/bindings/category_binding.dart';
import 'package:getx_meals_app/app/modules/home/views/category_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => CategoryList(),
      binding: CategoryBinding(),
    ),
  ];
}
