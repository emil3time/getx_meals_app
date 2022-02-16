import 'package:get/get.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

class Meal extends GetxController {
  var globCont = Get.find<GlobalController>();
  final String id;
  final int duration;
  final String imageUrl;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  RxBool isFavorite = false.obs;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Affordability affordability;
  final Complexity complexity;

  void toggleFavorite() {
    /* isFavorite = !isFavorite; */
    isFavorite.value = !isFavorite.value;
    // saveIsFavorite();

    print('model meals :${isFavorite.value}');
  }

  // saveIsFavorite() {
  //   globCont.box.write('isFavorite', isFavorite.value);
  // }

  // readIsFavorite() {
  //   globCont.box.read('isFavorite');
  //   update();
  // }

  Meal(
      {required this.affordability,
      required this.categories,
      required this.complexity,
      required this.id,
      required this.imageUrl,
      required this.ingredients,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.steps,
      required this.title,
      required this.duration});
}
