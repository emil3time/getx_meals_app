import 'package:get/get.dart';

import '../../../controllers/global_controller.dart';
import '../../meals/views/meal_model.dart';
import '../../../data/meals_data.dart';

class FavoritsController extends GetxController {
  //TODO: Implement FavoritsController

  var globalControler = Get.find<GlobalController>();

  late Map<String, dynamic> _boxFavorite =
      globalControler.box.read('favoriteList');

  List<Meal?> get favoritesList {
    var tmpList = mealsData.where((e) {
      return _boxFavorite.containsValue(e.id.toString());
    }).toList();
    update();
    return tmpList;
  }

  

  /*  RxList<Meal> favoriteList = <Meal>[].obs;
  void addToFavorites(String id) {
    mealsData.map((element) {
      if (element.id == id) {
        return favoriteList.add(element);
      }

      writeFavoriteList(favoriteList);
    }).toList();
  }

  void writeFavoriteList(RxList<Meal> favoriteList) {
    globalControler.box.write('favoriteList', favoriteList);
  } */

  final count = 0.obs;
  @override
  void onInit() {
    /* print('box init: ${globalControler.box.read("favoritesList")}'); */
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
