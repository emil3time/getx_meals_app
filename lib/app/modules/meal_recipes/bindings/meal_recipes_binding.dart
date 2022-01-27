import 'package:get/get.dart';

import '../controllers/meal_recipes_controller.dart';

class MealRecipesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealRecipesController>(
      () => MealRecipesController(),
    );
  }
}
