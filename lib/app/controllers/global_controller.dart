import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';

import '../data/meals_data.dart';
import '../modules/meals/views/meal_model.dart';

class GlobalController extends GetxController {
  RxString userId = 'DDFFEFEFE'.obs;
  final box = GetStorage();
  /* var globalControler = Get.find<GlobalController>(); */
  Map<String, dynamic> idFinder = {};
  RxList<Meal> favoriteList = <Meal>[].obs;

  void addToFavorites(String id) {
    if (idFinder.containsValue(id)) {
      _deleteFavoriteItem(id);
    } else {
      idFinder.addAll({id: id});

      mealsData.forEach((element) {
        if (element.id == id) {
          favoriteList.add(element);
        }
      });

      _writeFavoriteList();
    }

    /* print('all meals$mealsData'); */
  }

/*   late var zmienna = addToFavorites('id'); */

  void _writeFavoriteList() {
    box.write('favoriteList', idFinder);
    /*  print('box write favorite: ${box.read('favoriteList')}'); */
  }

  void _deleteFavoriteItem(String id) {
    Map<String, dynamic> tmpbox = box.read('favoriteList');
    if (tmpbox.containsValue(id)) {
      tmpbox.remove(id);
    }
    box.write('favoriteList', tmpbox);
    update();
  }

  Map<String, dynamic> readFavoriteList() {
    return box.read('favoriteList');
  }

  @override
  void onInit() {
    idFinder = readFavoriteList();
    super.onInit();
  }
}
