import 'package:get/get.dart';

import '../controllers/favorits_controller.dart';

class FavoritsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritsController>(
      () => FavoritsController(),
    );
  }
}
