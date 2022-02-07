import 'package:get/get.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';

class FiltersController extends GetxController {
  RxBool gluten = false.obs;
  RxBool lactose = false.obs;
  RxBool vegetarian = false.obs;
  RxBool vegan = false.obs;

  /*  Map<String, bool> filters() {
    return {
      'isGlutenFree': gluten.value,
      'isLactoseFree': lactose.value,
      'isVegetarian': vegetarian.value,
      'isVegan': vegan.value,
    };
  } */

  void initializeFilters() {
    gluten.value = Get.find<GlobalController>().box.read('gluten') ?? false;
    lactose.value = Get.find<GlobalController>().box.read('lactose') ?? false;
    vegetarian.value =
        Get.find<GlobalController>().box.read('vegetarian') ?? false;
    vegan.value = Get.find<GlobalController>().box.read('vegan') ?? false;
  }

  void updateFilters(String filterName, bool value) {
    Get.find<GlobalController>().box.write(filterName, value);
  }

  @override
  void onInit() {
    initializeFilters();
    super.onInit();
  }
}
