import 'package:get/get.dart';

class FiltersController extends GetxController {
  RxBool gluten = false.obs;
  RxBool lactose = false.obs;
  RxBool vegetarian = false.obs;
  RxBool vegan = false.obs;



  Map<String, bool> filters() {
    return {
      'isGlutenFree': gluten.value,
      'isLactoseFree': lactose.value,
      'isVegetarian': vegetarian.value,
      'isVegan': vegan.value,
    };
  }

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
