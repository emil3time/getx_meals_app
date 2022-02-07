import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/meals/views/meal_model.dart';

import '../../../data/meals_data.dart';
import '../../filters/controllers/filters_controller.dart';

class MealsController extends GetxController {
  RxList<Meal> sortedList = <Meal>[].obs;

  void sortingList(String id) {
    sortedList.value =
        mealsData.where((e) => e.categories.contains(id)).toList();
    
  }

  var filtersControler = Get.put(FiltersController());
  late Map<String, bool> filters = filtersControler.filters();

  void filtering() {
    if (filters['isGlutenFree'] ?? false) {
      isGlutenFree();
    }
    if (filters['isVegan'] ?? false) {
      isVegan();
    }
    if (filters['isVegetarian'] ?? false) {
      isVegetarian();
    }
    if (filters['isLactoseFree'] ?? false) {
      isLactoseFree();
    }
  }

  void isGlutenFree() {
    sortedList.removeWhere((element) => element.isGlutenFree == true);
  }

  void isVegan() {
    sortedList.removeWhere((element) => element.isVegan == true);
  }

  void isVegetarian() {
    sortedList.removeWhere((element) => element.isVegetarian == true);
  }

  void isLactoseFree() {
    sortedList.removeWhere((element) => element.isLactoseFree == true);
  }

  void deleteSortedListItem(String id) {
    sortedList.removeWhere((element) => element.id == id);
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
