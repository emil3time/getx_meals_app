import 'package:get/get.dart';
import 'package:getx_meals_app/app/controllers/file_controller.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GlobalController(), permanent: true);
    Get.put(FileController(), permanent: true);
  }
}
