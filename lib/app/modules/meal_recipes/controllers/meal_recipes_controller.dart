import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';

import '../../../controllers/global_controller.dart';

class MealRecipesController extends GetxController {
  //TODO: Implement MealRecipesController
  var globalControler = Get.find<GlobalController>();
  /* var favorite = false.obs;
  _ubdateFavorites(Meal meal) {
    meal.toggleFavorite();
    favorite.value = meal.isFavorite;
  } */

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
